import 'package:contact/firebase_options.dart';
import 'package:contact/screens/home.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(ContactTrace(
  ));
}
class ContactTrace extends StatelessWidget {
  const ContactTrace({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: GoogleFonts.montserrat().fontFamily,
        textTheme: const TextTheme(
          titleMedium: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.w900
          ),
             titleSmall: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Colors.black45
          ),
          displayMedium: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500
          ),
        ),  
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.grey,
          elevation: 0,
        )
      ),
      home: HomeScreen(),
      builder: EasyLoading.init(),
    );
  }
}