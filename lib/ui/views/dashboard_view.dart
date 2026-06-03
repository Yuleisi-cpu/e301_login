import 'package:flutter/material.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [

          // Imagen principal
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              'assets/inicio1.jpeg',
              width: double.infinity,
              height: 550,
              fit: BoxFit.cover,
            ),
          ),

          const SizedBox(height: 30),

          // Nombre de la empresa
          const Text(
            "AGRICOLA GUDIÑO'S",
            style: TextStyle(
              fontSize: 55,
              fontWeight: FontWeight.bold,
              letterSpacing: 3,
            ),
          ),

          const SizedBox(height: 10),

          const Text(
            "Productos Agrícolas",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w500,
              color: Colors.green,
            ),
          ),

          const SizedBox(height: 30),

          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 50),
            child: Text(
              "Somos una empresa especializada en la venta de productos agroquímicos de alta calidad.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                height: 1.5,
              ),
            ),
          ),

          const SizedBox(height: 40),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [

              Column(
                children: [
                  Icon(Icons.eco, size: 60, color: Colors.green),
                  SizedBox(height: 10),
                  Text(
                    'Fertilizantes',
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),

              Column(
                children: [
                  Icon(Icons.grass, size: 60, color: Colors.green),
                  SizedBox(height: 10),
                  Text(
                    'Semillas',
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),

              Column(
                children: [
                  Icon(Icons.agriculture, size: 60, color: Colors.green),
                  SizedBox(height: 10),
                  Text(
                    'Protección de Cultivos',
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),

            ],
          ),

          const SizedBox(height: 50),
        ],
      ),
    );
  }
}