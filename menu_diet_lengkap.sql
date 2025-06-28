CREATE DATABASE IF NOT EXISTS diet;
USE diet;

DROP TABLE IF EXISTS menu;

CREATE TABLE menu (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nama_menu VARCHAR(100),
  bahan TEXT,
  cara_masak TEXT,
  kalori INT,
  gambar VARCHAR(255)
);

INSERT INTO menu (nama_menu, bahan, cara_masak, kalori, gambar) VALUES
('Salad Buah Yogurt', 'apel, pisang, melon, anggur, yoghurt, madu', 'Campurkan buah, tuang yoghurt dan madu, aduk rata dan sajikan dingin.', 250, 'salad.jpg'),
('Ayam Bakar Rendah Lemak', 'dada ayam, kecap, minyak zaitun, bawang putih, merica, jeruk nipis, garam', 'Lumuri ayam dengan bumbu, diamkan 30 menit, lalu panggang.', 180, 'ayam_bakar.jpg'),
('Oatmeal Pisang Madu', 'oatmeal, susu rendah lemak, pisang, madu, kayu manis', 'Rebus oatmeal dengan susu, sajikan dengan pisang dan madu.', 300, 'oatmeal.jpg'),
('Smoothie Berry Yogurt', 'stroberi, blueberry, yoghurt, madu, es batu', 'Blender semua bahan, sajikan segera.', 200, 'smoothie.jpg'),
('Sup Sayur Bening', 'wortel, kentang, buncis, bawang putih, air, garam, merica', 'Rebus semua bahan hingga matang dan berbumbu.', 90, 'sup_sayur.jpg'),
('Nasi Merah Tempe', 'nasi merah, tempe, kangkung', 'Goreng tempe, rebus bayam, sajikan dengan nasi merah.', 350, 'nasi_tempe.jpg'),
('Ikan Kukus Lemon', 'ikan fillet, lemon, bawang putih, seledri', 'Lumuri ikan dengan bumbu, kukus selama 20 menit.', 280, 'ikan_kukus.jpg'),
('Roti Gandum Alpukat', 'roti gandum, alpukat, telur rebus', 'Panggang roti, oles alpukat, tambah telur iris.', 320, 'roti_alpukat.jpg'),
('Kentang Rebus Salad', 'kentang, tomat, selada, telur rebus', 'Rebus kentang dan telur, campur semua bahan jadi salad.', 270, 'kentang_salad.jpg'),
('Nasi Shirataki Ayam', 'nasi shirataki, dada ayam, brokoli', 'Rebus shirataki, tumis ayam dan brokoli.', 210, 'shirataki_ayam.jpg'),
('Tumis Tahu Toge', 'tahu, toge, bawang merah, bawang putih', 'Tumis semua bahan hingga matang dan bumbunya meresap.', 160, 'tumis_tahu.jpg'),
('Telur Rebus Brokoli', 'telur, brokoli, lada, garam', 'Rebus telur dan brokoli, sajikan dengan sedikit garam.', 140, 'telur_brokoli.jpg'),
('Sup Jagung Ayam', 'dada ayam, jagung manis, daun bawang, air, garam', 'Rebus ayam dan jagung, tambahkan daun bawang.', 220, 'sup_jagung.jpg'),
('Wrap Sayur Telur', 'tortilla, telur, wortel, timun, mayones', 'Gulung bahan dengan tortilla, potong dan sajikan.', 260, 'wrap_sayur.jpg'),
('Tumis Brokoli Tahu', 'brokoli, tahu, bawang putih, minyak wijen', 'Tumis semua bahan sampai matang.', 200, 'tumis_brokoli.jpg'),
('Pisang Panggang Cokelat', 'pisang, cokelat hitam, kayu manis', 'Panggang pisang dengan taburan cokelat dan kayu manis.', 180, 'pisang_panggang.jpg'),
('Sup Tomat Telur', 'tomat, telur, bawang putih, daun bawang', 'Rebus tomat dan masukkan telur kocok sambil diaduk.', 150, 'sup_tomat.jpg'),
('Omelet Sayur', 'telur, wortel, kol, daun bawang', 'Kocok telur dengan sayur, goreng seperti dadar.', 190, 'omelet.jpg'),
('Puding Chia Strawberry', 'chia seed, susu almond, strawberry, madu', 'Campur bahan dan diamkan semalaman di kulkas.', 170, 'chia_puding.jpg'),
('Tahu Kukus Sayur', 'tahu, wortel, brokoli, telur, garam', 'Campur bahan, kukus selama 20 menit.', 210, 'tahu_kukus.jpg');