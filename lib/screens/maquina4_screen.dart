import 'package:flutter/material.dart';

class Maquina4Screen extends StatelessWidget {
  const Maquina4Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Máquina 4'),
        backgroundColor: const Color(0xFF22A39F),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: const Center(
        child: Text(
          'Tela da Máquina 4',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
} 