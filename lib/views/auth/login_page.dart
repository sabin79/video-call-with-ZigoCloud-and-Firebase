import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:form_validator/form_validator.dart';
import 'package:video_callig_firebase_agora/views/auth/signup.dart';
import 'package:video_callig_firebase_agora/views/home/home_page.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String? email;
  String? password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Form(
        key: formKey,
        child: ListView(
          padding: EdgeInsets.all(15),
          children: [
            SizedBox(
              height: 15,
            ),
            TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                labelText: 'Email',
              ),
              onChanged: (value) => email = value,
              validator: ValidationBuilder().minLength(5).maxLength(50).build(),
            ),
            SizedBox(
              height: 15,
            ),
            TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                labelText: 'Password',
              ),
              onChanged: (value) => password = value,
              validator: ValidationBuilder().minLength(5).maxLength(50).build(),
            ),
            SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 45,
              child: ElevatedButton(
                onPressed: () async {
                  if (formKey.currentState?.validate() ?? false) {
                    try {
                      await FirebaseAuth.instance.signInWithEmailAndPassword(
                          email: email!, password: password!);
                      if (mounted) {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                              builder: (context) => const HomePage()),
                        );
                      }
                    } on FirebaseAuthException catch (e) {
                      if (e.code == 'wrong-password') {
                        print('The password provided is Incorrect.');
                      }
                    } catch (e) {
                      print(e);
                    }
                  }
                },
                child: const Text('Login'),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const Signup())); //Navigator.pushReplacement(context, newRoute)
              },
              child: const Text('Create an account ? '),
            )
          ],
        ),
      ),
    );
  }
}
