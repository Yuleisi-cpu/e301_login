import 'package:e301_login/ui/labels/custom_labels.dart';
import 'package:flutter/material.dart';

class DiscountView extends StatelessWidget {
  const DiscountView({super.key});

  @override
  Widget build(BuildContext context) {
    final productos = [
      {
        'nombre': 'Herbicida',
        'imagen': 'assets/images/herbicida.png',
      },
      {
        'nombre': 'Fungicida',
        'imagen': 'assets/images/fungicida.png',
      },
      {
        'nombre': 'Insecticida',
        'imagen': 'assets/images/insecticida.png',
      },
      {
        'nombre': 'Fertilizante',
        'imagen': 'assets/images/fertilizante.png',
      },
      {
        'nombre': 'Glifosato',
        'imagen': 'assets/images/glifosato.png',
      },
      {
        'nombre': 'Urea',
        'imagen': 'assets/images/urea.png',
      },
      {
        'nombre': 'Nitrogenado',
        'imagen': 'assets/images/nitrogenado.png',
      },
      {
        'nombre': 'Potasio',
        'imagen': 'assets/images/potasio.png',
      },
    ];

    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Productos Populares',
            style: CustomLabels.h1,
          ),

          const SizedBox(height: 20),

          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: productos.length,
            gridDelegate:
                const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 15,
              mainAxisSpacing: 15,
              childAspectRatio: 0.85,
            ),
            itemBuilder: (context, index) {
              final producto = productos[index];

              return Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Image.asset(
                          producto['imagen']!,
                          fit: BoxFit.contain,
                        ),
                      ),

                      const SizedBox(height: 10),

                      Text(
                        producto['nombre']!,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}