import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:http/http.dart' as http;
import 'dart:io';

import 'package:unaspbank/pages/signup/send_doc_sucess.dart';

class DocumentVerify extends StatefulWidget {
  const DocumentVerify({super.key});

  @override
  _DocumentVerifyState createState() => _DocumentVerifyState();
}

class _DocumentVerifyState extends State<DocumentVerify> {
  File? _image;
  bool _isLoading = false;

  Future<void> _pickImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('Nenhuma imagem selecionada.');
      }
    });
  }

  Future<void> _takePhoto() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.camera);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('Nenhuma foto tirada.');
      }
    });
  }

  Future<void> _uploadImage() async {
    if (_image == null) return;

    setState(() {
      _isLoading = true;
    });

    try {
      final uri = Uri.parse('http://10.0.2.2:3333/upload-photo');
      final request = http.MultipartRequest('POST', uri)
        ..files.add(await http.MultipartFile.fromPath('file', _image!.path));

      final response = await request.send();
      final responseData = await http.Response.fromStream(response);

      setState(() {
        _isLoading = false;
      });

      if (responseData.statusCode == 200) {
        print('Documento enviado com sucesso.');
        print('Response data: ${responseData.body}');
        if (!mounted) return;
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const SendDocSucess()),
        );
      } else {
        print('Falha ao enviar documento.');
        print('Response status: ${responseData.statusCode}');
        print('Response body: ${responseData.body}');
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: const Text('Erro'),
              content:
                  const Text('Falha ao enviar documento. Tente novamente.'),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text('OK'),
                ),
              ],
            );
          },
        );
      }
    } catch (e) {
      setState(() {
        _isLoading = false;
      });
      print('Erro ao enviar documento: $e');
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('Erro'),
            content: const Text('Falha ao enviar documento. Tente novamente.'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('OK'),
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF070054),
              Color(0xFF070054),
            ],
          ),
        ),
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 25, 174, 0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    "assets/images/arrow-down.png",
                    width: 16,
                    height: 16,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(25),
                      child: Text(
                        "Agora, precisamos de uma foto do seu RG",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 26,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 10, left: 25, right: 25),
                      child: Text(
                        "É necessário que seja enviado uma foto do seu documento de identificação visível para prosseguir com o seu cadastro. Não se preocupe, seus dados serão mantidos em segurança e privados.",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                          letterSpacing: -0.408,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      width: 328,
                      height: 200,
                      decoration: BoxDecoration(
                        color: const Color(0xFFE5E5E5),
                        border: Border.all(
                          color: const Color(0xFF070054),
                          width: 3.0,
                        ),
                        borderRadius: BorderRadius.circular(32.0),
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            _image == null
                                ? Column(
                                    children: [
                                      IconButton(
                                        icon: const Icon(
                                          Icons.image,
                                          color: Color(0xFF9E9E9E),
                                          size: 40.0,
                                        ),
                                        onPressed: _pickImage,
                                      ),
                                      const Text(
                                        'Escolha o documento/img',
                                        style: TextStyle(
                                          color: Color(0xFF9E9E9E),
                                          fontSize: 16.0,
                                          fontFamily: 'Poppins',
                                          fontStyle: FontStyle.normal,
                                          letterSpacing: 0.2,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  )
                                : ClipRRect(
                                    borderRadius: BorderRadius.circular(29.0),
                                    child: Image.file(
                                      _image!,
                                      fit: BoxFit.cover,
                                      width: 328,
                                      height: 194,
                                    ),
                                  ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    const Text(
                      'Ou',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontStyle: FontStyle.normal,
                        letterSpacing: 0.2,
                      ),
                    ),
                    const SizedBox(height: 25),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          icon: const Icon(
                            Icons.camera_alt,
                            color: Color(0xFF070054),
                            size: 16,
                          ),
                          onPressed: _takePhoto,
                        ),
                        const SizedBox(width: 10),
                        const Text(
                          'Abra a sua câmera e tire uma foto sua',
                          style: TextStyle(
                            color: Color(0xFF070054),
                            fontSize: 16.0,
                            fontFamily: 'Poppins',
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w700,
                            height: 1.4,
                            letterSpacing: 0.2,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 50),
                    _isLoading // Mostrar indicador de progresso se estiver carregando
                        ? const CircularProgressIndicator()
                        : ElevatedButton(
                            onPressed: _uploadImage,
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF070054),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 50, vertical: 15),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                            child: const Text(
                              'Continuar',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                fontStyle: FontStyle.normal,
                                letterSpacing: 0.2,
                              ),
                            ),
                          ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
