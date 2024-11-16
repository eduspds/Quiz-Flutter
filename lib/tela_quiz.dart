import 'dart:async';
import 'package:flutter/material.dart';
import 'tela_resultado.dart';

class QuizPage extends StatefulWidget {
  final String difficulty;

  const QuizPage({super.key, required this.difficulty});

  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  final Map<String, List<Map<String, Object>>> _questionsByDifficulty = {
    'easy': [
      {
        'questionText': '1 - Qual é o nome do Homem de Ferro?',
        'imagePath': 'assets/homemdeferro_easy.png',
        'answers': [
          {'text': 'Bruce Wayne', 'score': 0},
          {'text': 'Tony Stark', 'score': 1},
          {'text': 'Steve Rogers', 'score': 0},
          {'text': 'Peter Parker', 'score': 0},
        ],
      },
      {
        'questionText': '2 - Qual é o nome do do Homem-Aranha?',
        'imagePath': 'assets/homemaranha_easy.png',
        'answers': [
          {'text': 'Tony Stark', 'score': 0},
          {'text': 'Bruce Banner', 'score': 0},
          {'text': 'Peter Parker', 'score': 1},
          {'text': 'Steve Rogers', 'score': 0},
        ],
      },
      {
        'questionText':
            '3 - Qual é o nome da cidade onde o Pantera Negra é rei?',
        'imagePath': 'assets/panteranegra_easy.png',
        'answers': [
          {'text': 'Wakanda', 'score': 1},
          {'text': 'Atlântida', 'score': 0},
          {'text': 'Gotham', 'score': 0},
          {'text': 'Metropolis', 'score': 0},
        ],
      },
      {
        'questionText':
            '4 - Quem é o vilão principal do filme "Os Vingadores: Guerra Infinita"?',
        'imagePath': 'assets/guerrainfinita_easy.png',
        'answers': [
          {'text': 'Ultron', 'score': 0},
          {'text': 'Loki', 'score': 0},
          {'text': 'Killmonger', 'score': 0},
          {'text': 'Thanos', 'score': 1},
        ],
      },
      {
        'questionText': '5 - Quem é o alter ego do Hulk?',
        'imagePath': 'assets/hulk_easy.png',
        'answers': [
          {'text': 'Tony Stark', 'score': 0},
          {'text': 'Stephen Strange', 'score': 0},
          {'text': 'Bruce Banner', 'score': 1},
          {'text': 'Peter Parker', 'score': 0},
        ],
      },
      {
        'questionText': '6 - Qual é o nome do Capitão América?',
        'imagePath': 'assets/capitaoamerica_easy.png',
        'answers': [
          {'text': 'Tony Stark', 'score': 0},
          {'text': 'Natasha Romanoff', 'score': 0},
          {'text': 'Sam Wilson', 'score': 0},
          {'text': 'Steve Rogers', 'score': 1},
        ],
      },
      {
        'questionText': '7 - Qual é o nome do martelo de Thor?',
        'imagePath': 'assets/martelo_easy.png',
        'answers': [
          {'text': 'Excalibur', 'score': 0},
          {'text': 'Mjolnir', 'score': 1},
          {'text': 'Gungnir', 'score': 0},
          {'text': 'Stormbreaker', 'score': 0},
        ],
      },
      {
        'questionText': '8 - Qual é o nome do Homem Formiga?',
        'imagePath': 'assets/homemformiga_easy.png',
        'answers': [
          {'text': 'Bruce Banner', 'score': 0},
          {'text': 'Tony Stark', 'score': 0},
          {'text': 'Scott Lang', 'score': 1},
          {'text': 'Clint Barton', 'score': 0},
        ],
      },
      {
        'questionText':
            '9 - Qual é o nome do novo personagem introduzido no filme "Shang-Chi"?',
        'imagePath': 'assets/shangchi_easy.png',
        'answers': [
          {'text': 'Shang-Chi', 'score': 1},
          {'text': 'Wong', 'score': 0},
          {'text': 'Mantis', 'score': 0},
          {'text': 'Vision', 'score': 0},
        ],
      },
      {
        'questionText':
            '10 - Quem é o vilão principal do filme "Capitão Marvel"?',
        'imagePath': 'assets/capitamarvel_easy.png',
        'answers': [
          {'text': 'Ultron', 'score': 0},
          {'text': 'Yon-Rogg', 'score': 1},
          {'text': 'Thanos', 'score': 0},
          {'text': 'Loki', 'score': 0},
        ],
      },
    ],
    'medium': [
      {
        'questionText': '1 - Quem é o Deus do trovão no universo Marvel?',
        'imagePath': 'assets/trovao_medium.png',
        'answers': [
          {'text': 'Loki', 'score': 0},
          {'text': 'Odin', 'score': 0},
          {'text': 'Thor', 'score': 1},
          {'text': 'Hela', 'score': 0},
        ],
      },
      {
        'questionText': '2 - Quem é o líder dos Guardiões da Galáxia?',
        'imagePath': 'assets/guardioes_medium.png',
        'answers': [
          {'text': 'Rocket Raccoon', 'score': 0},
          {'text': 'Peter Quill', 'score': 1},
          {'text': 'Drax', 'score': 0},
          {'text': 'Gamora', 'score': 0},
        ],
      },
      {
        'questionText': '3 - Qual é o nome da irmã de Natasha Romanoff?',
        'imagePath': 'assets/natasha_medium.png',
        'answers': [
          {'text': 'Yelena Belova', 'score': 1},
          {'text': 'Shuri', 'score': 0},
          {'text': 'Wanda Maximoff', 'score': 0},
          {'text': 'Peggy Carter', 'score': 0},
        ],
      },
      {
        'questionText': '4 - Qual é o alter ego de Stephen Strange?',
        'imagePath': 'assets/strange_medium.png',
        'answers': [
          {'text': 'Doutor Estranho', 'score': 1},
          {'text': 'Mestre dos Feitiços', 'score': 0},
          {'text': 'Magneto', 'score': 0},
          {'text': 'Loki', 'score': 0},
        ],
      },
      {
        'questionText':
            '5 - Qual foi o material utilizado para construir o escudo do Capitão América?',
        'imagePath': 'assets/escudo_medium.png',
        'answers': [
          {'text': 'Aço', 'score': 0},
          {'text': 'Vibranium', 'score': 1},
          {'text': 'Ferro', 'score': 0},
          {'text': 'Adamantium', 'score': 0},
        ],
      },
      {
        'questionText': '6 - Quem foi o responsável por criar o Ultron?',
        'imagePath': 'assets/ultron_medium.png',
        'answers': [
          {'text': 'Tony Stark', 'score': 1},
          {'text': 'Bruce Banner', 'score': 0},
          {'text': 'Thanos', 'score': 0},
          {'text': 'Nick Fury', 'score': 0},
        ],
      },
      {
        'questionText': '7 - Quem é a irmã de T’Challa?',
        'imagePath': 'assets/tchalla_medium.png',
        'answers': [
          {'text': 'Shuri', 'score': 1},
          {'text': 'Nakia', 'score': 0},
          {'text': 'Ramonda', 'score': 0},
          {'text': 'Okoye', 'score': 0},
        ],
      },
      {
        'questionText':
            '8 - Qual é o nome da joia que deu origem ao personagem Visão?',
        'imagePath': 'assets/joias_medium.png',
        'answers': [
          {'text': 'Joia da Alma', 'score': 0},
          {'text': 'Joia do Espaço', 'score': 0},
          {'text': 'Joia da Mente', 'score': 1},
          {'text': 'Joia da Realidade', 'score': 0},
        ],
      },
      {
        'questionText': '9 - Qual é o nome da irmã de Thor?',
        'imagePath': 'assets/thor_medium.png',
        'answers': [
          {'text': 'Hela', 'score': 1},
          {'text': 'Sif', 'score': 0},
          {'text': 'Freyja', 'score': 0},
          {'text': 'Valkyrie', 'score': 0},
        ],
      },
      {
        'questionText': '10 - Quem é o arqui-inimigo do Capitão América?',
        'imagePath': 'assets/capitao_medium.png',
        'answers': [
          {'text': 'Thanos', 'score': 0},
          {'text': 'Ultron', 'score': 0},
          {'text': 'Caveira Vermelha', 'score': 1},
          {'text': 'Loki', 'score': 0},
        ],
      },
    ],
    'hard': [
      {
        'questionText': '1 - Quem é o principal vilão da série "Loki"?',
        'imagePath': 'assets/loki_hard.png',
        'answers': [
          {'text': 'Kang', 'score': 1},
          {'text': 'Thanos', 'score': 0},
          {'text': 'Loki', 'score': 0},
          {'text': 'Sylvie', 'score': 0},
        ],
      },
      {
        'questionText':
            '2 - Qual é o nome do personagem interpretado por Oscar Isaac na série "Cavaleiro da Lua"?',
        'imagePath': 'assets/cavaleiro_hard.png',
        'answers': [
          {'text': 'Steven Grant', 'score': 0},
          {'text': 'Marc Spector', 'score': 1},
          {'text': 'Jake Lockley', 'score': 0},
          {'text': 'Clint Barton', 'score': 0},
        ],
      },
      {
        'questionText': '3 - O que a "Hex" representa em WandaVision?',
        'imagePath': 'assets/wandahex_hard.png',
        'answers': [
          {'text': 'Portal para o Multiverso', 'score': 0},
          {'text': 'Joia cósmica', 'score': 0},
          {'text': 'Portal para Wakanda', 'score': 0},
          {'text': 'Realidade alternativa', 'score': 1},
        ],
      },
      {
        'questionText': '4 - Qual é o nome do vilão em "Gavião Arqueiro"?',
        'imagePath': 'assets/gaviao_hard.png',
        'answers': [
          {'text': 'Ultron', 'score': 0},
          {'text': 'Thanos', 'score': 0},
          {'text': 'Kingpin', 'score': 1},
          {'text': 'Loki', 'score': 0},
        ],
      },
      {
        'questionText':
            '5 - Qual é o alter ego de William Kaplan em "Agatha: Coven of Chaos"?',
        'imagePath': 'assets/agatha_hard.png',
        'answers': [
          {'text': 'Billy Maximoff', 'score': 1},
          {'text': 'Wiccan', 'score': 0},
          {'text': 'Tommy Maximoff', 'score': 0},
          {'text': 'Speed', 'score': 0},
        ],
      },
      {
        'questionText':
            '6 - Em "Falcão e o Soldado Invernal", qual é o nome do vilão que assume a identidade do Capitão América?',
        'imagePath': 'assets/falcaoesoldado_hard.png',
        'answers': [
          {'text': 'John Walker', 'score': 1},
          {'text': 'Barão Zemo', 'score': 0},
          {'text': 'Helmut Zemo', 'score': 0},
          {'text': 'Bucky Barnes', 'score': 0},
        ],
      },
      {
        'questionText': '7 - Qual personagem do UCM não tem uma série própria?',
        'imagePath': 'assets/ucm_hard.png',
        'answers': [
          {'text': 'Wanda', 'score': 0},
          {'text': 'Groot', 'score': 0},
          {'text': 'Loki', 'score': 0},
          {'text': 'Tony Stark', 'score': 1},
        ],
      },
      {
        'questionText':
            '8 - Qual personagem adquiriu habilidades ao passar pela Hex em "WandaVision"?',
        'imagePath': 'assets/hex_hard.png',
        'answers': [
          {'text': 'Wanda Maximoff', 'score': 0},
          {'text': 'Monica Rambeau', 'score': 1},
          {'text': 'Agatha Harkness', 'score': 0},
          {'text': 'Vision', 'score': 0},
        ],
      },
      {
        'questionText':
            '9 - Qual é o nome da verdadeira bruxa verde em "Agatha: Coven of Chaos"?',
        'imagePath': 'assets/bruxa_hard.png',
        'answers': [
          {'text': 'Agatha Harkness', 'score': 0},
          {'text': 'Glinda', 'score': 0},
          {'text': 'Rio Vidal', 'score': 1},
          {'text': 'Agnes', 'score': 0},
        ],
      },
      {
        'questionText': '10 - Qual foi a primeira série do UCM a ser lançada?',
        'imagePath': 'assets/ucm_hard_final.png',
        'answers': [
          {'text': 'Agents of S.H.I.E.L.D.', 'score': 1},
          {'text': 'Loki', 'score': 0},
          {'text': 'WandaVision', 'score': 0},
          {'text': 'Falcão e o Soldado Invernal', 'score': 0},
        ],
      },
    ],
  };

