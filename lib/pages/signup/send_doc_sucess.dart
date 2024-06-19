import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SendDocSucess extends StatefulWidget {
  const SendDocSucess({super.key});

  @override
  SendDocSucessState createState() => SendDocSucessState();
}

class SendDocSucessState extends State<SendDocSucess> {
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
        child: Column(children: <Widget>[
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
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: SvgPicture.asset(
                        "assets/images/document-verify.svg",
                        width: 16,
                        height: 16,
                      ),
                    ),
                  ),
                  const SizedBox(height: 73),
                  SvgPicture.asset(
                    "assets/images/sucess-doc.svg",
                    width: 324,
                    height: 234,
                  ),
                  const SizedBox(height: 65),
                  const Text('Documento enviado!',
                      style: TextStyle(
                        color: Color(0xFF070054),
                        fontSize: 16.0,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        height: 1,
                      ),
                      textAlign: TextAlign.center),
                  const SizedBox(height: 11),
                  const Text(
                    'Pode prosseguir para a última etapa!',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14.0,
                      fontFamily: 'Poppins',
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 46),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/monthlyIncome');
                    },
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
        ]),
      ),
    );
  }
}
