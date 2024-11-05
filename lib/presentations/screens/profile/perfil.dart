import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PerfilScreen extends StatelessWidget {
  final String nombre;
  final int edad;
  final String ocupacion;

  const PerfilScreen({
    super.key,
    required this.nombre,
    required this.edad,
    required this.ocupacion,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Perfil')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Nombre: $nombre', style: const TextStyle(fontSize: 18)),
            Text('Edad: $edad', style: const TextStyle(fontSize: 18)),
            Text('Ocupación: $ocupacion', style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  context.go('/');
                },
                child: const Text('Regresar a inicio'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
