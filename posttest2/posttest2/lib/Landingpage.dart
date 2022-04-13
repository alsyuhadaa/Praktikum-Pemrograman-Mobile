import 'dart:ui';
import 'package:flutter/material.dart';

class Landingpage extends StatelessWidget {
  const Landingpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("POSTTEST 2 HADA"),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 228, 22, 22),
      ),
      backgroundColor: Color.fromARGB(255, 250, 246, 246),
      body: ListView(
        children: [
          Text(
            " \nSEMAYANG CELL ",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 14, 13, 13),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 200,
                height: 280,
                margin: EdgeInsets.only(top: 25),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(65),
                  image: DecorationImage(
                      image: AssetImage("assets/telkomsel.jpg"),
                      fit: BoxFit.cover),
                ),
              ),
              Text(
                "\n\n PENJUALAN VOUCHER PULSA MURAH \nSE-SAMARINDA",
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 60,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  MenuContainer(isActive: true, menu: "Beli pulsa"),
                  MenuContainer(menu: "Keluar"),
                ],
              ),
              MyButton()
            ],
          ),
        ],
      ),
    );
  }
}

class MenuContainer extends StatelessWidget {
  const MenuContainer({Key? key, this.isActive = false, required this.menu})
      : super(key: key);

  final bool isActive;
  final String menu;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 50,
      margin: EdgeInsets.only(top: 10),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isActive ? Color.fromARGB(255, 218, 13, 23) : Colors.transparent,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          width: 2,
          color: Color.fromARGB(255, 27, 26, 26),
        ),
      ),
      child: Text(
        menu,
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
          color: isActive
              ? Color.fromARGB(255, 24, 21, 21)
              : Color.fromARGB(255, 20, 7, 3),
        ),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  const MyButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 30,
      margin: EdgeInsets.only(top: 50),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 18, 6, 6),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        "Bantuan",
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
