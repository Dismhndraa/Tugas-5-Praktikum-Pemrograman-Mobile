import 'package:flutter/material.dart';
import 'second_page.dart';
import 'home_page.dart';

void main() {
  runApp(MyApp());
}

final String name = "Laptop Gaming";
final String price = "Rp. 100.000";
final String imageUrl = "https://picsum.photos/id/9/5000/3269";
final String description =
    "Laptop gaming bertenaga dengan performa tinggi untuk multitasking, desain, dan gaming. Dilengkapi layar tajam, penyimpanan besar, dan desain stylish yang siap menemani aktivitasmu setiap hari.";

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(
              name: name,
              price: price,
              imageUrl: imageUrl,
              description: description,
            ),
        '/second': (context) => SecondPage(
              name: name,
              price: int.parse(
                price.replaceAll('Rp. ', '').replaceAll('.', ''),
              ),
              imageUrl: imageUrl,
              description: description,
            ),
      },
    );
  }
}