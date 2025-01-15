import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:form_validator/form_validator.dart';
import 'package:video_callig_firebase_agora/views/auth/login_page.dart';
import 'package:video_callig_firebase_agora/views/home/home_page.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String? email;
  String? password;
  String? username;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Signup'),
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
                  labelText: 'Username',
                ),
                onChanged: (value) => username = value,
                validator:
                    ValidationBuilder().minLength(5).maxLength(50).build(),
              ),
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
                validator:
                    ValidationBuilder().minLength(5).maxLength(50).build(),
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
                validator:
                    ValidationBuilder().minLength(5).maxLength(50).build(),
              ),
              SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 45,
                child: ElevatedButton(
                  onPressed: () async {
                    if (formKey.currentState?.validate() ?? false) {
                      await FirebaseAuth.instance
                          .createUserWithEmailAndPassword(
                              email: email!, password: password!);
                      try {
                        if (mounted) {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const HomePage(),
                              ));
                        }
                      } on FirebaseAuthException catch (e) {
                        if (e.code == 'weak-password') {
                          print('The password provided is too weak.');
                        } else if (e.code == 'email-already-in-use') {
                          print('The account already exists for that email.');
                        }
                      } catch (e) {
                        print(e);
                      }
                    }
                  },
                  child: const Text('Signup'),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const Login(),
                    ),
                  );
                },
                child: const Text('Already have an account? Login'),
              )
            ],
          ),
        ));
  }
}
