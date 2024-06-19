import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PasswordCode extends StatefulWidget {
  const PasswordCode({super.key});

  @override
  PasswordCodeState createState() => PasswordCodeState();
}

class PasswordCodeState extends State<PasswordCode> {
  final TextEditingController _codeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 60.0,
            left: 10.0,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset(
                  "assets/images/arrow_backsvg.svg",
                  width: 16,
                  height: 16,
                ),
                const SizedBox(width: 10),
                const Text(
                  'Redefinir a senha',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Digite o código',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontWeight: FontWeight.w500,
                          fontFamily: "Poppins",
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          SizedBox(
                            width: 231.688,
                            height: 36.278,
                            child: TextField(
                              controller: _codeController,
                              decoration: const InputDecoration(
                                hintText: 'Código',
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 10.0, horizontal: 10.0),
                                border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                ),
                              ),
                              keyboardType: TextInputType.number,
                              style: const TextStyle(
                                fontSize: 14,
                                color: Color(0xFF848688),
                                fontWeight: FontWeight.w500,
                                fontFamily: "Poppins",
                              ),
                            ),
                          ),
                          const SizedBox(width: 15.19),
                          SizedBox(
                            width: 126.606,
                            height: 36.278,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xFF070054),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15))),
                              onPressed: () {},
                              child: const Text(
                                "Reenviar",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "Poppins",
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20.15),
                      RichText(
                        text: const TextSpan(
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFF343434), // Cor padrão para o texto
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            height: 1.5, // line-height 150%
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text:
                                  'Nós enviamos pra você um código para verificar se o número de telefone  ',
                            ),
                            TextSpan(
                              text: '(+55) XXXXX-XXX ',
                              style: TextStyle(
                                color: Color(
                                    0xFF070054), // Cor azul definida pelo código hexadecimal
                              ),
                            ),
                            TextSpan(
                              text:
                                  'ou o e-mail elixx.xxxxxx@gmail.com estão corretos.',
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Esse código irá expirar em 10 minutos depois dessa mensagem, caso você não receba.',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFF343434), // Cor padrão para o texto
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          height: 1.5,
                        ),
                      ),

                      // Botão de confirmação
                      const SizedBox(height: 40),
                      Align(
                        alignment: Alignment.center,
                        child: SizedBox(
                          width: 173,
                          height: 54,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/passwordNewReset');
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF070054),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            child: const Text(
                              "Mudar senha",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                fontFamily: "Poppins",
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 25),
                      Align(
                        alignment: Alignment.center,
                        child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Mudar meu número de telefone ou e-mail ',
                            style: TextStyle(
                              color: Color(0xFFF05022),
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              fontFamily: "Poppins",
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
