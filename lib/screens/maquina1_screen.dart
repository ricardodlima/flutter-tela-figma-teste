import 'package:flutter/material.dart';

class Maquina1Screen extends StatelessWidget {
  const Maquina1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Máquina 1'),
        backgroundColor: const Color(0xFF4F46E5),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: const Center(
        child: Text(
          'Tela da Máquina 1',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
} 