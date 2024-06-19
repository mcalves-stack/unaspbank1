import 'package:flutter/material.dart';
import 'package:unaspbank/pages/financing/financing.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: 540.06,
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  top: 0,
                  child: SizedBox(
                    width: 600.00,
                    height: 960.06,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 932,
                            decoration: const BoxDecoration(
                              color: Color(0xFFFBFBFB),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 25,
                          top: 836,
                          child: SizedBox(
                            width: 384,
                            height: 96,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  child: Container(
                                    width: 384,
                                    height: 94,
                                    decoration: const ShapeDecoration(
                                      color: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(15),
                                          topRight: Radius.circular(15),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 33.72,
                                  top: 25,
                                  child: Container(
                                    width: 94.21,
                                    height: 37.19,
                                    decoration: ShapeDecoration(
                                      color: const Color(0xFF070054),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 49.12,
                                  top: 28,
                                  child: Container(
                                    width: 26.79,
                                    height: 30,
                                    decoration: const BoxDecoration(),
                                  ),
                                ),
                                const Positioned(
                                  left: 83.05,
                                  top: 36,
                                  child: SizedBox(
                                    width: 41.97,
                                    height: 11,
                                    child: Text(
                                      'Home',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 11,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400,
                                        height: 0.13,
                                      ),
                                    ),
                                  ),
                                ),
                                const Positioned(
                                  left: 188.67,
                                  top: 33,
                                  child: SizedBox(
                                    width: 22.52,
                                    height: 22.71,
                                    child: SizedBox(),
                                  ),
                                ),
                                Positioned(
                                  left: 200.95,
                                  top: 31,
                                  child: Container(
                                    width: 24.58,
                                    height: 24.79,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 1.02, vertical: 1.03),
                                    clipBehavior: Clip.antiAlias,
                                    decoration: const BoxDecoration(),
                                    child: const Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        SizedBox(
                                          width: 22.53,
                                          height: 22.73,
                                          child: SizedBox(),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 0,
                                  top: 62,
                                  child: Container(
                                    width: 384,
                                    height: 34,
                                    padding: const EdgeInsets.only(
                                      top: 20,
                                      left: 125,
                                      right: 125,
                                      bottom: 9,
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 134,
                                          height: 5,
                                          decoration: ShapeDecoration(
                                            color: const Color(0xFFC9C9C9),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(100),
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
                        ),
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 260,
                            decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment(-0.93, -0.37),
                                end: Alignment(0.93, 0.37),
                                colors: [Color(0xFF070054), Color(0xFFF05022)],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 36.29,
                          top: 97.53,
                          child: SizedBox(
                            width: 156,
                            height: 70.25,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  child: SizedBox(
                                    width: 156,
                                    height: 70.25,
                                    child: Stack(
                                      children: [
                                        const Positioned(
                                          left: 0,
                                          top: 0,
                                          child: SizedBox(
                                            width: 100,
                                            height: 17.27,
                                            child: Opacity(
                                              opacity: 0.70,
                                              child: Text(
                                                'Saldo em conta',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 13,
                                                  fontFamily: 'Roboto',
                                                  fontWeight: FontWeight.w400,
                                                  decoration:
                                                      TextDecoration.underline,
                                                  height: 0,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 0,
                                          top: 23.03,
                                          child: SizedBox(
                                            width: 200,
                                            height: 24.18,
                                            child: Text.rich(
                                              TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text: 'R\$',
                                                    style: TextStyle(
                                                      color: Colors.white
                                                          .withOpacity(
                                                              0.699999988079071),
                                                      fontSize: 18,
                                                      fontFamily: 'Roboto',
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      decoration: TextDecoration
                                                          .underline,
                                                      height: 0,
                                                    ),
                                                  ),
                                                  const TextSpan(
                                                    text: ' ',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 18,
                                                      fontFamily: 'Roboto',
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      decoration: TextDecoration
                                                          .underline,
                                                      height: 0,
                                                    ),
                                                  ),
                                                  const TextSpan(
                                                    text: '1',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 18,
                                                      fontFamily: 'Roboto',
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      decoration: TextDecoration
                                                          .underline,
                                                      height: 0,
                                                    ),
                                                  ),
                                                  const TextSpan(
                                                    text: '.089,09',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 18,
                                                      fontFamily: 'Roboto',
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      decoration: TextDecoration
                                                          .underline,
                                                      height: 0,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        const Positioned(
                                          left: 0,
                                          top: 52.97,
                                          child: SizedBox(
                                            width: 255,
                                            height: 17.27,
                                            child: Opacity(
                                              opacity: 0.70,
                                              child: Text(
                                                'Atualizado neste momento',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 13,
                                                  fontFamily: 'Roboto',
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
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
                        ),
                        Positioned(
                          left: 318.29,
                          top: 101.53,
                          child: Container(
                            width: 59,
                            height: 59,
                            decoration: const ShapeDecoration(
                              color: Color(0xFFD9D9D9),
                              shape: OvalBorder(),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 319.29,
                          top: 109.53,
                          child: Container(
                            width: 58,
                            height: 46,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/images/User.png'),
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 36.29,
                          top: 230.53,
                          child: Container(
                            width: 364,
                            height: 134.74,
                            clipBehavior: Clip.antiAlias,
                            decoration: const BoxDecoration(),
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 67,
                                  top: 0,
                                  child: SizedBox(
                                    width: 110,
                                    height: 110,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          left: 0,
                                          top: 0,
                                          child: Container(
                                            width: 110,
                                            height: 110,
                                            decoration: ShapeDecoration(
                                              color: Colors.white,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              shadows: const [
                                                BoxShadow(
                                                  color: Color(0x0C000000),
                                                  blurRadius: 6,
                                                  offset: Offset(0, 2),
                                                  spreadRadius: 0,
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                        const Positioned(
                                          left: 0,
                                          top: 83,
                                          child: SizedBox(
                                            width: 110,
                                            child: Text(
                                              'Transferências',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Color(0xFF787A84),
                                                fontSize: 13,
                                                fontFamily: 'Roboto',
                                                fontWeight: FontWeight.w400,
                                                decoration:
                                                    TextDecoration.underline,
                                                height: 0,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 30,
                                          top: 20,
                                          child: SizedBox(
                                            width: 50,
                                            height: 50,
                                            child: Stack(
                                              children: [
                                                Positioned(
                                                  left: 0,
                                                  top: 0,
                                                  child: Container(
                                                    width: 50,
                                                    height: 50,
                                                    decoration:
                                                        const ShapeDecoration(
                                                      color: Color(0xFF070054),
                                                      shape: OvalBorder(),
                                                    ),
                                                  ),
                                                ),
                                                Positioned(
                                                  left: 13,
                                                  top: 13,
                                                  child: SizedBox(
                                                    width: 24,
                                                    height: 24,
                                                    child: Image.asset(
                                                        'assets/images/Frame.png'),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 190,
                                  top: 0,
                                  child: SizedBox(
                                    width: 110,
                                    height: 110,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          left: 0,
                                          top: 0,
                                          child: Container(
                                            width: 110,
                                            height: 110,
                                            decoration: ShapeDecoration(
                                              color: Colors.white,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              shadows: const [
                                                BoxShadow(
                                                  color: Color(0x0C000000),
                                                  blurRadius: 6,
                                                  offset: Offset(0, 2),
                                                  spreadRadius: 0,
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                        const Positioned(
                                          left: 0,
                                          top: 83,
                                          child: SizedBox(
                                            width: 110,
                                            child: Text(
                                              'Extrato',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontSize: 13,
                                                fontFamily: 'Roboto',
                                                fontWeight: FontWeight.w400,
                                                decoration:
                                                    TextDecoration.underline,
                                                height: 0,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 34,
                                          top: 20.17,
                                          child: Container(
                                            width: 50,
                                            height: 50,
                                            decoration: const ShapeDecoration(
                                              color: Color(0xFF070054),
                                              shape: OvalBorder(),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 234,
                                  top: 28.17,
                                  child: SizedBox(
                                    width: 34,
                                    height: 34,
                                    child: Image.asset(
                                        'assets/images/documenttext1.png'),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          left: 0.59,
                          top: 0,
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 47,
                            clipBehavior: Clip.antiAlias,
                            decoration: const BoxDecoration(),
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 34,
                                  top: 14,
                                  child: Container(
                                    width: 54,
                                    height: 21,
                                    padding: const EdgeInsets.only(top: 1),
                                    decoration: ShapeDecoration(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(24),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 319,
                                  top: 19,
                                  child: SizedBox(
                                    width: 77.40,
                                    height: 13,
                                    child: Stack(
                                      children: [
                                        const Positioned(
                                          left: 50,
                                          top: 0,
                                          child: SizedBox(
                                            width: 27.40,
                                            height: 13,
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [],
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 26,
                                          top: 1,
                                          child: Container(
                                            width: 17,
                                            height: 11.83,
                                            decoration: const BoxDecoration(),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          left: 37,
                          top: 480,
                          child: SizedBox(
                            width: 370,
                            height: 60,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  child: Container(
                                    height: 60,
                                    decoration: ShapeDecoration(
                                      color: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      shadows: const [
                                        BoxShadow(
                                          color: Color(0x0C000000),
                                          blurRadius: 6,
                                          offset: Offset(0, 2),
                                          spreadRadius: 0,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 5,
                                  top: -10,
                                  child: TextButton.icon(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const Financing(),
                                        ),
                                      );
                                    },
                                    icon: const Image(
                                      image: AssetImage(
                                          'assets/images/MagneticCard.png'),
                                      height: 35,
                                      width: 40,
                                    ),
                                    label: const Text(
                                      'Solicitar Financiamento',
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400,
                                        decoration: TextDecoration.underline,
                                        height: 0,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          left: 34,
                          top: 380,
                          child: SizedBox(
                            width: 372,
                            height: 60,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  child: Container(
                                    decoration: ShapeDecoration(
                                      color: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      shadows: const [
                                        BoxShadow(
                                          color: Color(0x0C000000),
                                          blurRadius: 6,
                                          offset: Offset(0, 2),
                                          spreadRadius: 0,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                const Positioned(
                                  left: 60,
                                  top: 18,
                                  child: Text(
                                    'Solicitar Bolsa de Estudo',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                      decoration: TextDecoration.underline,
                                      height: 0,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 16,
                                  top: 12,
                                  child: Container(
                                    width: 40,
                                    height: 35,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/Book.png'),
                                        fit: BoxFit.contain,
                                      ),
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
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          Image.asset(
            'assets/images/porco.png',
            height: 170,
            fit: BoxFit.contain,
          ),
          // Bottom Navigation Bar
          const Spacer(),
          Container(
            width: double.infinity,
            height: 70,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35.72),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 94.21,
                    height: 37.19,
                    decoration: ShapeDecoration(
                      color: const Color(0xFF070054),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        'Home',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 11,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          height: 0.13,
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.search),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: const Icon(Icons.settings),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
