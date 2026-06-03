import 'package:flutter/material.dart';

class ProductsView extends StatelessWidget {
  final String? categoria;

  const ProductsView({
    super.key,
    this.categoria,
  });

  @override
  Widget build(BuildContext context) {

    // SI NO VIENE CATEGORÍA, MUESTRA TODAS
    if (categoria == null) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Productos'),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [

              seccionProductos('Fertilizantes', [
                {'nombre': 'Lumbrea', 'imagen': 'assets/productos/producto1.png'},
                {'nombre': '10-60-0', 'imagen': 'assets/productos/producto2.png'},
                {'nombre': 'Triple 17', 'imagen': 'assets/productos/producto3.png'},
                {'nombre': 'Urea', 'imagen': 'assets/productos/producto4.png'},
              ]),

              seccionProductos('Herbicidas', [
                {'nombre': 'Lumbrea','imagen': 'assets/lumbre.png',},
                {'nombre': 'Casllisto', 'imagen': 'assets/cali.png'},
                {'nombre': 'Lafam ', 'imagen': 'assets/lafam.png'},
                {'nombre': 'Rapido ', 'imagen': 'assets/rapido.jpeg'},
              ]),

              seccionProductos('Insecticidas', [
                {'nombre': 'Insecticida A', 'imagen': 'assets/productos/producto1.png'},
                {'nombre': 'Insecticida B', 'imagen': 'assets/productos/producto2.png'},
                {'nombre': 'Insecticida C', 'imagen': 'assets/productos/producto3.png'},
                {'nombre': 'Insecticida D', 'imagen': 'assets/productos/producto4.png'},
              ]),

              seccionProductos('Fungicidas', [
                {'nombre': 'Fungicida A', 'imagen': 'assets/productos/producto1.png'},
                {'nombre': 'Fungicida B', 'imagen': 'assets/productos/producto2.png'},
                {'nombre': 'Fungicida C', 'imagen': 'assets/productos/producto3.png'},
                {'nombre': 'Fungicida D', 'imagen': 'assets/productos/producto4.png'},
              ]),

              seccionProductos('Hormonas', [
                {'nombre': 'Hormona A', 'imagen': 'assets/productos/producto1.png'},
                {'nombre': 'Hormona B', 'imagen': 'assets/productos/producto2.png'},
                {'nombre': 'Hormona C', 'imagen': 'assets/productos/producto3.png'},
                {'nombre': 'Hormona D', 'imagen': 'assets/productos/producto4.png'},
              ]),

              seccionProductos('Semillas', [
                {'nombre': 'Semilla A', 'imagen': 'assets/productos/producto1.png'},
                {'nombre': 'Semilla B', 'imagen': 'assets/productos/producto2.png'},
                {'nombre': 'Semilla C', 'imagen': 'assets/productos/producto3.png'},
                {'nombre': 'Semilla D', 'imagen': 'assets/productos/producto4.png'},
              ]),
              seccionProductos('Otros', [
                {'nombre': 'Otros A', 'imagen': 'assets/productos/producto1.png'},
                {'nombre': 'Otros B', 'imagen': 'assets/productos/producto2.png'},
                {'nombre': 'Otros C', 'imagen': 'assets/productos/producto3.png'},
                {'nombre': 'Otros D', 'imagen': 'assets/productos/producto4.png'},
              ]),
            ],
          ),
        ),
      );
    }

    // SI VIENE CATEGORÍA, FUNCIONA COMO ANTES
    List<Map<String, String>> productos = [];

    if (categoria == 'Fertilizantes') {
      productos = [
        {'nombre': 'Lumbrea', 'imagen': 'assets/productos/producto1.png'},
        {'nombre': '10-60-0', 'imagen': 'assets/productos/producto2.png'},
      ];
    } else if (categoria == 'Herbicidas') {
      productos = [
        {'nombre': 'Lumbre ', 'imagen': 'assets/lumbre.png'},
        {'nombre': 'Callisto ', 'imagen': 'assets/cali.png'},
        {'nombre': 'Lafam ', 'imagen': 'assets/lafam.png'},
        {'nombre': 'Rapido ', 'imagen': 'assets/rapido.jpeg'},
      ];
      
    }
    if (categoria == 'Insecticidas') {
      productos = [
        {'nombre': 'Lumbrea', 'imagen': 'assets/productos/producto1.png'},
        {'nombre': '10-60-0', 'imagen': 'assets/productos/producto2.png'},
      ];
    }
  if (categoria == 'Fungicidas') {
      productos = [
        {'nombre': 'Lumbrea', 'imagen': 'assets/productos/producto1.png'},
        {'nombre': '10-60-0', 'imagen': 'assets/productos/producto2.png'},
      ];
    }
if (categoria == 'Hormonas') {
      productos = [
        {'nombre': 'Lumbrea', 'imagen': 'assets/productos/producto1.png'},
        {'nombre': '10-60-0', 'imagen': 'assets/productos/producto2.png'},
      ];
    }
if (categoria == 'Semillas') {
      productos = [
        {'nombre': 'Lumbrea', 'imagen': 'assets/productos/producto1.png'},
        {'nombre': '10-60-0', 'imagen': 'assets/productos/producto2.png'},
      ];
    }
if (categoria == 'Otros') {
      productos = [
        {'nombre': 'Lumbrea', 'imagen': 'assets/productos/producto1.png'},
        {'nombre': '10-60-0', 'imagen': 'assets/productos/producto2.png'},
      ];
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(categoria!),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(20),
        itemCount: productos.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 15,
          mainAxisSpacing: 15,
        ),
        itemBuilder: (context, index) {
return Card(
  child: Column(
    children: [
      Expanded(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Image.asset(
            productos[index]['imagen']!,
            fit: BoxFit.contain,
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8),
        child: Text(
          productos[index]['nombre']!,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ],
  ),
);
        },
      ),
    );
  }

  Widget seccionProductos(
    String titulo,
    List<Map<String, String>> productos,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          titulo,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),

        const SizedBox(height: 15),

        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: productos.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            crossAxisSpacing: 15,
            mainAxisSpacing: 15,
            childAspectRatio: 0.8,
          ),
          itemBuilder: (context, index) {
            return Card(
              child: Column(
                children: [
                  Expanded(
                    child: Image.asset(
                      productos[index]['imagen']!,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Text(
                      productos[index]['nombre']!,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            );
          },
        ),

        const SizedBox(height: 30),
      ],
    );
  }
}