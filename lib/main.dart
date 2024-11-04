import 'dart:io';

import 'package:flutter/material.dart';
import 'dart:math';

import 'package:flutter/services.dart';

void main() {
  runApp(QuizApp());
}

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ETEC QUIZ',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: QuizHome(),
    );
  }
}

class QuizHome extends StatefulWidget {
  const QuizHome({super.key});

  @override
  _QuizHomeState createState() => _QuizHomeState();
}

class _QuizHomeState extends State<QuizHome> {
  List<Question> questions = [
    // Questões de Matemática
    Question('Qual é o valor de 7 × 8?', ['54', '56', '58', '60'], 1),
    Question('Qual o próximo número na sequência 3, 6, 12, 24...?',
        ['30', '36', '48', '60'], 2),
    Question(
        'Em um triângulo retângulo, o quadrado da hipotenusa é igual:',
        [
          'Ao quadrado dos catetos',
          'À soma dos quadrados dos catetos',
          'À diferença dos quadrados dos catetos',
          'Ao quadrado do maior cateto'
        ],
        1),
    Question('O dobro de 7 é:', ['13', '14', '21', '28'], 1),
    Question('Qual é a raiz quadrada de 81?', ['8', '9', '10', '11'], 1),
    Question('Qual é o perímetro de um quadrado com lado de 5 cm?',
        ['10 cm', '15 cm', '20 cm', '25 cm'], 2),
    Question('Quantos centímetros são 1,5 metros?',
        ['10 cm', '100 cm', '150 cm', '200 cm'], 2),
    Question('Qual é a porcentagem de 20 em relação a 80?',
        ['20%', '25%', '50%', '75%'], 1),
    Question(
        'Se um objeto custa R 100,00 e tem 10% de desconto, qual será o novo valor?',
        ['80,00', '85,00', '90,00', '95,00'],
        2),
    Question(
        'Se uma pizza é dividida em 8 fatias e você come 3, qual fração representa o que você comeu?',
        ['1/2', '3/4', '3/8', '5/8'],
        2),
    Question('Qual é o valor de 7 × 8?', ['54', '56', '58', '60'], 1),
    Question('Qual o próximo número na sequência 3, 6, 12, 24...?',
        ['30', '36', '48', '60'], 2),
    Question(
        'Em um triângulo retângulo, o quadrado da hipotenusa é igual:',
        [
          'Ao quadrado dos catetos',
          'À soma dos quadrados dos catetos',
          'À diferença dos quadrados dos catetos',
          'Ao quadrado do maior cateto'
        ],
        1),
    Question('O dobro de 7 é:', ['13', '14', '21', '28'], 1),
    Question('Qual é a raiz quadrada de 81?', ['8', '9', '10', '11'], 1),
    Question('Qual é o perímetro de um quadrado com lado de 5 cm?',
        ['10 cm', '15 cm', '20 cm', '25 cm'], 2),
    Question('Quantos centímetros são 1,5 metros?',
        ['10 cm', '100 cm', '150 cm', '200 cm'], 2),
    Question('Qual é a porcentagem de 20 em relação a 80?',
        ['20%', '25%', '50%', '75%'], 1),
    Question(
        'Se um objeto custa 100,00 e tem 10% de desconto, qual será o novo valor?',
        ['80,00', '85,00', '90,00', '95,00'],
        2),
    Question(
        'Se uma pizza é dividida em 8 fatias e você come 3, qual fração representa o que você comeu?',
        ['1/2', '3/4', '3/8', '5/8'],
        2),

    // Adicionando mais questões de matemática
    Question('Qual é o resultado de 9 × 9?', ['72', '81', '90', '99'], 1),
    Question('Qual é 15% de 200?', ['25', '30', '35', '40'], 1),
    Question('Quanto é 25 × 4?', ['100', '110', '90', '80'], 0),
    Question(
        'Se um triângulo tem lados de 3 cm, 4 cm e 5 cm, ele é um triângulo:',
        ['Isósceles', 'Equilátero', 'Retângulo', 'Escaleno'],
        2),
    Question('Qual é a soma dos ângulos internos de um triângulo?',
        ['90°', '180°', '270°', '360°'], 1),
    Question(
        'Quantos graus tem um ângulo reto?', ['45°', '90°', '180°', '360°'], 1),
    Question(
        'Se uma caixa tem 2 cm de altura, 5 cm de largura e 10 cm de comprimento, qual é seu volume?',
        ['100 cm³', '50 cm³', '20 cm³', '10 cm³'],
        1),
    Question('Qual é o valor de π (pi)?', ['3.14', '3.15', '3.16', '3.17'], 0),
    Question('Qual é o próximo número da sequência 2, 4, 8, 16?',
        ['20', '24', '32', '40'], 2),
    Question('Se você tem 3 maçãs e compra mais 2, quantas maçãs você tem?',
        ['4', '5', '6', '7'], 1),

    // Adicione mais perguntas conforme necessário
    // Questões de Português
    Question(
        'Qual é a função da interjeição em uma frase?',
        [
          'Indicar uma ação',
          'Expressar emoção',
          'Conectar orações',
          'Definir substantivos'
        ],
        1),
    Question(
        'Qual é a definição de um verbo transitivo?',
        [
          'Um verbo que não precisa de complemento',
          'Um verbo que exige um objeto direto ou indireto',
          'Um verbo que indica estado',
          'Um verbo que expressa ação'
        ],
        1),
    Question(
        'Qual a função do sujeito em uma frase?',
        [
          'Indicar a ação',
          'Realizar a ação',
          'Receber a ação',
          'Conectar frases'
        ],
        1),
    Question(
        'O que é uma oração subordinada?',
        [
          'Uma oração que pode ficar sozinha',
          'Uma oração que depende de outra para ter sentido',
          'Uma oração sem verbo',
          'Uma oração composta por várias partes'
        ],
        1),
    Question(
        'Qual é a função do advérbio?',
        [
          'Modificar um substantivo',
          'Modificar um verbo, adjetivo ou outro advérbio',
          'Indicar tempo',
          'Conectar orações'
        ],
        1),
    Question(
        'O que caracteriza uma crônica?',
        [
          'Um relato de eventos históricos',
          'Uma narrativa com um ponto de vista pessoal',
          'Uma poesia rimada',
          'Um texto informativo'
        ],
        1),
    Question(
        'Qual é o gênero textual que tem como principal característica a objetividade?',
        ['Narrativa', 'Dissertação', 'Descrição', 'Conto'],
        1),
    Question(
        'O que é metáfora?',
        [
          'Uma comparação direta',
          'Uma figura de linguagem que estabelece relação de semelhança',
          'Um exagero',
          'Uma afirmação literal'
        ],
        1),
    Question(
        'Qual a função de um artigo definido?',
        [
          'Definir um substantivo específico',
          'Indicar um verbo',
          'Conectar orações',
          'Descrever um adjetivo'
        ],
        1),
    Question(
        'O que é uma sinopse?',
        [
          'Um resumo de uma obra',
          'Uma análise crítica',
          'Uma descrição detalhada',
          'Uma resenha'
        ],
        1),
// Questões de História
    Question(
        'Quem foi o primeiro presidente do Brasil?',
        [
          'Getúlio Vargas',
          'Deodoro da Fonseca',
          'Juscelino Kubitschek',
          'Tancredo Neves'
        ],
        1),
    Question(
        'O que foi a Inconfidência Mineira?',
        [
          'Um movimento de independência',
          'Uma revolução industrial',
          'Um golpe militar',
          'Uma guerra civil'
        ],
        0),
    Question(
        'Qual a principal causa da Revolução Industrial?',
        [
          'A descoberta da eletricidade',
          'A necessidade de produção em massa',
          'A colonização da América',
          'A guerra entre nações'
        ],
        1),
    Question(
        'Quem foi Dom Pedro I?',
        [
          'O primeiro imperador do Brasil',
          'Um presidente da República',
          'Um líder militar',
          'Um cientista'
        ],
        0),
    Question(
        'O que foi a escravidão no Brasil?',
        [
          'Um período de liberdade',
          'Uma prática de exploração e trabalho forçado',
          'Uma guerra civil',
          'Um movimento de independência'
        ],
        1),
    Question(
        'Qual foi a importância da Proclamação da República?',
        [
          'Fim do império',
          'Início da colonização',
          'Estabelecimento de uma monarquia',
          'Criação de um novo sistema econômico'
        ],
        0),
    Question(
        'O que foi a Guerra Fria?',
        [
          'Um conflito armado entre nações',
          'Uma disputa ideológica entre EUA e URSS',
          'Uma guerra civil',
          'Uma revolução industrial'
        ],
        1),
    Question('Quando ocorreu a Independência do Brasil?',
        ['1822', '1889', '1500', '1964'], 0),
    Question(
        'Qual foi a principal consequência da Segunda Guerra Mundial?',
        [
          'O crescimento econômico mundial',
          'A divisão do mundo em blocos',
          'A descolonização da África',
          'A criação da ONU'
        ],
        1),
    Question(
        'O que foi a Ditadura Militar no Brasil?',
        [
          'Um período de democracia',
          'Um regime autoritário',
          'Uma guerra civil',
          'Um movimento popular'
        ],
        1),
// Questões de Geografia Física
    Question('Qual é o maior continente do mundo?',
        ['África', 'Ásia', 'América', 'Europa'], 1),
    Question(
        'O que é um bioma?',
        [
          'Uma zona climática',
          'Um tipo de solo',
          'Um ambiente com características semelhantes',
          'Uma cidade'
        ],
        2),
    Question(
        'Qual é o principal rio do Brasil?',
        ['Rio São Francisco', 'Rio Amazonas', 'Rio Paraná', 'Rio Tocantins'],
        1),
    Question(
        'O que caracteriza o clima tropical?',
        [
          'Baixa umidade e temperaturas frias',
          'Temperaturas altas e chuvas sazonais',
          'Temperaturas amenas e chuvas constantes',
          'Frio intenso e neve'
        ],
        1),
    Question('Qual é a principal forma de relevo do Brasil?',
        ['Planalto', 'Montanha', 'Vale', 'Depressão'], 0),
    Question(
        'O que é uma bacia hidrográfica?',
        [
          'Uma área com várias montanhas',
          'Um local onde a água se acumula',
          'Uma área drenada por um rio e seus afluentes',
          'Um lago'
        ],
        2),
    Question(
        'Qual é o maior deserto do mundo?',
        [
          'Deserto do Saara',
          'Deserto da Arábia',
          'Deserto de Gobi',
          'Deserto da Antártida'
        ],
        3),
    Question(
        'O que é uma falha geológica?',
        [
          'Um tipo de solo',
          'Uma ruptura na crosta terrestre',
          'Uma forma de relevo',
          'Um tipo de rocha'
        ],
        1),
    Question('Qual é o principal ecossistema marinho?',
        ['Floresta Amazônica', 'Corais', 'Savanas', 'Desertos'], 1),
    Question(
        'O que caracteriza o clima temperado?',
        [
          'Verões quentes e invernos frios',
          'Altas temperaturas durante todo o ano',
          'Baixas temperaturas e muita neve',
          'Chuvas constantes'
        ],
        0),
// Questões de Química
    Question(
        'O que é um átomo?',
        [
          'A menor unidade de um elemento químico',
          'Uma molécula composta',
          'Um tipo de elemento',
          'Uma ligação química'
        ],
        0),
    Question('Qual é a fórmula da água?', ['H2O', 'O2', 'CO2', 'NaCl'], 0),
    Question(
        'O que caracteriza uma reação química?',
        [
          'Mudança de estado físico',
          'Mudança na composição química',
          'Mudança de temperatura',
          'Mudança de cor'
        ],
        1),
    Question('Qual é o pH da água?', ['7', '0', '14', '10'], 0),
    Question(
        'O que é uma ligação iônica?',
        [
          'Atração entre moléculas',
          'Compartilhamento de elétrons',
          'Transferência de elétrons',
          'Uma força física'
        ],
        2),
    Question(
        'Qual é a tabela que organiza os elementos químicos?',
        [
          'Tabela de Compósitos',
          'Tabela Periódica',
          'Tabela de Equações',
          'Tabela de Reações'
        ],
        1),
    Question(
        'O que são ácidos?',
        [
          'Substâncias com pH acima de 7',
          'Substâncias com pH abaixo de 7',
          'Substâncias neutras',
          'Substâncias voláteis'
        ],
        1),
    Question(
        'Qual é a principal função dos catalisadores?',
        [
          'Aumentar a temperatura',
          'Acelerar reações químicas',
          'Diminuir a pressão',
          'Reduzir o pH'
        ],
        1),
    Question(
        'O que é um solvente?',
        [
          'Uma substância que não se dissolve',
          'Uma substância que dissolve outra',
          'Uma reação química',
          'Um tipo de mistura'
        ],
        1),
    Question('Qual é o elemento químico que é um gás nobre?',
        ['Oxigênio', 'Nitrogênio', 'Hélio', 'Carbono'], 2),
  ];

