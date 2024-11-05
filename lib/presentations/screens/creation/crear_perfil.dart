import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CrearPerfilScreen extends StatefulWidget {
  const CrearPerfilScreen({super.key});

  @override
  CrearPerfilScreenState createState() => CrearPerfilScreenState();
}

class CrearPerfilScreenState extends State<CrearPerfilScreen> {
  final TextEditingController _nombreController = TextEditingController();
  final TextEditingController _edadController = TextEditingController();
  final TextEditingController _ocupacionController = TextEditingController();

  bool _isButtonEnabled = false;

  @override
  void initState() {
    super.initState();
    _nombreController.addListener(_onTextChanged);
    _edadController.addListener(_onTextChanged);
    _ocupacionController.addListener(_onTextChanged);
  }

  void _onTextChanged() {
    setState(() {
      _isButtonEnabled = _validateInputs();
    });
  }

  bool _validateInputs() {
    // Validar nombre
    String nombre = _nombreController.text;
    if (nombre.isEmpty || nombre.length < 3 || !RegExp(r'^[A-Za-z]{3,}.*$').hasMatch(nombre)) {
      return false;
    }

    // Validar edad
    String edad = _edadController.text;
    if (edad.isEmpty || int.tryParse(edad) == null || int.parse(edad) < 18 || int.parse(edad) > 100) {
      return false;
    }

    // Validar ocupación
    String ocupacion = _ocupacionController.text;
    if (ocupacion.isEmpty || ocupacion.length < 3 || !RegExp(r'^[A-Za-z]{3,}.*$').hasMatch(ocupacion)) {
      return false;
    }

    return true; // Todos los campos son válidos
  }

  @override
  void dispose() {
    _nombreController.dispose();
    _edadController.dispose();
    _ocupacionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Crear perfil'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _nombreController,
              decoration: const InputDecoration(labelText: 'Nombre'),
            ),
            TextField(
              controller: _edadController,
              decoration: const InputDecoration(labelText: 'Edad'),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: _ocupacionController,
              decoration: const InputDecoration(labelText: 'Ocupación'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _isButtonEnabled
                  ? () {
                      final nombre = _nombreController.text;
                      final edad = _edadController.text;
                      final ocupacion = _ocupacionController.text;
                      context.push('/perfil/$nombre/$edad/$ocupacion');
                    }
                  : null,
              child: const Text('Guardar y ver perfil'),
            ),
          ],
        ),
      ),
    );
  }
}
