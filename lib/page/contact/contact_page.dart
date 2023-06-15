import 'package:flutter/material.dart';
import 'package:loan_market/models/user.dart';
import 'package:loan_market/page/contact/detailcontact/detailcontact_page.dart';
import 'package:loan_market/page/widget/appbarcostoum.dart';
import 'package:loan_market/page/widget/twobuttonwidget.dart';
import 'package:loan_market/services/font.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<User> data = dataUser;
    double screenHeight = MediaQuery.of(context).size.height;
    double topValue = screenHeight * (125 / screenHeight);
    double mediumValue = screenHeight * (199 / screenHeight);

    return SingleChildScrollView(
      child: ConstrainedBox(
        constraints: BoxConstraints(minHeight: screenHeight + 200),
        child: Stack(
          children: [
            const AppBarCostoum(),
            TwoBottonWidget(
              topValue: topValue,
              context: context,
              titleOne: "My Contact",
              titleTwo: 'Other Contact',
            ),
            searchAndBotton(mediumValue),
            listUser(context, data)
          ],
        ),
      ),
    );
  }

  Positioned listUser(BuildContext context, List<User> data) {
    return Positioned(
        top: 253,
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 5,
            itemBuilder: (context, index) {
              var userData = data[index];
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetailContact(
                                index: index,
                              )));
                },
                child: Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
                  padding: const EdgeInsets.only(
                      bottom: 8, top: 8, right: 20, left: 20),
                  height: 80,
                  width: 370,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      border:
                          Border.all(color: const Color(0xffc1c1c1), width: 1)),
                  child: Row(
                    children: [
                      const CircleAvatar(),
                      const SizedBox(
                        width: 19,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            userData.nama!,
                            style: const TextStyle(
                                fontSize: 12, fontWeight: FontWeight.bold),
                          ),
                          Text(userData.jenisKelamin!,
                              style: const TextStyle(
                                fontSize: 10,
                              )),
                          Text(userData.karyawan!,
                              style: const TextStyle(
                                fontSize: 10,
                              )),
                          Text(userData.email!,
                              style: const TextStyle(
                                fontSize: 10,
                              )),
                          Text(userData.handpone!,
                              style: const TextStyle(
                                fontSize: 10,
                              )),
                        ],
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        ));
  }

  Positioned searchAndBotton(double mediumValue) {
    return Positioned(
      top: mediumValue,
      child: Column(
        children: [
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 20),
                height: 35,
                width: 250,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(width: 1, color: Colors.black),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Cari Berdasarkan Nama",
                      style: TextStyle(fontSize: 12),
                    ),
                    Icon(
                      Icons.search,
                      size: 20,
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 20),
              Container(
                height: 35,
                width: 80,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  border: Border.all(color: Colors.black, width: 1),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(
                  child: Text(
                    "Tambah",
                    style: subjudulBoldText.copyWith(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
