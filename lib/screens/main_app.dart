import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:refind/buttons/small_button.dart';
import 'package:refind/closet_card.dart';
import 'package:refind/funfact_card.dart';
import 'package:refind/table_card.dart';

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int bottomNavIndex = 1;

  Widget bottomNavItem(bool selected, int index, String text) {
    return InkWell(
      onTap: () {
        setState(() {
          bottomNavIndex = index;
        });
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 56,
            height: 32,
            decoration: BoxDecoration(
              color:
                  selected ? const Color(0xFFBAEAFF) : const Color(0x00FFFFFF),
              borderRadius: const BorderRadius.all(Radius.circular(20)),
            ),
            margin: const EdgeInsets.only(bottom: 4),
          ),
          Text(text),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Text(
              'Main App',
            ),
            SmallButton(
              text: "Bid",
            ),
            SmallButton(
              text: "Yours",
              color: Color(0x00FFFFFF),
              textColor: Color(0xFF28B5DF),
            ),
            SmallButton(
              text: "Not Yours",
              color: Color(0x00FFFFFF),
              textColor: Color(0xFF28B5DF),
            ),
            ClosetCard(),
            FunFact(),
            TableCard(),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          color: Color(0xFFECEEEA),
        ),
        height: 64,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              bottomNavItem(bottomNavIndex == 0, 0, 'Table'),
              bottomNavItem(bottomNavIndex == 1, 1, 'Clothing'),
              bottomNavItem(bottomNavIndex == 2, 2, 'Closet'),
            ],
          ),
        ),
      ),
    );
  }
}
