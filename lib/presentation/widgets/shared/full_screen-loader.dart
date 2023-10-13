// ignore: file_names
import 'package:flutter/material.dart' show BuildContext, Center, CircularProgressIndicator, Column, MainAxisAlignment, SizedBox, StatelessWidget, StreamBuilder, Text, Widget;

class FullScreenLoader extends StatelessWidget {
  const FullScreenLoader({super.key});

  Stream<String> getLoadingMessages() {
    final messages = <String>[
      'cargando una pelicula',
      'comprando palomotas de maiz',
      'cargando populares',
      'llamando ala novia',
      'ya mero...',
      'Esto esta artantando mas de lo que esperaba ... :()'
    ];

    return Stream.periodic(const Duration(milliseconds: 1222), (step) {
      return messages[step];
    }).take(messages.length);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('espere por favor'),
          const SizedBox(
            height: 10,
          ),
          const CircularProgressIndicator(
            strokeWidth: 2,
          ),
          StreamBuilder(
              stream: getLoadingMessages(),
              builder: (context, snapshot) {
                if (!snapshot.hasData) return const Text('cargando...');
                return Text(snapshot.data!);
              })
        ],
      ),
    );
  }
}
