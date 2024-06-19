import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bolsa de Estudo'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Bem vindo à bolsa de estudo Unasp Bank',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Caro estudante, Se você está em busca de oportunidades para tornar realidade o seu sonho de estudar, nós, do Unasp Bank, estamos aqui para ajudar. Reconhecemos a importância do acesso à educação de qualidade e entendemos que o custo muitas vezes pode ser um obstáculo. É por isso que oferecemos uma variedade de bolsas de estudos para estudantes talentosos e dedicados como você. Nossa missão é apoiar o seu potencial acadêmico, permitindo que você alcance seus objetivos educacionais sem se preocupar com barreiras financeiras. Com as nossas bolsas de estudos, você poderá ficar internado nos campus selecionados, sem se preocupar com os custos associados à sua formação. Entendemos que cada estudante tem suas próprias necessidades e aspirações, e é por isso que oferecemos diferentes tipos de bolsas de estudos, adaptadas para atender uma variedade de situações. Seja você um estudante exemplar ou alguém que precisa de suporte adicional, temos a bolsa certa para você. Nossa equipe está aqui para orientá-lo e ajudá-lo em cada etapa do processo, garantindo que você tenha todas as informações necessárias para fazer a escolha certa.',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple, // Background color
                padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                textStyle: TextStyle(fontSize: 16),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/questions1');
              },
              child: Text('Avançar'),
            ),
          ),
        ],
      ),
    );
  }
}
