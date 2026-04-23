import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final String name;
  final String price;
  final String imageUrl;
  final String description;

  const HomePage({
    super.key,
    required this.name,
    required this.price,
    required this.imageUrl,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        // ✅ BIKIN KE TENGAH LAYAR
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.network(
                imageUrl,
                width: 200,
                height: 300,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 10),
              Text(
                price,
                style: const TextStyle(fontSize: 24, color: Colors.green),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 5),
              Text(
                name,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                child: const Text('Pindah ke Halaman Kedua'),
                onPressed: () {
                  Navigator.pushNamed(context, '/second');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
