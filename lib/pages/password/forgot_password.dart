import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  ForgotPasswordState createState() => ForgotPasswordState();
}

class ForgotPasswordState extends State<ForgotPassword> {
  final TextEditingController _emailController = TextEditingController();

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
                const SizedBox(width: 11),
                const Text('Redefinir a senha',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Spacer(),
                const Text(
                  'Para redefinir a sua senha, informe o e-mail ou número de telefone cadastrado na sua conta e enviaremos um código com instruções.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF343434),
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 33),
                TextField(
                  controller: _emailController,
                  decoration: const InputDecoration(
                    hintText: 'Número ou E-mail',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                  ),
                  keyboardType: TextInputType.emailAddress,
                  style: const TextStyle(height: 1.0),
                ),
                const SizedBox(height: 45),
                SizedBox(
                  width: 173,
                  height: 54,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/passwordCode');
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF070054),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15))),
                    child: const Text("Enviar",
                        style: TextStyle(color: Colors.white, fontSize: 22)),
                  ),
                ),
                const SizedBox(height: 14),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Voltar para o login',
                    style: TextStyle(
                        color: Color(0xFFF05022),
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Poppins",
                        fontStyle: FontStyle.normal,
                        decoration: TextDecoration.underline),
                  ),
                ),
                const Spacer(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