  late List<Map<String, Object>> _questions;
  int _totalScore = 0;
  int _questionIndex = 0;
  int _timer = 10;
  late Timer _countdownTimer;

  void _startTimer() {
    _timer = 10;
    _countdownTimer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_timer > 0) {
        setState(() {
          _timer--;
        });
      } else {
        _countdownTimer.cancel();
        if (_questionIndex < _questions.length - 1) {
          _nextQuestion();
        } else {
          _finishQuiz();
        }
      }
    });
  }

  void _loadQuestions() {
    setState(() {
      _questions = _questionsByDifficulty[widget.difficulty] ?? [];
    });
  }

  void _answerQuestion(int score) {
    _countdownTimer.cancel();

    setState(() {
      _totalScore += score;

      Future.delayed(const Duration(seconds: 1), () {
        if (_questionIndex < _questions.length - 1) {
          _nextQuestion();
        } else {
          _finishQuiz();
        }
      });
    });
  }

  void _nextQuestion() {
    setState(() {
      _questionIndex++;
      _startTimer();
    });
  }

  void _finishQuiz() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ResultadoPage(totalScore: _totalScore),
      ),
    );
  }

  void _restartQuiz() {
    setState(() {
      _totalScore = 0;
      _questionIndex = 0;
    });
    _startTimer();
  }

  @override
  void initState() {
    super.initState();
    _loadQuestions();
    _startTimer();
  }

  @override
  void dispose() {
    _countdownTimer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Universo Marvel',
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            letterSpacing: 1.2,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 10,
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
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Stack(
              alignment: Alignment.center,
              children: [
                CircularProgressIndicator(
                  value: _timer / 10,
                  strokeWidth: 6,
                  valueColor: const AlwaysStoppedAnimation<Color>(Colors.white),
                ),
                Text(
                  '$_timer',
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              // Fundo com imagem
              ColorFiltered(
                colorFilter: ColorFilter.mode(
                  Colors.white.withOpacity(0.1),
                  BlendMode.modulate,
                ),
                child: Image.asset(
                  'assets/marvel_bg.png',
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.05,
                  vertical: 20,
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Imagem da questão
                      if (_questions[_questionIndex]['imagePath'] != null)
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20.0),
                          child: Image.asset(
                            _questions[_questionIndex]['imagePath'] as String,
                            width: MediaQuery.of(context).size.width * 0.8,
                            height: MediaQuery.of(context).size.height * 0.3,
                            fit: BoxFit.contain,
                          ),
                        ),
                      const SizedBox(height: 20),
                      // Texto da pergunta
                      AnimatedSwitcher(
                        duration: const Duration(milliseconds: 500),
                        transitionBuilder: (Widget child, Animation<double> animation) {
                          return FadeTransition(opacity: animation, child: child);
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0), // Adicionei o padding
                          key: ValueKey<int>(_questionIndex),
                          child: Text(
                            _questions[_questionIndex]['questionText'] as String,
                            style: const TextStyle(
                              fontSize: 22, // Ajustado para maior flexibilidade
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                            softWrap: true,
                          ),
                        ),
                      ),

                      const SizedBox(height: 20),
                      // Opções de resposta
                      Column(
                        children: (_questions[_questionIndex]['answers']
                                as List<Map<String, Object>>)
                            .map((answer) {
                          return Padding(
                            padding: EdgeInsets.symmetric(
                              vertical:
                                  MediaQuery.of(context).size.height * 0.01,
                            ),
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width * 0.9,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  foregroundColor: Colors.black,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    side: const BorderSide(
                                      color: Colors.black,
                                      width: 2,
                                    ),
                                  ),
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 15,
                                    horizontal: 10,
                                  ),
                                ),
                                onPressed: () =>
                                    _answerQuestion(answer['score'] as int),
                                child: Text(
                                  answer['text'] as String,
                                  style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
