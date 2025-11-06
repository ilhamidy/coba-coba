import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/test_icons.dart';
import 'package:slicing_ui_03/komponen/banner.dart';
import 'package:slicing_ui_03/komponen/kartukai.dart';
import 'package:slicing_ui_03/komponen/menuatas.dart';
import 'package:slicing_ui_03/komponen/mnitem.dart';
import 'package:slicing_ui_03/komponen/mnkereta.dart';
import 'package:slicing_ui_03/komponen/trip.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    image: DecorationImage(
                      image: AssetImage("assets/aminasi-stasiun.jpg"),
                      fit: BoxFit.cover,
                      opacity: 0.5,
                    ),
                  ),
                  child: Menuatas(),
                ),
                Kartukai(),
              ],
            ),

            SizedBox(height: 80),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  spacing: 15,
                  children: [
                    SizedBox(width: 10),
                    Mnkereta(
                      icon: Icon(
                        Icons.train_outlined,
                        size: 35,
                        color: Colors.white,
                      ),
                      text: "Antar kota",
                      warna: Colors.blue,
                    ),
                    Mnkereta(
                      icon: Icon(
                        Icons.train_outlined,
                        size: 35,
                        color: Colors.white,
                      ),
                      text: "Lokal",
                      warna: Colors.orange,
                    ),
                    Mnkereta(
                      icon: Icon(
                        Icons.train_outlined,
                        size: 35,
                        color: Colors.white,
                      ),
                      text: "Komuter",
                      warna: Colors.deepOrange,
                    ),
                    Mnkereta(
                      icon: Icon(
                        Icons.train_outlined,
                        size: 35,
                        color: Colors.white,
                      ),
                      text: "LRT",
                      warna: Colors.purpleAccent,
                    ),
                    Mnkereta(
                      icon: Icon(
                        Icons.train_outlined,
                        size: 35,
                        color: Colors.white,
                      ),
                      text: "Bandara",
                      warna: Colors.lightBlueAccent,
                    ),
                    Mnkereta(
                      icon: Icon(
                        Icons.train_outlined,
                        size: 35,
                        color: Colors.white,
                      ),
                      text: "Whoosh",
                      warna: Colors.deepOrangeAccent,
                    ),
                    SizedBox(width: 10),
                  ],
                ),
              ),
            ),
            //--ini menu item
            SizedBox(height: 25),
            Mnitem(),
            Trip(),
            SizedBox(height: 25),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Promo Terbaru",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 1.5, color: Colors.blue),
                    ),
                    child: Text(
                      "Lihat Semua",
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ],
              ),
            ),
            Banner1(),
          ],
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 65,
        child: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                spacing: 3,
                children: [
                  Icon(Icons.home),
                  Text("Beranda", style: TextStyle(fontSize: 10)),
                ],
              ),
              Column(
                spacing: 3,
                children: [
                  Icon(Icons.home),
                  Text("Kereta", style: TextStyle(fontSize: 10)),
                ],
              ),
              Column(
                spacing: 3,
                children: [
                  Icon(Icons.home),
                  Text("Tiket", style: TextStyle(fontSize: 10)),
                ],
              ),
              Column(
                spacing: 3,
                children: [
                  Icon(Icons.home),
                  Text("Promo", style: TextStyle(fontSize: 10)),
                ],
              ),
              Column(
                spacing: 3,
                children: [
                  Icon(Icons.home),
                  Text("Profil", style: TextStyle(fontSize: 10)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
