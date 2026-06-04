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
               {'nombre': 'Grogreen', 'imagen': 'assets/grogreen.jpeg'},
                {'nombre': '00+00+15', 'imagen': 'assets/00-00-15.jpeg'},
                {'nombre': 'T16', 'imagen': 'assets/t16.jpeg'},
                {'nombre': 'Sulfamin', 'imagen': 'assets/sulfa.jpeg'},
              ]),

              seccionProductos('Herbicidas', [
                {'nombre': 'Lumbrea','imagen': 'assets/lumbre.png',},
                {'nombre': 'Casllisto', 'imagen': 'assets/cali.png'},
                {'nombre': 'Lafam ', 'imagen': 'assets/lafam.png'},
                {'nombre': 'Rapido ', 'imagen': 'assets/rapido.jpeg'},
              ]),

              seccionProductos('Insecticidas', [
                {'nombre': 'Ciper ql', 'imagen': 'assets/ciper.jpeg'},
                {'nombre': 'Luger', 'imagen': 'assets/luger.jpeg'},
                {'nombre': 'Velcron ', 'imagen': 'assets/velcron.jpeg'},
                {'nombre': 'Lannate', 'imagen': 'assets/lanate.jpeg'},
              ]),

              seccionProductos('Fungicidas', [
                {'nombre': 'Tlaloc', 'imagen': 'assets/tlaloc.jpeg'},
                {'nombre': 'Captan ', 'imagen': 'assets/captan.jpeg'},
                {'nombre': 'Prozycar', 'imagen': 'assets/prozy.jpeg'},
                {'nombre': 'Azoshy', 'imagen': 'assets/azoshy.jpeg'},
              ]),

              seccionProductos('Hormonas', [
                {'nombre': 'Maxigrow', 'imagen': 'assets/maxi.jpeg'},
                {'nombre': 'Citoquim', 'imagen': 'assets/cito.jpeg'},
                {'nombre': 'Biozyme', 'imagen': 'assets/biozy.jpeg'},
                {'nombre': 'Thz', 'imagen': 'assets/thz.jpeg'},
              ]),

              seccionProductos('Semillas', [
                {'nombre': 'Calabaza', 'imagen': 'assets/calabaza.jpeg'},
                {'nombre': 'Girasol', 'imagen': 'assets/girasol.jpeg'},
                {'nombre': 'Silantro', 'imagen': 'assets/silantro.jpeg'},
                {'nombre': 'Jitomate', 'imagen': 'assets/jitomate.jpeg'},
              ]),
              seccionProductos('Otros', [
                {'nombre': 'Guantes', 'imagen': 'assets/guante.jpeg'},
                {'nombre': 'Machetes', 'imagen': 'assets/machete.jpeg'},
                {'nombre': 'Hilo de guiro', 'imagen': 'assets/guiro.jpeg'},
                {'nombre': 'Bomba de fumigar', 'imagen': 'assets/bomba.jpeg'},
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
        {'nombre': 'Grogreen', 'imagen': 'assets/grogreen.jpeg'},
                {'nombre': '00+00+15', 'imagen': 'assets/00-00-15.jpeg'},
                {'nombre': 'T16', 'imagen': 'assets/t16.jpeg'},
                {'nombre': 'Sulfamin', 'imagen': 'assets/sulfa.jpeg'},
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
        {'nombre': 'Ciper ql', 'imagen': 'assets/ciper.jpeg'},
                {'nombre': 'Luger', 'imagen': 'assets/luger.jpeg'},
                {'nombre': 'Velcron ', 'imagen': 'assets/velcron.jpeg'},
                {'nombre': 'Lannate', 'imagen': 'assets/lanate.jpeg'},
      ];
    }
  if (categoria == 'Fungicidas') {
      productos = [
        {'nombre': 'Tlaloc', 'imagen': 'assets/tlaloc.jpeg'},
                {'nombre': 'Captan ', 'imagen': 'assets/captan.jpeg'},
                {'nombre': 'Prozycar', 'imagen': 'assets/prozy.jpeg'},
                {'nombre': 'Azoshy', 'imagen': 'assets/azoshy.jpeg'},
      ];
    }
if (categoria == 'Hormonas') {
      productos = [
        {'nombre': 'Maxigrow', 'imagen': 'assets/maxi.jpeg'},
                {'nombre': 'Citoquim', 'imagen': 'assets/cito.jpeg'},
                {'nombre': 'Biozyme', 'imagen': 'assets/biozy.jpeg'},
                {'nombre': 'Thz', 'imagen': 'assets/thz.jpeg'},
      ];
    }
if (categoria == 'Semillas') {
      productos = [
       {'nombre': 'Calabaza', 'imagen': 'assets/calabaza.jpeg'},
                {'nombre': 'Girasol', 'imagen': 'assets/girasol.jpeg'},
                {'nombre': 'Silantro', 'imagen': 'assets/silantro.jpeg'},
                {'nombre': 'Jitomate', 'imagen': 'assets/jitomate.jpeg'},
      ];
    }
if (categoria == 'Otros') {
      productos = [
        {'nombre': 'Guantes', 'imagen': 'assets/guante.jpeg'},
                {'nombre': 'Machetes', 'imagen': 'assets/machete.jpeg'},
                {'nombre': 'Hilo de guiro', 'imagen': 'assets/guiro.jpeg'},
                {'nombre': 'Bomba de fumigar', 'imagen': 'assets/bomba.jpeg'},
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