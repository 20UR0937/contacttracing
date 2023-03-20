import 'package:contact/constants/style_constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class RegisterClientScreen extends StatefulWidget {
  const RegisterClientScreen({super.key});

  @override
  State<RegisterClientScreen> createState() => _RegisterClientScreenState();
}

class _RegisterClientScreenState extends State<RegisterClientScreen> {
   final GlobalKey _formKey = GlobalKey<FormState>();

  bool obscurePssword = true;
  TextEditingController emailCtrl = TextEditingController();
    TextEditingController pass = TextEditingController();
      TextEditingController confirmpass = TextEditingController();
  void registerClient() async {
    //before register -> check/validate fields
    EasyLoading.show(status: 'Processing...');
    try{
   await FirebaseAuth.instance.
   createUserWithEmailAndPassword(
      email: 'a1@gmail.com', password: 'password12345'
    );
      EasyLoading.showSuccess('User account created');
    } on FirebaseAuthException catch(ex){
      EasyLoading.dismiss();
      if(ex.code == 'weak-password'){
        EasyLoading.showError(
          ('Your password has weak complexity. Please enter a more secured password.'),
        );
        } else if (ex.code == 'email-already-in-use'){
          EasyLoading.showError('Your email is already in used. Please enter another email.');
        }
      EasyLoading.showError('Email address given already exists in the system');
      print(ex.code);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Signup',
         style: TextStyle(
          color: Colors.black,
          ),
          ),
          leading: IconButton(
            onPressed: () => Navigator.pop(context),
           icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
            ),
           ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(
                height: 12,
              ),
              TextFormField(
                controller: emailCtrl,
                decoration: const InputDecoration(
                  labelText: 'Email Address',
                  border:  OutlineInputBorder(),
                ),
                style: const TextStyle(
                  fontSize: 16,
                ),
              ),
               const Text('Password'),
              TextFormField(
                controller: pass,
                obscureText: obscurePssword,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: const OutlineInputBorder(),
                  suffixIcon: IconButton
                  (icon: Icon(obscurePssword
                   ? Icons.visibility 
                   : Icons.visibility_off),
                   onPressed: () {
                    setState(() {
                      obscurePssword = !obscurePssword;
                    });    
                   },
                   ),
                ),
                style: const TextStyle(
                  fontSize: 16,
                ),
              ),
              TextFormField(
                controller: confirmpass,
                obscureText: obscurePssword,
                decoration: const InputDecoration(
                  labelText: 'Confirm Password',
                  border: const OutlineInputBorder(),
                ),
                style: const TextStyle(
                  fontSize: 16,
                ),
              ),
              ElevatedButton(onPressed: registerClient,
              style: ElevatedButton.styleFrom(
                shape: roundShape,
              ),
               child: const Text('Register'),
               ),
            ],
          ),
        ),
      ),
    );
  }
}