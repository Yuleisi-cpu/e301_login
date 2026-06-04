import 'package:flutter/material.dart';

class AnalyticView extends StatelessWidget {
  const AnalyticView({super.key});

  @override
  Widget build(BuildContext context) {
    final plagas = [
      {
        'nombre': 'Gusano cogollero',
        'imagen': 'assets/cogollero.jpeg',
        'nivel': 'Alto',
      },
      {
        'nombre': 'Pulgón',
        'imagen': 'assets/pulgon.jpeg',
        'nivel': 'Medio',
      },
      {
        'nombre': 'Mosca blanca',
        'imagen': 'assets/mosca.jpeg',
        'nivel': 'Alto',
      },
      {
        'nombre': 'Trips',
        'imagen': 'assets/trips.jpeg',
        'nivel': 'Bajo',
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Monitoreo de Plagas'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: GridView.builder(
          itemCount: plagas.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 15,
            mainAxisSpacing: 15,
            childAspectRatio: 0.75,
          ),
          itemBuilder: (context, index) {
            final plaga = plagas[index];

            return Card(
              elevation: 3,
              child: Column(
                children: [

                  // IMAGEN
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Image.asset(
                        plaga['imagen']!,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),

                  // NOMBRE
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Text(
                      plaga['nombre']!,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  const SizedBox(height: 5),

                  // NIVEL DE RIESGO
                  Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: plaga['nivel'] == 'Alto'
                          ? Colors.red
                          : plaga['nivel'] == 'Medio'
                              ? Colors.orange
                              : Colors.green,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      'Riesgo: ${plaga['nivel']}',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}