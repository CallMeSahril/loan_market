import 'package:flutter/material.dart';
import 'package:loan_market/page/widget/appbarcostoum.dart';
import 'package:loan_market/page/widget/twobuttonwidget.dart';
import 'package:loan_market/services/font.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ConstrainedBox(
        constraints:
            BoxConstraints(minHeight: MediaQuery.of(context).size.height),
        child: Stack(
          children: [
            const AppBarCostoum(),
            TwoBottonWidget(
              topValue: 125,
              context: context,
              titleOne: "Bank",
              titleTwo: 'Develover',
            ),
            menuSearch(),
            bottonAddAndSort(),
            buttonViewAll(),
            listCardBank(context),
          ],
        ),
      ),
    );
  }

  Positioned listCardBank(BuildContext context) {
    return Positioned(
        top: 347,
        child: SizedBox(
          height: 323,
          width: MediaQuery.of(context).size.width,
          child: ListView.builder(
            itemCount: 10,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  height: 330,
                  width: 290,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          offset: const Offset(0, 4),
                          blurRadius: 4,
                        ),
                      ]),
                  child: cardBank());
            },
          ),
        ));
  }

  Positioned buttonViewAll() {
    return Positioned(
        top: 285,
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          height: 35,
          width: 350,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.white,
              border: Border.all(width: 1, color: const Color(0xffCCCCCC))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("ALL"),
              Transform.rotate(
                angle: 90 * 3.14 / 180,
                child: const Icon(
                  Icons.chevron_right,
                  color: Colors.blue,
                ),
              )
            ],
          ),
        ));
  }

  Positioned bottonAddAndSort() {
    return Positioned(
        top: 242,
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              height: 40,
              width: 350,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 35,
                    width: 130,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                            width: 1, color: const Color(0xffcccccc))),
                    child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                          Text(
                            "Tambah",
                            style: TextStyle(color: Colors.white),
                          )
                        ]),
                  ),
                  Container(
                    height: 35,
                    width: 130,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                            width: 1, color: const Color(0xffcccccc))),
                    child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(
                            Icons.sort,
                          ),
                          Text(
                            "Sort",
                          )
                        ]),
                  ),
                ],
              ),
            ),
          ],
        ));
  }

  Positioned menuSearch() {
    return Positioned(
      top: 199,
      child: Row(
        children: [
          Container(
            height: 35,
            width: 350,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(width: 1, color: Colors.black),
            ),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Cari nama bank",
                    style: contentNormalText.copyWith(
                        color: const Color(0xffBEC3D6)),
                  ),
                  const Icon(
                    Icons.search,
                    color: Color(0xffBEC3D6),
                  )
                ]),
          ),
        ],
      ),
    );
  }

  Container cardBank() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Container(
            height: 70,
            width: 120,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/image/mandiri.png"))),
          ),
          Row(
            children: [
              Container(
                padding: const EdgeInsets.only(right: 20),
                child: Column(
                  children: [
                    Text(
                      "Rating :",
                      style: contentBoldText.copyWith(
                          color: const Color(0xff707A83)),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    const Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.blue,
                        ),
                        Icon(Icons.star, color: Colors.blue),
                        Icon(Icons.star, color: Colors.blue),
                        Icon(
                          Icons.star,
                          color: Colors.grey,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    Text(
                      "14 Reviews",
                      style: contentBoldText,
                    ),
                  ],
                ),
              ),
              Container(
                height: 60,
                width: 1,
                color: Colors.black,
              ),
              Container(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  children: [
                    Text("User",
                        style: contentBoldText.copyWith(
                            color: const Color(0xff707A83))),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      "220",
                      style: contentBoldText,
                    ),
                    const SizedBox(
                      height: 9,
                    ),
                    Text(
                      "Users yearly",
                      style: contentBoldText.copyWith(fontSize: 10),
                    ),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: 18,
          ),
          Row(
            children: [
              Text(
                "Mandiri",
                style: subjudulBoldText.copyWith(fontSize: 12),
              ),
              Text(
                " Bunga Special Tengah Imlek 2023",
                style: subjudulBoldText.copyWith(
                    color: const Color(0xff1CABE6), fontSize: 12),
              )
            ],
          ),
          const SizedBox(height: 21),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  iconAndText(
                    icon: Icons.abc,
                    name: "fix Rate (Year): 3.88",
                  ),
                  const SizedBox(height: 16),
                  iconAndText(
                    icon: Icons.access_time_outlined,
                    name: "Max Tenor: 12",
                  ),
                  const SizedBox(height: 16),
                  iconAndText(
                    icon: Icons.vertical_split_outlined,
                    name: "Loan to Value: 1",
                  )
                ],
              ),
              const SizedBox(width: 5),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  iconAndText(
                    icon: Icons.abc,
                    name: "Jaminan: Ruko, Rukan, Rumah, Apartemen",
                  ),
                  const SizedBox(height: 16),
                  iconAndText(
                    icon: Icons.abc,
                    name: "Target: Karyawan, Pengusaha",
                  ),
                  const SizedBox(height: 16),
                  iconAndText(
                    icon: Icons.abc,
                    name: "Komisi: 1",
                  )
                ],
              ),
            ],
          ),
          const SizedBox(height: 17),
          ElevatedButton(
            onPressed: () {},
            style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.white),
            ),
            child: const Text(
              "Detail",
              style: TextStyle(color: Color(0xff37b5e7)),
            ),
          )
        ],
      ),
    );
  }

  Row iconAndText({required IconData icon, required String name}) {
    return Row(
      children: [
        Icon(
          icon,
          size: 13,
        ),
        const SizedBox(
          width: 5,
        ),
        SizedBox(
          height: 10,
          width: 98,
          child: Text(
            name,
            overflow: TextOverflow.visible,
            maxLines: null,
            style: contentNormalText.copyWith(fontSize: 8),
          ),
        )
      ],
    );
  }
}
