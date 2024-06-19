import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CompletedresetPassword extends StatefulWidget {
  const CompletedresetPassword({super.key});

  @override
  CompletedresetPasswordState createState() => CompletedresetPasswordState();
}

class CompletedresetPasswordState extends State<CompletedresetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 60.0, right: 320.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset(
                  "assets/images/arrow_backsvg.svg",
                  width: 16,
                  height: 16,
                ),
                const SizedBox(width: 13),
              ],
            ),
          ),
          const SizedBox(height: 50.0),
          Padding(
            padding: const EdgeInsets.only(left: 40.0, right: 59.0),
            child: Align(
              alignment: Alignment.center,
              child: Column(
                children: [
                  const SizedBox(height: 50),
                  SvgPicture.asset(
                    "assets/images/imgCompletedPassword.svg",
                    width: 331,
                    height: 216,
                  ),
                  const SizedBox(height: 50),
                ],
              ),
            ),
          ),
          const Align(
            child: Text(
              'Sua senha foi redefinida com sucesso!',
              style: TextStyle(
                fontSize: 16,
                color: Color(0XFF070054),
                fontWeight: FontWeight.w600,
                fontFamily: "Poppins",
                fontStyle: FontStyle.normal,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Align(
            child: Text(
              'Você conseguiu redefinir sua senha. Agora,\n utilize-a quando for logar no UNASP BANK!  ',
              style: TextStyle(
                fontSize: 14,
                color: Color(0XFF343434),
                fontWeight: FontWeight.w500,
                fontFamily: "Poppins",
                fontStyle: FontStyle.normal,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 48,
          ),
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              width: 210,
              height: 54,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF070054),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: const Text(
                  "Voltar para o Login",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    fontFamily: "Poppins",
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
