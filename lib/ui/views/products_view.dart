import 'package:flutter/material.dart';

class ProductsView extends StatelessWidget {
  final String? categoria;

const ProductsView({
  super.key,
  this.categoria,
});

  @override
Widget build(BuildContext context) {

  List<Map<String, String>> productos = [];

  if (categoria == 'Fertilizantes') {
    productos = [
      {
        'nombre': 'Lumbrea',
        'imagen': 'assets/productos/producto1.png',
      },
      {
        'nombre': '10-60-0',
        'imagen': 'assets/productos/producto2.png',
      },
    ];
  } else if (categoria == 'Herbicidas') {
    productos = [
      {
        'nombre': 'Herbicida X',
        'imagen': 'assets/productos/producto3.png',
      },
    ];
  }

    return Scaffold(
      appBar: AppBar(
        title: Text(categoria ?? 'Productos'),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(20),
        itemCount: productos.length,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 15,
          mainAxisSpacing: 15,
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
    );
  }
}