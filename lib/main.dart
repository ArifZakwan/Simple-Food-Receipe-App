// ignore_for_file: avoid_print, must_be_immutable

import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:shoppinglistapp/malayCuisinePage.dart';
import 'package:shoppinglistapp/indianCuisinePage.dart';
import 'package:shoppinglistapp/chineseCuisinePage.dart';
import 'package:shoppinglistapp/dessertsPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  Widget maintitle = Container(
    padding: const EdgeInsets.fromLTRB(0, 35, 0, 30),
    child: const Center(
      child: Text(
        "Let's Cook with Us",
        style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
      ),
    ),
  );

  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Colors.grey),
      home: Scaffold(
        body: ListView(
          children: [
            maintitle,
            const FoodButton(),
          ],
        ),
      )
    );
  }
}

class FoodButton extends StatelessWidget {
  const FoodButton({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
      GestureDetector(
        child: Container(
          margin: const EdgeInsets.fromLTRB(0, 0, 0, 25),
          width: 300,
          height: 100,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            image: DecorationImage(
                image: AssetImage("assets/malayBack.jpg"), fit: BoxFit.cover),
          ),
          child: const Center(
              child: Text(
            "Malay Cuisine",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          )),
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const MalayFoods()),
          );
        },
      ),
      //Second Button
      GestureDetector(
        child: Container(
          margin: const EdgeInsets.fromLTRB(0, 0, 0, 25),
          width: 300,
          height: 100,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            image: DecorationImage(
                image: AssetImage("assets/indianBack.jpg"),
                fit: BoxFit.cover),
          ),
          child: const Center(
              child: Text(
            "Indian Cuisine",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          )),
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const IndianFoods()),
          );
        },
      ),
      //ThirdButton
      GestureDetector(
        child: Container(
          margin: const EdgeInsets.fromLTRB(0, 0, 0, 25),
          width: 300,
          height: 100,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            image: DecorationImage(
                image: AssetImage("assets/chineseBack.jpg"),
                fit: BoxFit.cover),
          ),
          child: const Center(
              child: Text(
            "Chinese Cuisine",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          )),
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ChineseFoods()),
          );
        },
      ),
      //Fourth button
      GestureDetector(
        child: Container(
          margin: const EdgeInsets.fromLTRB(0, 0, 0, 25),
          width: 300,
          height: 100,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            image: DecorationImage(
                image: AssetImage("assets/Desserts.jpg"), fit: BoxFit.cover),
          ),
          child: const Center(
              child: Text(
            "Dessert",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          )),
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Desserts()),
          );
        },
      ),
    ],
    );
  }
}

