import 'package:flutter/material.dart';
import 'package:loan_market/models/user.dart';
import 'package:loan_market/services/font.dart';

class DetailContact extends StatelessWidget {
  int index;
  final List<User> data = dataUser;
  DetailContact({required this.index, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF6F6F6),
      appBar: AppBar(
        backgroundColor: const Color(0xff37b5e7),
        title: Text(
          "Detail Contact",
          style: judulBoldText.copyWith(fontSize: 25),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 18,
            ),
            Text(
              data[index].nama!,
              style: judulBoldText.copyWith(fontSize: 20),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              "Date Created : December 21, 2022",
              style: subjudulNormalText,
            ),
            const SizedBox(
              height: 18,
            ),
            contactInfo(
                context: context,
                email: data[index].email!,
                phone: data[index].handpone!),
            const SizedBox(
              height: 20,
            ),
            Column(
              children: [
                personalInformation(context, data[index].jenisKelamin!),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                        onPressed: () {},
                        child: const Row(
                          children: [
                            Icon(Icons.share),
                            SizedBox(
                              width: 10,
                            ),
                            Text("Share Access")
                          ],
                        )),
                    ElevatedButton(
                        onPressed: () {},
                        style: const ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.red)),
                        child: const Row(
                          children: [
                            Icon(Icons.share),
                            SizedBox(
                              width: 10,
                            ),
                            Text("Share Access")
                          ],
                        ))
                  ],
                ),
                const SizedBox(height: 10),
                Container(
                  height: 35,
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                      color: const Color(0xff005274),
                      border:
                          Border.all(width: 1, color: const Color(0xffc1c1c1))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Application",
                        style: judulBoldText.copyWith(color: Colors.white),
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.add_circle,
                            color: Colors.white,
                          ),
                          const SizedBox(
                            width: 2,
                          ),
                          Text(
                            "Tambah",
                            style: judulBoldText.copyWith(color: Colors.white),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Container(
                  height: 85,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border:
                          Border.all(width: 1, color: const Color(0xffc1c1c1))),
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(5),
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            color: const Color(0xff005274),
                            borderRadius: BorderRadius.circular(8)),
                        child: Column(
                          children: [
                            const Icon(
                              Icons.copyright_outlined,
                              color: Colors.white,
                            ),
                            Text(
                              "Kredit Pemilikan rumah secondary (KPR)",
                              textAlign: TextAlign.center,
                              style: contentBoldText.copyWith(
                                  fontSize: 6, color: Colors.white),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 11, vertical: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Nasabah",
                              style: subjudulBoldText,
                            ),
                            Text("Loan Amount", style: subjudulBoldText),
                            Text("Loan Step", style: subjudulBoldText),
                            Text("Tenor", style: subjudulBoldText),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 11, vertical: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(":", style: subjudulBoldText),
                            Text(":", style: subjudulBoldText),
                            Text(":", style: subjudulBoldText),
                            Text(":", style: subjudulBoldText),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 11, vertical: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Van Tomiko Can", style: subjudulNormalText),
                            Text("Rp 10.000.000.000",
                                style: subjudulNormalText),
                            Text("Akad Kredit", style: subjudulNormalText),
                            Text("10 Tahun", style: subjudulNormalText),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      height: 35,
                      decoration: BoxDecoration(
                          color: const Color(0xffEBEBEB),
                          border: Border.all(
                              width: 1, color: const Color(0xffc1c1c1))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Note",
                            style: subjudulBoldText,
                          ),
                          Row(
                            children: [
                              const Icon(Icons.add_circle),
                              Text("Tambah", style: subjudulBoldText)
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        height: 155,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: const Color(0xffc1c1c1), width: 1)),
                        child: Row(
                          children: [
                            Container(
                              height: 130,
                              width: 120,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              decoration: BoxDecoration(
                                  color: const Color(0xffEBEBEB),
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.25),
                                      offset: const Offset(0, 4),
                                      blurRadius: 4,
                                    ),
                                  ]),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Center(
                                    child: Text(
                                      "Note",
                                      style: subjudulBoldText.copyWith(
                                          color: const Color(0xff565d64)),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 9,
                                  ),
                                  Text("Febuary 9,2023",
                                      style: subjudulBoldText.copyWith(
                                          color: const Color(0xff565d64),
                                          fontSize: 8)),
                                  const SizedBox(
                                    height: 9,
                                  ),
                                  Text("Note",
                                      style: subjudulBoldText.copyWith(
                                          color: const Color(0xff565d64),
                                          fontSize: 8)),
                                ],
                              ),
                            )
                          ],
                        ))
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Column personalInformation(BuildContext context, String jenisKelamin) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          width: MediaQuery.of(context).size.width,
          height: 35,
          decoration: const BoxDecoration(
            color: Color(0xffEBEBEB),
            border: Border(
              top: BorderSide(width: 1, color: Color(0xffEBEBEB)),
              right: BorderSide(width: 1, color: Color(0xffEBEBEB)),
              left: BorderSide(width: 1, color: Color(0xffEBEBEB)),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Personal information",
                style: judulBoldText,
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          height: 125,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: const Color(0xffebebeb), width: 1)),
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.only(right: 20),
                decoration: const BoxDecoration(
                  border: Border(
                    right: BorderSide(width: 1, color: Color(0xffEBEBEB)),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Type Contact",
                      style: subjudulBoldText,
                    ),
                    Text(
                      "KTP",
                      style: subjudulBoldText,
                    ),
                    Text(
                      "Birthday",
                      style: subjudulBoldText,
                    ),
                    Text(
                      "Gender",
                      style: subjudulBoldText,
                    ),
                    Text(
                      "Adviser",
                      style: subjudulBoldText,
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Perorangan",
                      style: subjudulNormalText,
                    ),
                    Text(
                      "31756736378887",
                      style: subjudulNormalText,
                    ),
                    Text(
                      "07/12/2004",
                      style: subjudulNormalText,
                    ),
                    Text(
                      jenisKelamin,
                      style: subjudulNormalText,
                    ),
                    Text(
                      "Yohannes Affandy (Jojo)",
                      style: subjudulNormalText,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Column contactInfo(
      {required BuildContext context,
      required String phone,
      required String email}) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          padding: const EdgeInsets.only(
            left: 12,
            right: 9,
          ),
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            color: Color(0xffEBEBEB),
            border: Border(
              top: BorderSide(width: 1, color: Color(0xffEBEBEB)),
              right: BorderSide(width: 1, color: Color(0xffEBEBEB)),
              left: BorderSide(width: 1, color: Color(0xffEBEBEB)),
            ),
          ),
          height: 35,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Contact",
                style: subjudulBoldText.copyWith(fontSize: 14),
              ),
              const Row(
                children: [
                  Icon(Icons.edit_document),
                  SizedBox(
                    width: 7,
                  ),
                  Text("Edit")
                ],
              )
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          height: 58,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: const Color(0xffEBEBEB), width: 1)),
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.only(right: 50, left: 10),
                decoration: const BoxDecoration(
                    border: Border(
                  right: BorderSide(width: 1, color: Color(0xffC1C1C1)),
                )),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 9,
                    ),
                    Text(
                      "Phone",
                      style: subjudulBoldText,
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Text(
                      "Email",
                      style: subjudulBoldText,
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 9,
                  ),
                  Text(phone),
                  const SizedBox(
                    height: 6,
                  ),
                  Text(email),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
