from flask import Flask, render_template, request
from db_config import get_connection  # pastikan file db_config.py sudah benar

app = Flask(__name__)

# Halaman utama (beranda)
@app.route('/')
def home():
    return render_template('home.html')

# Halaman pencarian menu
@app.route('/cari', methods=['GET', 'POST'])
def index():
    if request.method == 'POST':
        # Ambil input bahan dari form
        bahan_input = request.form['bahan']
        bahan_user = set(map(str.strip, bahan_input.lower().split(',')))

        # Ambil semua data menu dari database
        conn = get_connection()
        cursor = conn.cursor(dictionary=True)
        cursor.execute("SELECT * FROM menu")
        semua_menu = cursor.fetchall()
        cursor.close()
        conn.close()

        hasil = []
        for menu in semua_menu:
            menu_bahan = menu['bahan'].lower()
            nama_menu = menu['nama_menu'].lower()
            cocok = 0

            for b in bahan_user:
                if b in menu_bahan:
                    cocok += 1
                    # Prioritaskan menu dengan "telur" di awal atau di nama
                    if b == 'telur':
                        if menu_bahan.startswith('telur') or 'telur' in nama_menu:
                            cocok += 2  # bobot ekstra

            if cocok > 0:
                hasil.append((menu, cocok))

        # Urutkan berdasarkan kecocokan terbanyak
        hasil.sort(key=lambda x: -x[1])
        rekomendasi = [item[0] for item in hasil]
        total_kalori = sum(item['kalori'] for item in rekomendasi)

        return render_template('result.html', rekomendasi=rekomendasi, total=total_kalori)

    return render_template('index.html')

if __name__ == '__main__':
    app.run(debug=True)

