import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'confg_maq_screen.dart';

class MaquinaScreen extends StatelessWidget {
  const MaquinaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Color bgColor = const Color(0xFF181C23);
    final Color card1 = const Color(0xFF4F46E5);
    final Color card2 = const Color(0xFF2DD4BF);
    final Color card3 = const Color(0xFFFCA97A);
    final Color card4 = const Color(0xFF2DD4BF);
    final Color buttonColor = const Color(0xFF4F46E5);
    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: Column(
          children: [
            // Título
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
              color: card1,
              child: Text(
                'Page Title',
                style: GoogleFonts.inter(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            // Contadores
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildCounterCard('Contador 1', '183', card1),
                  _buildCounterCard('Contador 2', '18', card2),
                  _buildCounterCard('Contador 3', '329', card3),
                  _buildCounterCard('Contador 4', '156', card4),
                ],
              ),
            ),
            // Botões RESET
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildResetButton('RESET 1', buttonColor),
                  _buildResetButton('RESET 2', buttonColor),
                  _buildResetButton('RESET 3', buttonColor),
                  _buildResetButton('RESET 4', buttonColor),
                ],
              ),
            ),
            const SizedBox(height: 32),
            // Botões grandes
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 48),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: _buildBigButton('Conectar bluetooth', buttonColor, () {}),
                  ),
                  const SizedBox(width: 24),
                  Expanded(
                    child: _buildBigButton('Configurar maquinas', buttonColor, () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => const ConfgMaqScreen()),
                      );
                    }),
                  ),
                ],
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }

  Widget _buildCounterCard(String title, String value, Color color) {
    return Container(
      width: 120,
      height: 100,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: GoogleFonts.inter(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            value,
            style: GoogleFonts.inter(
              color: Colors.white,
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildResetButton(String label, Color color) {
    return Container(
      width: 120,
      height: 80,
      margin: const EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(
        child: Text(
          label,
          style: GoogleFonts.inter(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget _buildBigButton(String label, Color color, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 70,
        margin: const EdgeInsets.symmetric(vertical: 8),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: Text(
            label,
            style: GoogleFonts.inter(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
