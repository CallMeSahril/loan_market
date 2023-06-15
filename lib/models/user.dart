class User {
  String? nama;
  String? jenisKelamin;
  String? karyawan;
  String? email;
  String? handpone;

  User({
    required this.nama,
    required this.jenisKelamin,
    required this.email,
    required this.handpone,
    required this.karyawan,
  });
}

List<User> dataUser = [
  User(
      nama: "Dea Ananda",
      jenisKelamin: "Perempuan",
      email: "dea.ananda@gmail.com",
      handpone: "62812823772828",
      karyawan: "Karyawan | -"),
  User(
      nama: "Van Tomiko Can",
      jenisKelamin: "Perempuan",
      email: "soundgeekid@gmail.com",
      handpone: "6281282366176",
      karyawan: "Karyawan | -"),
  User(
      nama: "Fajar",
      jenisKelamin: "Laki - Laki",
      email: "Yohannes.siregar@raywhite.co.id",
      handpone: "62812823772828",
      karyawan: "Karyawan | -"),
  User(
      nama: "Fajar",
      jenisKelamin: "Laki - laki",
      email: "-",
      handpone: "-",
      karyawan: "Karyawan | -"),
  User(
      nama: "Kevin",
      jenisKelamin: "Laki - laki",
      email: "kevin123@gmail.com",
      handpone: "62081284849",
      karyawan: "Karyawan | -"),
];
