import 'package:flutter/material.dart';

class AsesoriasView extends StatefulWidget {
  const AsesoriasView({super.key});

  @override
  State<AsesoriasView> createState() => _AsesoriasViewState();
}

class _AsesoriasViewState extends State<AsesoriasView> {
  final TextEditingController _controller = TextEditingController();

  final List<String> mensajes = [];

  void enviarMensaje() {
    if (_controller.text.trim().isEmpty) return;

    setState(() {
      mensajes.add(_controller.text.trim());
    });

    _controller.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Asesorías'),
      ),
      body: Column(
        children: [

          // LISTA DE MENSAJES
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(15),
              itemCount: mensajes.length,
              itemBuilder: (context, index) {
                return Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.green.shade100,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(mensajes[index]),
                  ),
                );
              },
            ),
          ),

          const Divider(height: 1),

          // INPUT DE MENSAJE
          Container(
            padding: const EdgeInsets.all(10),
            color: Colors.grey.shade100,
            child: Row(
              children: [

                // TEXTO
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: const InputDecoration(
                      hintText: 'Escribe tu consulta...',
                      border: OutlineInputBorder(),
                      isDense: true,
                    ),
                  ),
                ),

                const SizedBox(width: 10),

                // BOTÓN ENVIAR
                IconButton(
                  onPressed: enviarMensaje,
                  icon: const Icon(Icons.send, color: Colors.green),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}