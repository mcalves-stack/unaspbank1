import 'package:flutter/material.dart';
import 'package:unaspbank/pages/home/historico.dart';
import 'package:unaspbank/pages/home/home.dart';
import 'package:unaspbank/pages/password/Passwordnew_reset.dart';

// PAGES
import 'package:unaspbank/pages/signup/create_user.dart';
import 'package:unaspbank/pages/signup/sucess_signup.dart';
import 'package:unaspbank/pages/signup/login_page.dart';
import 'package:unaspbank/pages/signup/image_verify.dart';
import 'package:unaspbank/pages/signup/document_verify.dart';
import 'package:unaspbank/pages/signup/send_doc_sucess.dart';
import 'package:unaspbank/pages/signup/monthly_income.dart';
import 'package:unaspbank/pages/signup/register_completed.dart';
import 'package:unaspbank/pages/financing/financing.dart';
import 'package:unaspbank/pages/financing/installment_financing.dart';
import 'package:unaspbank/pages/password/forgot_password.dart';
import 'package:unaspbank/pages/password/password_code.dart';
import 'package:unaspbank/pages/password/completedreset_password.dart';

// NOVAS TELAS
import 'package:unaspbank/pages/scholarship/welcome_screen.dart';
import 'package:unaspbank/pages/scholarship/questions_screen_1.dart';
import 'package:unaspbank/pages/scholarship/questions_screen_2.dart';
import 'package:unaspbank/pages/scholarship/upload_screen.dart';
import 'package:unaspbank/pages/scholarship/confirmation_screen.dart';
//import 'package:unaspbank/pages/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        //'/': (context) => const SplashScreen(),
        '/home': (context) => const HomePage(),
        '/login': (context) => const LoginPage(),
        '/createUser': (context) => const CreateUser(),
        '/historico': (context) => const HistoricoPage(),
        '/successSignup': (context) => const SucessSignup(),
        '/imageVerify': (context) => const ImageVerify(),
        '/sendDocSuccess': (context) => const SendDocSucess(),
        '/documentVerify': (context) => const DocumentVerify(),
        '/financing': (context) => const Financing(),
        '/monthlyIncome': (context) => const MonthlyIncome(),
        '/registerCompleted': (context) => const RegisterCompleted(),
        '/installmentFinancing': (context) => const InstallmentFinancing(),
        '/forgotPassword': (context) => const ForgotPassword(),
        '/passwordCode': (context) => const PasswordCode(),
        '/passwordNewReset': (context) => const PasswordnewReset(),
        '/CompletedresetPassword': (context) => const CompletedresetPassword(),
        // Novas Telas
        '/welcome': (context) => WelcomeScreen(),
        '/': (context) => QuestionsScreen1(),
        '/questions2': (context) => QuestionsScreen2(),
        '/upload': (context) => UploadScreen(),
        '/confirmation': (context) => ConfirmationScreen(),
      },
    );
  }
}
