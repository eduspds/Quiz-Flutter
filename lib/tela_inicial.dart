import 'package:aula2510/tela_quiz.dart';
import 'package:flutter/material.dart';

class TelaInicial extends StatelessWidget {
  const TelaInicial({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold( // widget de estilização
      appBar: AppBar( //chamou o app bar
        title: const Text(
          'Universo Marvel',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.redAccent,
                Colors.deepOrange,
                Colors.black,
              ],
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'lib/assets/marvel.jpg',
              width: screenWidth * 0.6, // ajustando a largura da imagem
              height: screenHeight * 0.3, // ajustando a altura da imagem
              fit: BoxFit.contain, // ajusta a imagem dentro do espaço
            ),
            const SizedBox(height: 20),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Bem vindo ao Quiz do Universo Marvel!',
                  style: TextStyle(
                    fontSize: screenWidth * 0.06, // tamanho do texto ajustado
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: screenWidth * 0.5, // largura do botão responsiva
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const QuizPage()),
                      );
                    },
                    child: const Text('Iniciar Quiz'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
