import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quiz!',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 255, 0, 0)),
        useMaterial3: true,
      ),
      home: const QuizScreen(title: 'Universo Marvel'),
    );
  }
}

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key, required this.title});

  final String title;

  @override
  QuizScreenState createState() => QuizScreenState();
}

class QuizScreenState extends State<QuizScreen> {
  int _questionIndex = 0;
  int _totalScore = 0;

  final List<Map<String, Object>> _questions = [
    {
      'questionText': 'Qual é o nome verdadeiro do Homem de Ferro?',
      'answers': [
        {'text': 'Bruce Wayne', 'score': 0},
        {'text': 'Tony Stark', 'score': 1},
        {'text': 'Steve Rogers', 'score': 0},
        {'text': 'Peter Parker', 'score': 0},
      ],
    },
    {
      'questionText': 'Quem é o Deus do trovão no universo Marvel?',
      'answers': [
        {'text': 'Loki', 'score': 0},
        {'text': 'Odin', 'score': 0},
        {'text': 'Thor', 'score': 1},
        {'text': 'Hela', 'score': 0},
      ],
    },
    {
      'questionText': 'Qual é o nome da cidade onde o Pantera Negra é rei?',
      'answers': [
        {'text': 'Wakanda', 'score': 1},
        {'text': 'Atlântida', 'score': 0},
        {'text': 'Gotham', 'score': 0},
        {'text': 'Metropolis', 'score': 0},
      ],
    },
    {
      'questionText': 'Quem é o arqui-inimigo do Capitão América?',
      'answers': [
        {'text': 'Thanos', 'score': 0},
        {'text': 'Ultron', 'score': 0},
        {'text': 'Caveira Vermelha', 'score': 1},
        {'text': 'Loki', 'score': 0},
      ],
    },
    {
      'questionText': 'Qual é o nome da joia que controla o tempo?',
      'answers': [
        {'text': 'Joia da Alma', 'score': 0},
        {'text': 'Joia do Espaço', 'score': 0},
        {'text': 'Joia do Tempo', 'score': 1},
        {'text': 'Joia da Realidade', 'score': 0},
      ],
    },
    {
      'questionText': 'Qual é o nome da irmã de Thor?',
      'answers': [
        {'text': 'Hela', 'score': 1},
        {'text': 'Sif', 'score': 0},
        {'text': 'Freyja', 'score': 0},
        {'text': 'Valkyrie', 'score': 0},
      ],
    },
    {
      'questionText':
          'Quem é o vilão principal do filme "Os Vingadores: Guerra Infinita"?',
      'answers': [
        {'text': 'Ultron', 'score': 0},
        {'text': 'Thanos', 'score': 1},
        {'text': 'Loki', 'score': 0},
        {'text': 'Killmonger', 'score': 0},
      ],
    },
    {
      'questionText':
          'Qual é o nome da super-heroína que tem poderes relacionados à realidade e foi criada por Wanda Maximoff?',
      'answers': [
        {'text': 'Capitã Marvel', 'score': 0},
        {'text': 'Agatha Harkness', 'score': 0},
        {'text': 'Feiticeira Escarlate', 'score': 1},
        {'text': 'Gamora', 'score': 0},
      ],
    },
    {
      'questionText': 'Quem é o alter ego do Hulk?',
      'answers': [
        {'text': 'Bruce Banner', 'score': 1},
        {'text': 'Tony Stark', 'score': 0},
        {'text': 'Stephen Strange', 'score': 0},
        {'text': 'Peter Parker', 'score': 0},
      ],
    },
    {
      'questionText': 'Qual super-heroína é conhecida como "A Vespa"?',
      'answers': [
        {'text': 'Natasha Romanoff', 'score': 0},
        {'text': 'Carol Danvers', 'score': 0},
        {'text': 'Wanda Maximoff', 'score': 0},
        {'text': 'Janet Van Dyne', 'score': 1},
      ],
    },
  ];

  void _answerQuestion(int score) {
    setState(() {
      _totalScore += score;
      _questionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(widget.title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ))),
        backgroundColor: const Color.fromARGB(255, 235, 90, 80),
      ),
      body: Center(
        child: _questionIndex < _questions.length
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    _questions[_questionIndex]['questionText'] as String,
                    style: const TextStyle(fontSize: 20),
                  ),
                  const SizedBox(height: 40),
                  ...((_questions[_questionIndex]['answers']
                          as List<Map<String, Object>>)
                      .map((answer) {
                    return SizedBox(
                      width: 200,
                      height: 50,
                      child: Container(
                        margin: const EdgeInsets.symmetric(vertical: 10.0),
                        child: ElevatedButton(
                          onPressed: () =>
                              _answerQuestion(answer['score'] as int),
                          child: 
                          Text(answer['text'] as String),
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(255, 253, 34, 34),
                            foregroundColor: const Color.fromARGB(
                                255, 255, 255, 255),
                          ),
                        ),
                      ),
                    );
                  })),
                ],
              )
            : Center(
                child: Text(
                  'Você terminou! Sua pontuação é: $_totalScore',
                  style: const TextStyle(fontSize: 24),
                ),
              ),
      ),
    );
  }
}
