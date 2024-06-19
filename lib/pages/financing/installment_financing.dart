import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';

class InstallmentFinancing extends StatefulWidget {
  const InstallmentFinancing({super.key});

  @override
  InstallmentFinancingState createState() => InstallmentFinancingState();
}

class InstallmentFinancingState extends State<InstallmentFinancing> {
  bool isChecked = false;

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
              // ignore: unnecessary_const
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
                        padding: const EdgeInsets.all(11.0),
                        child: SvgPicture.asset(
                          "assets/images/progress-financing-2.svg",
                          width: 16,
                          height: 16,
                        ),
                      ),
                    ),
                    Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(25),
                          child: Column(
                            children: [
                              const Text(
                                "Em quantas parcelas você quer pagar?",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 24,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              const Text(
                                "Escolha a opção que se encaixa em seu orçamento.",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: -0.408,
                                ),
                              ),
                              const SizedBox(
                                height: 27,
                              ),
                              Column(
                                children: [
                                  const Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "PARCELAS",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.w400,
                                          letterSpacing: -0.408,
                                        ),
                                      ),
                                      Text(
                                        "JUROS",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.w400,
                                          letterSpacing: -0.408,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 10),
                                  Column(
                                    children: [
                                      Row(
                                        children: <Widget>[
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            child: Transform.scale(
                                              scale: 1.2,
                                              child: Checkbox(
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                ),
                                                value: isChecked,
                                                onChanged: (bool? value) {
                                                  setState(() {
                                                    isChecked = value!;
                                                  });
                                                },
                                                activeColor: Colors.blue,
                                                checkColor: Colors.white,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(width: 8),
                                          const Text('60x de R\$ 16,90'),
                                          const Spacer(), // Espaço flexível que empurra o próximo widget para o final
                                          const Text(
                                            '2,49 % ao mês',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 14,
                                              fontFamily: "Poppins",
                                              fontWeight: FontWeight.w400,
                                              letterSpacing: -0.408,
                                            ),
                                          ),
                                        ],
                                      ),
                                      const Divider(
                                        color: Color(0xFFECECEC),
                                      ),
                                      Row(
                                        children: <Widget>[
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            child: Transform.scale(
                                              scale: 1.2,
                                              child: Checkbox(
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                ),
                                                value: isChecked,
                                                onChanged: (bool? value) {
                                                  setState(() {
                                                    isChecked = value!;
                                                  });
                                                },
                                                activeColor: Colors.blue,
                                                checkColor: Colors.white,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(width: 8),
                                          const Text('48x de R\$ 18,42'),
                                          const Spacer(), // Espaço flexível que empurra o próximo widget para o final
                                          const Text(
                                            '2,39 % ao mês',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 14,
                                              fontFamily: "Poppins",
                                              fontWeight: FontWeight.w400,
                                              letterSpacing: -0.408,
                                            ),
                                          ),
                                        ],
                                      ),
                                      const Divider(
                                        color: Color(0xFFECECEC),
                                      ),
                                      Row(
                                        children: <Widget>[
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            child: Transform.scale(
                                              scale: 1.2,
                                              child: Checkbox(
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                ),
                                                value: isChecked,
                                                onChanged: (bool? value) {
                                                  setState(() {
                                                    isChecked = value!;
                                                  });
                                                },
                                                activeColor: Colors.blue,
                                                checkColor: Colors.white,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(width: 8),
                                          const Text('36x de R\$ 20,75'),
                                          const Spacer(),
                                          const Text(
                                            '2,09 % ao mês',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 14,
                                              fontFamily: "Poppins",
                                              fontWeight: FontWeight.w400,
                                              letterSpacing: -0.408,
                                            ),
                                          ),
                                        ],
                                      ),
                                      const Divider(color: Color(0xFFECECEC)),
                                      Row(
                                        children: <Widget>[
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            child: Transform.scale(
                                              scale: 1.2,
                                              child: Checkbox(
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                ),
                                                value: isChecked,
                                                onChanged: (bool? value) {
                                                  setState(() {
                                                    isChecked = value!;
                                                  });
                                                },
                                                activeColor: Colors.blue,
                                                checkColor: Colors.white,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(width: 8),
                                          const Text('24x de R\$ 27,90'),
                                          const Spacer(), // Espaço flexível que empurra o próximo widget para o final
                                          const Text(
                                            '1,97 % ao mês',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 14,
                                              fontFamily: "Poppins",
                                              fontWeight: FontWeight.w400,
                                              letterSpacing: -0.408,
                                            ),
                                          ),
                                        ],
                                      ),
                                      const Divider(color: Color(0xFFECECEC)),
                                      Row(
                                        children: <Widget>[
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            child: Transform.scale(
                                              scale: 1.2,
                                              child: Checkbox(
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                ),
                                                value: isChecked,
                                                onChanged: (bool? value) {
                                                  setState(() {
                                                    isChecked = value!;
                                                  });
                                                },
                                                activeColor: Colors.blue,
                                                checkColor: Colors.white,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(width: 8),
                                          const Text('12x de R\$ 48,34'),
                                          const Spacer(), // Espaço flexível que empurra o próximo widget para o final
                                          const Text(
                                            '1,83 % ao mês',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 14,
                                              fontFamily: "Poppins",
                                              fontWeight: FontWeight.w400,
                                              letterSpacing: -0.408,
                                            ),
                                          ),
                                        ],
                                      ),
                                      const Divider(color: Color(0xFFECECEC)),
                                      const Align(
                                        heightFactor: 2,
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          "Mais opções de parcelas",
                                          style: TextStyle(
                                            color: Color(0xFFF05022),
                                            fontSize: 12,
                                            fontFamily: "Poppins",
                                            fontWeight: FontWeight.w500,
                                            decoration:
                                                TextDecoration.underline,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 25),
                    SizedBox(
                      width: 173,
                      height: 54,
                      child: ElevatedButton(
                        onPressed: () {},
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
          ],
        ),
      ),
    );
  }
}
