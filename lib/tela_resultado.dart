import 'package:flutter/material.dart';
import 'tela_inicial.dart';

class ResultadoPage extends StatelessWidget {
  final int totalScore;

  const ResultadoPage({super.key, required this.totalScore});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    // Lógica para determinar a mensagem com base na pontuação
    String resultMessage = '';
    if (totalScore <= 4) {
      resultMessage = 'Você realmente assistiu algum filme da Marvel?!';
    } else if (totalScore <= 7) {
      resultMessage = 'Acho melhor migrar para a DC mesmo...';
    } else {
      resultMessage = 'Parabéns, você já pode ser um Vingador!';
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Resultado',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent, // Deixa o fundo da AppBar transparente
        elevation: 10, // Adiciona sombra para dar profundidade
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.redAccent.withOpacity(0.8),
                Colors.deepOrange.withOpacity(0.9),
                Colors.black.withOpacity(0.7),
              ],
            ),
          ),
        ),
      ),
      body: Container(
        width: screenWidth,
        height: screenHeight,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: const AssetImage('assets/marvel_bg.png'), 
            fit: BoxFit.cover, 
            colorFilter: ColorFilter.mode(
              Colors.white.withOpacity(0.1),
              BlendMode.modulate,
            ),
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, 
            crossAxisAlignment: CrossAxisAlignment.center,  
            children: [
              const Text(
                'Você terminou o quiz!',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,  
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'Sua pontuação é: $totalScore',
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,  
                ),
              ),
              const SizedBox(height: 20),
              Text(
                resultMessage,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,  
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: screenWidth * 0.5,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,  
                    foregroundColor: Colors.black,  
                    side: const BorderSide(color: Colors.black, width: 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => const TelaInicial()),
                      (route) => false,
                    );
                  },
                  child: const Text('Tela Inicial'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
