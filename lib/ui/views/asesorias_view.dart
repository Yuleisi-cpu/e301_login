import 'package:flutter/material.dart';

class AsesoriasView extends StatelessWidget {
  const AsesoriasView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Asesorías'),
      ),
      body: const Center(
        child: Text(
          'Pantalla de Asesorías',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}