  List<Question> shuffledQuestions = [];
  int questionIndex = 0;
  List<bool?> userAnswers = [];
  bool isAnswerChecked = false;

  @override
  void initState() {
    super.initState();
    shuffledQuestions = List.from(questions);
    shuffledQuestions.shuffle(Random());
  }

  void answerQuestion(int userChoice) {
    setState(() {
      userAnswers.add(
          userChoice == shuffledQuestions[questionIndex].correctAnswerIndex);
      isAnswerChecked = true;
    });
  }

  void exitQuiz() {
    SystemNavigator.pop();
  }

  void goToNextQuestion() {
    setState(() {
      questionIndex++;
      isAnswerChecked = false;
    });
  }

  void restartQuiz() {
    setState(() {
      questionIndex = 0;
      userAnswers = [];
      isAnswerChecked = false;
      shuffledQuestions.shuffle(Random());
    });
  }

  @override
  Widget build(BuildContext context) {
    if (questionIndex < shuffledQuestions.length) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Quiz App'),
          backgroundColor: const Color.fromARGB(255, 239, 4, 4),
          titleTextStyle: const TextStyle(fontSize: 30),
          actions: [
            IconButton(
              onPressed: restartQuiz,
              icon: const Icon(Icons.replay),
              tooltip: 'Reiniciar quiz',
            ),
            IconButton(
              onPressed: exitQuiz,
              icon: const Icon(Icons.exit_to_app),
            )

            //IconButton(
            //  icon: Icon(Icons.replay),
            //  onPressed: restartQuiz,
            //  tooltip: 'Reiniciar Quiz',
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  shuffledQuestions[questionIndex].questionText,
                  style: const TextStyle(
                      fontSize: 28, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 30),
                ...(shuffledQuestions[questionIndex].options.map((option) {
                  int index =
                      shuffledQuestions[questionIndex].options.indexOf(option);
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        textStyle: const TextStyle(fontSize: 25),
                        //colors: Colors.blueAccent,
                      ),
                      onPressed: () {
                        answerQuestion(index);
                        if (!isAnswerChecked) {
                          return; // Impede ações adicionais até a verificação
                        }
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: Text(userAnswers.last == false
                                ? 'Resposta Errada'
                                : 'Resposta Correta'),
                            content: Text(
                              style: const TextStyle(fontSize: 23),
                              userAnswers.last == false
                                  ? 'A resposta correta é: ${shuffledQuestions[questionIndex].options[shuffledQuestions[questionIndex].correctAnswerIndex]}\nTente entender porque você errou.'
                                  : 'Boa! Você acertou!',
                            ),
                            actions: [
                              TextButton(
                                child: const Text('Próxima'),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                  goToNextQuestion();
                                },
                              ),
                            ],
                          ),
                        );
                      },
                      child: Text(option),
                    ),
                  );
                })),
              ],
            ),
          ),
        ),
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Resultados'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Você completou o quiz!',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: restartQuiz,
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  textStyle: const TextStyle(fontSize: 20),
                  //primary: Colors.blueAccent,
                ),
                child: Text('Reiniciar Quiz'),
              ),
            ],
          ),
        ),
      );
    }
  }
}

class Question {
  final String questionText;
  final List<String> options;
  final int correctAnswerIndex;

  Question(this.questionText, this.options, this.correctAnswerIndex);
}
