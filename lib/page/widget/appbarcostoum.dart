import 'package:flutter/material.dart';

class AppBarCostoum extends StatelessWidget {
  const AppBarCostoum({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/image/loanmarket.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {},
          ),
          Row(
            children: [
              iconCostoum(icon: Icons.notifications_none),
              iconCostoum(icon: Icons.settings),
            ],
          ),
        ],
      ),
    );
  }

  IconButton iconCostoum({
    required IconData icon,
  }) {
    return IconButton(
      onPressed: () {},
      icon: Container(
        padding: const EdgeInsets.all(6),
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
        ),
        child: Icon(
          icon,
          color: Colors.black,
          size: 18,
        ),
      ),
    );
  }
}
