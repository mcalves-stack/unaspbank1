import 'package:flutter/material.dart';

class QuestionsScreen2 extends StatelessWidget {
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
            Text('Seu endereço é esse?'),
            TextField(
              decoration: InputDecoration(
                hintText: 'Rua dos navegantes, Capitão Redondo...',
                suffixIcon: Icon(Icons.edit),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            Text('Selecione o Campus Unasp Desejado'),
            DropdownButtonFormField<String>(
              items: ['Campus São Paulo']
                  .map((String value) => DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      ))
                  .toList(),
              onChanged: (_) {},
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            Text('Selecione o Curso Desejado'),
            DropdownButtonFormField<String>(
              items: ['Análise e Desenvolvimento de Sistemas']
                  .map((String value) => DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      ))
                  .toList(),
              onChanged: (_) {},
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            Spacer(),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/upload');
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
