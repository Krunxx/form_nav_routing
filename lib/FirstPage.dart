import 'package:flutter/material.dart';

import 'SecondPage.dart';


class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {

  var formKey = GlobalKey<FormState>();
  TextEditingController fullName = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text(
            "First Page",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        body: Form(
            key: formKey,
            child: ListView(
                padding: const EdgeInsets.all(20),
                children: [
                  TextFormField(
                    controller: fullName,
                    decoration: const InputDecoration(
                        labelText: "Full Name"

                    ),
                    validator: (value){
                      if (value == null || value == ''){
                        return "Please enter your Fullname";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SecondPage(name: fullName.text),
                          ),
                        );
                      }
                    },
                    child: Text("Login"),
                  )
                ]
            )
        )
    );
  }
}