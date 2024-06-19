import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'image_verify.dart';

class CreateUser extends StatefulWidget {
  const CreateUser({super.key});

  @override
  _CreateUserState createState() => _CreateUserState();
}

class _CreateUserState extends State<CreateUser> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _raController = TextEditingController();
  final TextEditingController _cpfController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _dateOfBirthController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _clearForm();
  }

  void _clearForm() {
    _raController.clear();
    _cpfController.clear();
    _phoneNumberController.clear();
    _emailController.clear();
    _passwordController.clear();
    _dateOfBirthController.clear();
  }

  Future<void> _createUser() async {
    if (_formKey.currentState!.validate()) {
      final userData = {
        'ra': int.parse(_raController.text),
        'cpf': _cpfController.text,
        'phoneNumber': _phoneNumberController.text,
        'email': _emailController.text,
        'password': _passwordController.text,
        'dateOfBirth': _dateOfBirthController.text,
      };

      print('Sending user data: $userData');

      final response = await http.post(
        Uri.parse('http://10.0.2.2:3333/user'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(userData),
      );

      print('Response status: ${response.statusCode}');
      print('Response body: ${response.body}');

      if (response.statusCode == 201) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const ImageVerify()),
        );
      } else if (response.statusCode == 409) {
        // Handle email already in use
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: const Text('Error'),
              content: const Text('E-mail já está em uso.'),
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
      } else {
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: const Text('Error'),
              content: Text('Failed to create user: ${response.body}'),
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
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF070054),
              Color(0xFF070054),
            ],
          ),
        ),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                    const SizedBox(
                      width: 12,
                    ),
                    const Text(
                      "Cadastre-se",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.normal,
                      ),
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
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(top: 25.0, right: 175),
                            child: Text(
                              "Seja Bem-vindo",
                              style: TextStyle(
                                color: Color(0xFF070054),
                                fontSize: 24,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 3, right: 225),
                            child: Text(
                              "Crie a sua conta abaixo",
                              style: TextStyle(
                                color: Color(0xFF343434),
                                fontSize: 12,
                                fontFamily: "Poppins",
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          _buildTextField('RA/E-mail', _raController),
                          _buildTextField('CPF', _cpfController),
                          _buildTextField('+000 | Número de telefone',
                              _phoneNumberController),
                          _buildTextField('E-mail', _emailController),
                          _buildTextField('Senha', _passwordController,
                              obscureText: true),
                          _buildTextField(
                              'Data de Nascimento', _dateOfBirthController),
                          const SizedBox(height: 25),
                          SizedBox(
                            width: 173,
                            height: 54,
                            child: ElevatedButton(
                              onPressed: _createUser,
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFF070054),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              child: const Text(
                                "Continuar",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(String labelText, TextEditingController controller,
      {bool obscureText = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: SizedBox(
        width: 327, // Definindo a largura desejada
        height: 44, // Definindo a altura desejada
        child: TextField(
          controller: controller,
          decoration: InputDecoration(
            hintText: labelText,
            labelText: labelText,
            contentPadding: const EdgeInsets.symmetric(horizontal: 20),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(
                color: Color(0xFFCBCBCB),
                width: 1,
              ),
            ),
          ),
          obscureText: obscureText,
        ),
      ),
    );
  }
}
