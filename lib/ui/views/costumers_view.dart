import 'package:e301_login/ui/labels/custom_labels.dart';
import 'package:flutter/material.dart';

class CustomersView extends StatelessWidget {
  const CustomersView({super.key});

  @override
  Widget build(BuildContext context) {
    final proveedores = [
      {
        'nombre': 'AgroTech',
        'imagen': 'assets/images/agrotech.png',
      },
      {
        'nombre': 'FertiMax',
        'imagen': 'assets/images/fertimax.png',
      },
      {
        'nombre': 'AgroVerde',
        'imagen': 'assets/images/agroverde.png',
      },
    ];

    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Proveedores',
            style: CustomLabels.h1,
          ),

          const SizedBox(height: 20),

          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: proveedores.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 15,
              mainAxisSpacing: 15,
              childAspectRatio: 0.9,
            ),
            itemBuilder: (context, index) {
              final proveedor = proveedores[index];

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
                          proveedor['imagen']!,
                          fit: BoxFit.contain,
                        ),
                      ),

                      const SizedBox(height: 10),

                      Text(
                        proveedor['nombre']!,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
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