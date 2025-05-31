import 'package:flutter/material.dart';

class Maquina3Screen extends StatelessWidget {
  const Maquina3Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Máquina 3'),
        backgroundColor: const Color(0xFFFCA97A),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: const Center(
        child: Text(
          'Tela da Máquina 3',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
} 