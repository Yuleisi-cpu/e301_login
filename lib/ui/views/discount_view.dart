
import 'package:e301_login/ui/labels/custom_labels.dart';
import 'package:flutter/material.dart';

class DiscountView extends StatelessWidget {
  const DiscountView({super.key});

  @override
  Widget build(BuildContext context) {
    final productos = [
      {
        'nombre': 'lumbre',
        'imagen': 'assets/lumbre.png',
      },
      {
        'nombre': '00-00-15',
        'imagen': 'assets/00-00-15.jpeg',
      },
      {
        'nombre': 'tlaloc',
        'imagen': 'assets/tlaloc.jpeg',
      },
      {
        'nombre': 'thz',
        'imagen': 'assets/thz.jpeg',
      },
      {
        'nombre': 'truper',
        'imagen': 'assets/truper.jpg',
      },
    ];

    return Container(
      color: Colors.grey[100],
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Galería de Productos',
            style: CustomLabels.h1,
          ),

          const SizedBox(height: 8),

          const Text(
            'Productos agroquímicos destacados',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 16,
            ),
          ),

          const SizedBox(height: 25),

          Expanded(
            child: GridView.builder(
              itemCount: productos.length,
              gridDelegate:
                  const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                childAspectRatio: 0.78,
              ),
              itemBuilder: (context, index) {
                final producto = productos[index];

                return Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.08),
                        blurRadius: 12,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Expanded(
                        flex: 4,
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                              ),
                              child: Image.asset(
                                producto['imagen']!,
                                width: double.infinity,
                                height: double.infinity,
                                fit: BoxFit.cover,
                              ),
                            ),

                            Positioned(
                              top: 10,
                              right: 10,
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 10,
                                  vertical: 5,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: const Text(
                                  'Popular',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 8,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                producto['nombre']!,
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),

                              const SizedBox(height: 4),

                            
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}