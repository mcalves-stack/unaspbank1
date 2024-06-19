import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:unaspbank/pages/signup/register_completed.dart';

class MonthlyIncome extends StatefulWidget {
  const MonthlyIncome({super.key});

  @override
  MonthlyIncomeState createState() => MonthlyIncomeState();
}

class MonthlyIncomeState extends State<MonthlyIncome> {
  final _formKey = GlobalKey<FormState>();
  final _monthlyIncomeController = TextEditingController();
  final _familyIncomeController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _monthlyIncomeController.dispose();
    _familyIncomeController.dispose();
    super.dispose();
  }

  Future<void> _sendIncomeData() async {
    if (_formKey.currentState!.validate()) {
      final incomeData = {
        'monthlyIncome': double.parse(_monthlyIncomeController.text),
        'familyIncome': double.parse(_familyIncomeController.text),
      };

      print('Sending income data: $incomeData');

      final response = await http.post(
        Uri.parse('http://10.0.2.2:3333/income'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(incomeData),
      );

      print('Response status: ${response.statusCode}');
      print('Response body: ${response.body}');

      if (response.statusCode == 201) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const RegisterCompleted()),
        );
      } else if (response.statusCode == 409) {
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
              content: Text('Failed to send income data: ${response.body}'),
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
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.all(31.0),
                          child: SvgPicture.asset(
                            "assets/images/complete-sucess.svg",
                            width: 16,
                            height: 16,
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(
                          left: 25,
                          right: 23,
                          top: 10,
                        ),
                        child: Text(
                          "Por último mas não menos importante, nos informe sobre sua renda:",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 26,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      SizedBox(
                        width: 340,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(left: 4.5),
                              child: Text(
                                "Renda mensal",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontStyle: FontStyle.normal,
                                  letterSpacing: -0.408,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Poppins",
                                ),
                              ),
                            ),
                            const SizedBox(height: 8),
                            TextFormField(
                              controller: _monthlyIncomeController,
                              decoration: InputDecoration(
                                labelText: 'Sua renda',
                                contentPadding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: const BorderSide(
                                      color: Color(0xFFCBCBCB), width: 1),
                                ),
                                suffixIcon: const Icon(Icons.arrow_drop_down),
                              ),
                              keyboardType:
                                  const TextInputType.numberWithOptions(
                                      decimal: true),
                              inputFormatters: [
                                FilteringTextInputFormatter.allow(
                                    RegExp(r'^\d*\.?\d*')),
                              ],
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Por favor, insira sua renda mensal';
                                }
                                return null;
                              },
                            ),
                            const SizedBox(height: 34),
                            const Padding(
                              padding: EdgeInsets.only(left: 4.5),
                              child: Text(
                                "Renda familiar",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontStyle: FontStyle.normal,
                                  letterSpacing: -0.408,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Poppins",
                                ),
                              ),
                            ),
                            const SizedBox(height: 8),
                            TextFormField(
                              controller: _familyIncomeController,
                              decoration: InputDecoration(
                                labelText: 'Renda da sua família',
                                contentPadding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: const BorderSide(
                                    color: Color(0xFFCBCBCB),
                                    width: 1,
                                  ),
                                ),
                                suffixIcon: const Icon(Icons.arrow_drop_down),
                              ),
                              keyboardType:
                                  const TextInputType.numberWithOptions(
                                      decimal: true),
                              inputFormatters: [
                                FilteringTextInputFormatter.allow(
                                    RegExp(r'^\d*\.?\d*')),
                              ],
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Por favor, insira a renda familiar';
                                }
                                return null;
                              },
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 55),
                      SizedBox(
                        width: 173,
                        height: 54,
                        child: ElevatedButton(
                          onPressed: _sendIncomeData,
                          style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF070054),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10))),
                          child: const Text(
                            "Avançar",
                            style: TextStyle(color: Colors.white, fontSize: 22),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
