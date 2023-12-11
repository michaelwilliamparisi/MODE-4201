import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, year, id;
  final Color color;

  Product(
      {required this.image,
      required this.title,
      required this.description,
      required this.price,
      required this.year,
      required this.id,
      required this.color});
}

List<Product> products = [
  Product(
      id: 1,
      title: "Blue Acura",
      price: 5000,
      year: 2005,
      description: dummyText,
      image: "assets/images/AcuraBlue.jpg",
      color: Color.fromARGB(255, 45, 48, 38)),
  Product(
      id: 2,
      title: "Clapped Chevey Malibu",
      price: 2500,
      year: 2004,
      description: dummyText,
      image: "assets/images/BipolerMalibu.jpg",
      color: Color.fromARGB(255, 98, 34, 141)),
  Product(
      id: 3,
      title: "Honda Del Soul",
      price: 10000,
      year: 1992,
      description: dummyText,
      image: "assets/images/DelSoul.jpg",
      color: Color.fromARGB(255, 145, 46, 46)),
  Product(
      id: 4,
      title: "Combo Deal Subi+Stang",
      price: 15000,
      year: 0000,
      description: dummyText,
      image: "assets/images/ForesterMustang.jpg",
      color: Color.fromARGB(255, 243, 240, 38)),
  Product(
      id: 5,
      title: "Mustang Boss",
      price: 45000,
      year: 2017,
      description: dummyText,
      image: "assets/images/MustangeBlue.jpg",
      color: Color.fromARGB(255, 45, 57, 226)),
  Product(
      id: 6,
      title: "Toyota Celica",
      price: 20000,
      year: 1996,
      description: dummyText,
      image: "assets/images/DodgeTruck.jpg",
      color: Color(0xFFAEAEAE)),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
