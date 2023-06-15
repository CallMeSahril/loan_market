import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loan_market/page/widget/appbarcostoum.dart';
import 'package:loan_market/services/font.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ConstrainedBox(
        constraints:
            BoxConstraints(minHeight: MediaQuery.of(context).size.height),
        child: Stack(
          children: [
            const AppBarCostoum(),
            const CardProfile(),
            Positioned(
              right: 0,
              left: 0,
              top: 285,
              child: cardObject(),
            ),
            const CreditWidget(),
            const Profile(),
          ],
        ),
      ),
    );
  }

  Container cardObject() {
    return Container(
        width: 320,
        height: 161,
        margin: const EdgeInsets.symmetric(horizontal: 16),
        padding: const EdgeInsets.only(right: 21, bottom: 2, left: 21),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(width: 1, color: const Color(0xffC1C1C1))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                cardApp(
                    boxDecoration: const BoxDecoration(
                      border: Border(
                          right: BorderSide(width: 1),
                          bottom: BorderSide(width: 1)),
                    ),
                    edgeInsetsGeometry: const EdgeInsets.only(top: 5),
                    icon: Icons.layers,
                    isi: "41",
                    judul: "Contact"),
                cardApp(
                    boxDecoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(width: 1),
                      ),
                    ),
                    edgeInsetsGeometry: const EdgeInsets.only(top: 5),
                    icon: Icons.file_copy_outlined,
                    isi: "50",
                    judul: "Loan"),
              ],
            ),
            Row(
              children: [
                cardApp(
                    boxDecoration: const BoxDecoration(
                        border: Border(right: BorderSide(width: 1))),
                    edgeInsetsGeometry: const EdgeInsets.only(bottom: 5),
                    icon: Icons.shopping_bag_outlined,
                    isi: "73",
                    judul: "Product"),
                cardApp(
                    boxDecoration: const BoxDecoration(border: Border()),
                    edgeInsetsGeometry: const EdgeInsets.only(bottom: 5),
                    icon: Icons.bakery_dining_outlined,
                    isi: "28",
                    judul: "Bank"),
              ],
            ),
          ],
        ));
  }

  Container cardApp(
      {required BoxDecoration boxDecoration,
      required EdgeInsetsGeometry edgeInsetsGeometry,
      required IconData icon,
      required String judul,
      required String isi}) {
    return Container(
      margin: edgeInsetsGeometry,
      padding: const EdgeInsets.only(top: 18, left: 19, bottom: 18, right: 30),
      height: (150 / 2) - 2,
      width: (320 / 2) - 2,
      decoration: boxDecoration,
      child: Row(
        children: [
          Icon(
            icon,
            size: 30,
          ),
          const SizedBox(
            width: 30,
          ),
          Column(
            children: [
              Text(judul, style: contentBoldText),
              Text(
                isi,
                style: contentBoldText,
              ),
            ],
          )
        ],
      ),
    );
  }
}

class CreditWidget extends StatelessWidget {
  const CreditWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 0,
      left: 0,
      top: 460,
      child: Container(
        width: 320,
        height: 150,
        padding: const EdgeInsets.symmetric(vertical: 5),
        margin: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(width: 1, color: const Color(0xffC1C1C1))),
        child: Column(
          children: [
            Text('Pinjaman Disetujui', style: subjudulBoldText),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('2', style: extraBoldText),
                Text(
                  '/ 5 Pinjaman',
                  style: subjudulNormalText,
                )
              ],
            ),
            const SizedBox(
              height: 18,
            ),
            Container(
              width: 284,
              height: 1,
              color: Colors.black,
            ),
            const SizedBox(
              height: 9,
            ),
            Text('Target', style: subjudulBoldText),
            const SizedBox(
              height: 2,
            ),
            Text('280%', style: extraBoldText),
            const SizedBox(
              height: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Rp14.000.000.000 / 5.000.000.0000',
                    style: contentNormalText),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CardProfile extends StatelessWidget {
  const CardProfile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 0,
      left: 0,
      top: 125,
      child: Container(
        width: 320,
        height: 140,
        margin: const EdgeInsets.symmetric(horizontal: 16),
        padding: const EdgeInsets.only(bottom: 6, top: 36, right: 16, left: 10),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(width: 1, color: const Color(0xffC1C1C1))),
        child: Column(
          children: [
            Text('Welcome Back,', style: judulBoldText),
            Text('Yohannes Affandy (Jojo)', style: subjudulBoldText),
            const SizedBox(height: 13),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.work_outline,
                          size: 15,
                        ),
                        const SizedBox(width: 11),
                        Text('Loan Market Office Dev',
                            style: contentNormalText),
                      ],
                    ),
                    const SizedBox(height: 14),
                    Row(
                      children: [
                        Text(
                          "ID:",
                          style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.bold, fontSize: 12),
                        ),
                        const SizedBox(width: 11),
                        Text(
                          'LM9990001',
                          style: contentNormalText,
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(width: 5),
                Container(
                  height: 49,
                  width: 1,
                  color: Colors.black,
                ),
                const SizedBox(width: 15),
                const Divider(
                  color: Colors.black,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.email_outlined, size: 15),
                        const SizedBox(width: 11),
                        Text('it@loanmarket.co.id', style: contentNormalText),
                      ],
                    ),
                    const SizedBox(height: 14),
                    Row(
                      children: [
                        const Icon(Icons.phone_outlined, size: 15),
                        const SizedBox(width: 11),
                        Text(
                          '6281234567890',
                          style: contentNormalText,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Profile extends StatelessWidget {
  const Profile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 90,
      left: (MediaQuery.of(context).size.width - 90) / 2,
      child: CircleAvatar(
        radius: 35,
        child: Image.asset(
          'assets/image/profile.png',
        ),
      ),
    );
  }
}
