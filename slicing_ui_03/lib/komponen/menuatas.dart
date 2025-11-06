import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:slicing_ui_03/komponen/buttonmn.dart';
// import 'package:lucide_icons_flutter/lucide_icons.dart';

class Menuatas extends StatelessWidget {
  const Menuatas({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Selamat Pagi",
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
              Text(
                "Fulan Bin Fulan",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Row(
            spacing: 10,
            children: [
              Buttonmn(
                icon: Icon(
                  LucideIcons.shoppingBag,
                  color: Colors.white,
                  size: 23,
                ),
              ),
              Buttonmn(
                icon: Icon(LucideIcons.mail, color: Colors.white, size: 23),
              ),
              Container(
                padding: EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Image.asset("assets/bahasa.png", height: 40),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
