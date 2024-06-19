import 'package:flutter/material.dart';

class QuestionsScreen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bolsa de Estudos'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Para saber se você tem direito a bolsa, precisamos que você responda algumas perguntas, vamos lá?',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text('Qual é a sua renda familiar mensal?'),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                prefixText: 'R\$',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            Text('Quantas pessoas moram com você?'),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            Text('Qual é a sua renda mensal?'),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                prefixText: 'R\$',
                border: OutlineInputBorder(),
              ),
            ),
            Spacer(),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/questions2');
                },
                child: Text('Avançar'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
