import 'package:flutter/material.dart';
import 'package:loan_market/services/font.dart';

class TwoBottonWidget extends StatelessWidget {
  const TwoBottonWidget({
    super.key,
    required this.topValue,
    required this.context,
    required this.titleOne,
    required this.titleTwo,
  });

  final double topValue;
  final BuildContext context;
  final String titleOne;
  final String titleTwo;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: topValue,
      child: Container(
        height: 55,
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(width: 1, color: const Color(0xffC1C1C1))),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 53,
                  width: (MediaQuery.of(context).size.width / 2) - 1,
                  padding: const EdgeInsets.only(bottom: 20, top: 12),
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.blue)),
                  child: Center(child: Text(titleOne, style: judulBoldText)),
                ),
                Container(
                  height: 53,
                  width: (MediaQuery.of(context).size.width / 2) - 1,
                  padding: const EdgeInsets.only(bottom: 20, top: 12),
                  child: Center(child: Text(titleTwo, style: judulNormalText)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
