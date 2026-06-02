import 'package:flutter/material.dart';
import 'package:e301_login/ui/labels/custom_labels.dart';
import 'products_view.dart'; // Ajusta la ruta según tu proyecto

class CategoriesView extends StatelessWidget {
  CategoriesView({super.key});

  final List<String> categorias = [
    'Fertilizantes',
    'Herbicidas',
    'Insecticidas',
    'Fungicidas',
    'Hormonas',
    'Semillas',
    'Otros',
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Categorías',
            style: CustomLabels.h1,
          ),

          const SizedBox(height: 20),

          Expanded(
            child: ListView.builder(
              itemCount: categorias.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    title: Text(categorias[index]),
                    trailing: const Icon(Icons.arrow_forward_ios),

  onTap: () {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => ProductsView(
        categoria: categorias[index],
      ),
    ),
  );
},
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