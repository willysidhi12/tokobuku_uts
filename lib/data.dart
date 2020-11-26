class Book {
  String title,
      writer,
      price,
      image,
      description =
          'BUKU INI MEMILIKI NILAI PENGETTAHUAN YANG BAGUS UNTUK DI IMLEMENTASIKAN KEDALAM DUNIA NYATA, BELILAH SELAGU STOK TERSEDIA'
          'KAMI SIAP MENGANTARKAN BUKU INI KE ALAMAT YANG SUDAH TERTERA';
  int pages;
  double rating;

  Book(
      this.title, this.writer, this.price, this.image, this.rating, this.pages);
}

final List<Book> books = [
  Book('CorelDraw untuk Tingkat Pemula Sampai Mahir', 'Jubilee Enterprise',
      'Rp 50.000', 'assets/corel.jpg', 3.5, 123),
  Book('Buku Pintar Drafter Untuk Pemula Hingga Mahir', 'Widada', 'Rp 55.000',
      'assets/drafter.jpg', 4.5, 200),
  Book('Adobe InDesign: Seri Panduan Terlengkap', 'Jubilee Enterprise',
      'Rp 60.000', 'assets/indesign.jpg', 5.0, 324),
  Book('Pemodelan Objek Dengan 3Ds Max 2014', 'Wahana Komputer', 'Rp 58.000',
      'assets/max_3d.jpeg', 3.0, 200),
  Book('Penerapan Visualisasi 3D Dengan Autodesk Maya', 'Dhani Ariatmanto',
      'Rp 90.000', 'assets/maya.jpeg', 4.8, 234),
  Book('Teknik Lancar Menggunakan Adobe Photoshop', 'Jubilee Enterprise',
      'Rp 57.000', 'assets/photoshop.jpg', 4.5, 240),
  Book('Adobe Premiere Terlengkap dan Termudah', 'Jubilee Enterprise',
      'Rp 56.000', 'assets/premier.jpg', 4.8, 432),
  Book('Cad Series : Google Sketchup Untuk Desain 3D', 'Wahana Komputer',
      'Rp 55.000', 'assets/sketchup.jpeg', 4.5, 321),
  Book('Webmaster Series : Trik Cepat Menguasai CSS', 'Wahana Komputer',
      'Rp 54.000', 'assets/webmaster.jpeg', 3.5, 431),
];