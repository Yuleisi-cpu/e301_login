import 'package:flutter/material.dart';

class NosotrosView extends StatelessWidget {
  const NosotrosView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // Imagen
            Center(
              child: Image.asset(
                'assets/nosotros1.jpeg',
                height: 550,
                width:double.infinity,
                fit: BoxFit.cover,
              ),
            ),

            const SizedBox(height: 20),

            Text(
              'Nosotros',
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(color: Colors.green,
              )
            ),

            const SizedBox(height: 20),

            const Text(
              'Objetivo',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            const Text(
              'Nuestro objetivo es ofrecer soluciones para mejorar la productividad agrícola, con productos que ayudan a los agricultores a proteger sus cultivos y aumentar su rendimiento.',
              style: TextStyle(fontSize: 16),
            ),

            const SizedBox(height: 20),

            const Text(
              'Misión',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            const Text(
              'Nuestra misión es ayudar a los agricultores desde el inicio de su producción agrícola hasta el final de la cosecha al ofrecer productos de alta calidad, asesoramiento técnico y un servicio al cliente optimo.',
              style: TextStyle(fontSize: 16),
            ),

            const SizedBox(height: 20),

            const Text(
              'Visión',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            const Text(
              'Nuestra visión es llegar a ser la mejor opción de los agricultores teniendo productos de vanguardia con los mejores precios del mercado además del asesoramiento técnico personalizado para cada cliente.',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}