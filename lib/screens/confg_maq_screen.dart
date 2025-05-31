import 'package:flutter/material.dart';
import 'maquina1_screen.dart';
import 'maquina2_screen.dart';
import 'maquina3_screen.dart';
import 'maquina4_screen.dart';

class ConfgMaqScreen extends StatelessWidget {
  const ConfgMaqScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<_MaquinaCardData> maquinas = [
      _MaquinaCardData('Máquina 1', const Color(0xFF4F46E5), () => Navigator.push(context, MaterialPageRoute(builder: (_) => const Maquina1Screen()))),
      _MaquinaCardData('Máquina 2', const Color(0xFF2DD4BF), () => Navigator.push(context, MaterialPageRoute(builder: (_) => const Maquina2Screen()))),
      _MaquinaCardData('Máquina 3', const Color(0xFFFCA97A), () => Navigator.push(context, MaterialPageRoute(builder: (_) => const Maquina3Screen()))),
      _MaquinaCardData('Máquina 4', const Color(0xFF22A39F), () => Navigator.push(context, MaterialPageRoute(builder: (_) => const Maquina4Screen()))),
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            // Título roxo com botão de voltar
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 16),
              color: const Color(0xFF4F46E5),
              child: Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back, color: Colors.white),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                  const Expanded(
                    child: Center(
                      child: Text(
                        'Seleção de Máquinas',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 48), // espaço para equilibrar o layout
                ],
              ),
            ),
            const SizedBox(height: 24),
            // Texto principal
            const Text(
              'Selecione uma Máquina',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 24),
            // Cards das máquinas
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    gradient: const LinearGradient(
                      colors: [Color(0xFFCCF2F4), Color(0xFFD1D8FC)],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: maquinas.map((m) => _MaquinaCard(data: m)).toList(),
                    ),
                  ),
                ),
              ),
            ),
            // Rodapé
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Text(
                'Toque em uma das opções acima para acessar os controles da máquina',
                style: TextStyle(color: Colors.black54, fontSize: 16),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _MaquinaCardData {
  final String label;
  final Color color;
  final VoidCallback onTap;
  _MaquinaCardData(this.label, this.color, this.onTap);
}

class _MaquinaCard extends StatelessWidget {
  final _MaquinaCardData data;
  const _MaquinaCard({required this.data});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: data.onTap,
      child: Container(
        width: 150,
        height: 140,
        margin: const EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          color: data.color,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.15),
              blurRadius: 8,
              offset: const Offset(2, 4),
            ),
          ],
        ),
        child: Center(
          child: Text(
            data.label,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
} 