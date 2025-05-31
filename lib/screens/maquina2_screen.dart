import 'package:flutter/material.dart';

class Maquina2Screen extends StatelessWidget {
  const Maquina2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Máquina 2'),
        backgroundColor: const Color(0xFF2DD4BF),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: const Center(
        child: Text(
          'Tela da Máquina 2',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
} 