import 'package:flutter/material.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  final List<Map<String, Object>> _questions = [
    {
      'questionText': '1 - Qual é o nome verdadeiro do Homem de Ferro?',
      'answers': [
        {'text': 'Bruce Wayne', 'score': 0},
        {'text': 'Tony Stark', 'score': 1},
        {'text': 'Steve Rogers', 'score': 0},
        {'text': 'Peter Parker', 'score': 0},
      ],
    },
    {
      'questionText': '2 - Quem é o Deus do trovão no universo Marvel?',
      'answers': [
        {'text': 'Loki', 'score': 0},
        {'text': 'Odin', 'score': 0},
        {'text': 'Thor', 'score': 1},
        {'text': 'Hela', 'score': 0},
      ],
    },
    {
      'questionText': '3 - Qual é o nome da cidade onde o Pantera Negra é rei?',
      'answers': [
        {'text': 'Wakanda', 'score': 1},
        {'text': 'Atlântida', 'score': 0},
        {'text': 'Gotham', 'score': 0},
        {'text': 'Metropolis', 'score': 0},
      ],
    },
    {
      'questionText': '4 - Quem é o arqui-inimigo do Capitão América?',
      'answers': [
        {'text': 'Thanos', 'score': 0},
        {'text': 'Ultron', 'score': 0},
        {'text': 'Caveira Vermelha', 'score': 1},
        {'text': 'Loki', 'score': 0},
      ],
    },
    {
      'questionText':
          '5 - Qual é o nome da joia que deu origem ao personagem Visão?',
      'answers': [
        {'text': 'Joia da Alma', 'score': 0},
        {'text': 'Joia do Espaço', 'score': 0},
        {'text': 'Joia da Mente', 'score': 1},
        {'text': 'Joia da Realidade', 'score': 0},
      ],
    },
    {
      'questionText': '6 - Qual é o nome da irmã de Thor?',
      'answers': [
        {'text': 'Hela', 'score': 1},
        {'text': 'Sif', 'score': 0},
        {'text': 'Freyja', 'score': 0},
        {'text': 'Valkyrie', 'score': 0},
      ],
    },
    {
      'questionText':
          '7 - Quem é o vilão principal do filme "Os Vingadores: Guerra Infinita"?',
      'answers': [
        {'text': 'Ultron', 'score': 0},
        {'text': 'Thanos', 'score': 1},
        {'text': 'Loki', 'score': 0},
        {'text': 'Killmonger', 'score': 0},
      ],
    },
    {
      'questionText':
          '8 - Qual é o nome da super-heroína que tem poderes relacionados à realidade e foi criada por Wanda Maximoff?',
      'answers': [
        {'text': 'Capitã Marvel', 'score': 0},
        {'text': 'Agatha Harkness', 'score': 0},
        {'text': 'Feiticeira Escarlate', 'score': 1},
        {'text': 'Gamora', 'score': 0},
      ],
    },
    {
      'questionText': '9 - Quem é o alter ego do Hulk?',
      'answers': [
        {'text': 'Bruce Banner', 'score': 1},
        {'text': 'Tony Stark', 'score': 0},
        {'text': 'Stephen Strange', 'score': 0},
        {'text': 'Peter Parker', 'score': 0},
      ],
    },
    {
      'questionText': '10 - Qual super-heroína é conhecida como "A Vespa"?',
      'answers': [
        {'text': 'Natasha Romanoff', 'score': 0},
        {'text': 'Carol Danvers', 'score': 0},
        {'text': 'Wanda Maximoff', 'score': 0},
        {'text': 'Janet Van Dyne', 'score': 1},
      ],
    },
  ];

  int _totalScore = 0;
  int _questionIndex = 0;

  void _answerQuestion(int score) {
    if (!_quizFinished) {
      setState(() {
        _totalScore += score;
        _questionIndex++;
      });
    }
  }

  bool get _quizFinished => _questionIndex >= _questions.length;

  void _restartQuiz() {
    setState(() {
      _totalScore = 0;
      _questionIndex = 0;
    });
  }

  @override // construção da tela
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
              width: 500,
              height: 500,
            ),
            const SizedBox(height: 20),
            _quizFinished
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Você terminou! Sua pontuação é: $_totalScore',
                        style: const TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 20),
                      ElevatedButton(
                        // botão de reiniciar o quiz
                        onPressed: _restartQuiz,
                        child: const Text('Reiniciar Quiz'),
                      ),
                    ],
                  )
                : Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Text(
                          _questions[_questionIndex]['questionText'] as String,
                          style: const TextStyle(fontSize: 20),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(height: 40),
                      ...(_questions[_questionIndex]['answers']
                              as List<Map<String, Object>>)
                          .map((answer) {
                        return Container(
                          width: 200,
                          margin: const EdgeInsets.symmetric(vertical: 8.0),
                          child: ElevatedButton(
                            onPressed: () =>
                                _answerQuestion(answer['score'] as int),
                            child: Text(answer['text'] as String),
                          ),
                        );
                      }),
                    ],
                  ),
          ],
        ),
      ),
    );
  }
}
