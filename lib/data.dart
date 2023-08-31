class Produk {
  final String name;
  final String price;
  final String quantity;
  final String image;
  final String description;

  Produk(
    this.name,
    this.price,
    this.quantity,
    this.image,
    this.description,
  );
}

final List<Produk> allData = [
  Produk('Bayam', '2.000', '1 ikat', 'assets/img1.png',
      'Secara Umum Sayuran dan buah-buahan merupakan sumber berbagai vitamin dan mineral yang sangat baik dan dibutuhkan bagi tubuh manusia'),
  Produk('Alpukat', '40.000', '1 Kg', 'assets/img2.png',
      'Secara Umum Sayuran dan buah-buahan merupakan sumber berbagai vitamin dan mineral yang sangat baik dan dibutuhkan bagi tubuh manusia'),
  Produk('Jagung', '19.500', '1 bungkus', 'assets/img3.png',
      'Secara Umum Sayuran dan buah-buahan merupakan sumber berbagai vitamin dan mineral yang sangat baik dan dibutuhkan bagi tubuh manusia'),
  Produk('Kiwi', '41.500', '1 ikat', 'assets/img4.png',
      'Secara Umum Sayuran dan buah-buahan merupakan sumber berbagai vitamin dan mineral yang sangat baik dan dibutuhkan bagi tubuh manusia'),
  Produk('Jeruk', '25.000', '1 kg', 'assets/img5.png',
      'Secara Umum Sayuran dan buah-buahan merupakan sumber berbagai vitamin dan mineral yang sangat baik dan dibutuhkan bagi tubuh manusia'),
  Produk('Apel', '40.500', '1 kg', 'assets/img6.png',
      'Secara Umum Sayuran dan buah-buahan merupakan sumber berbagai vitamin dan mineral yang sangat baik dan dibutuhkan bagi tubuh manusia'),
];
