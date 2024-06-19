import 'package:flutter/material.dart';

class UploadScreen extends StatelessWidget {
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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Perfeito! Agora precisamos que você envie um PDF da sua nota do enem para que possamos mandar a sua solicitação ao nosso time.',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 16),
            Icon(Icons.picture_as_pdf, size: 100, color: Colors.orange),
            SizedBox(height: 16),
            Text(
              'Só aceitamos arquivos no formato .PDF',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            Spacer(),
            ElevatedButton.icon(
              onPressed: () {
                // Lógica para adicionar PDF
              },
              icon: Icon(Icons.upload_file),
              label: Text('Adicionar PDF'),
            ),
            SizedBox(height: 16),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/confirmation');
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
