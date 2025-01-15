import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

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
              TextFormField(),
              SizedBox(
                height: 15,
              ),
              TextFormField(),
              SizedBox(
                height: 45,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Signup'),
                ),
              )
            ],
          ),
        ));
  }
}
