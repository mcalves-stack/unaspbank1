import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PasswordnewReset extends StatefulWidget {
  const PasswordnewReset({super.key});

  @override
  PasswordnewResetState createState() => PasswordnewResetState();
}

class PasswordnewResetState extends State<PasswordnewReset> {
  bool _isObscuredNewPassword = true;
  bool _isObscuredConfirmPassword = true;

  void _toggleNewPasswordVisibility() {
    setState(() {
      _isObscuredNewPassword = !_isObscuredNewPassword;
    });
  }

  void _toggleConfirmPasswordVisibility() {
    setState(() {
      _isObscuredConfirmPassword = !_isObscuredConfirmPassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 60.0, right: 215.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset(
                  "assets/images/arrow_backsvg.svg",
                  width: 16,
                  height: 16,
                ),
                const SizedBox(width: 13),
                const Text(
                  'Redefinir a senha',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Expanded(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 20.0, right: 20.0, bottom: 70.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: Text(
                        'Digite a nova senha',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Poppins",
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Digite a nova senha',
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 10.0),
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                        suffixIcon: IconButton(
                          icon: Icon(
                            _isObscuredNewPassword
                                ? Icons.visibility_off
                                : Icons.visibility,
                          ),
                          onPressed: _toggleNewPasswordVisibility,
                        ),
                      ),
                      keyboardType: TextInputType.text,
                      obscureText: _isObscuredNewPassword,
                      style: const TextStyle(
                        fontSize: 14,
                        color: Color(0xFF848688),
                        fontWeight: FontWeight.w500,
                        fontFamily: "Poppins",
                      ),
                    ),
                    const SizedBox(height: 16),
                    const Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: Text(
                        'Confirmar nova senha',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Poppins",
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Confirmar nova senha',
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 10.0),
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                        suffixIcon: IconButton(
                          icon: Icon(
                            _isObscuredConfirmPassword
                                ? Icons.visibility_off
                                : Icons.visibility,
                          ),
                          onPressed: _toggleConfirmPasswordVisibility,
                        ),
                      ),
                      keyboardType: TextInputType.text,
                      obscureText: _isObscuredConfirmPassword,
                      style: const TextStyle(
                        fontSize: 14,
                        color: Color(0xFF848688),
                        fontWeight: FontWeight.w500,
                        fontFamily: "Poppins",
                      ),
                    ),
                    const SizedBox(height: 59),
                    Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                        width: 173,
                        height: 54,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(
                                context, '/CompletedresetPassword');
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF070054),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          child: const Text(
                            "Avançar",
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
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
