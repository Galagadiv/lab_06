import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final TextEditingController email = TextEditingController();
    final TextEditingController pass = TextEditingController();
    final TextEditingController name = TextEditingController();

    return Scaffold(

        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Center(
                    child: Image.network(
                      "https://upload.wikimedia.org/wikipedia/commons/thumb/4/44/Google-flutter-logo.svg/1024px-Google-flutter-logo.svg.png",
                      width: 200,
                    ),
                  ), //img

                  Center(
                    child: Container(
                      margin: const EdgeInsets.fromLTRB(12, 10, 12, 0),
                      height: 48,
                      child: TextField(
                        controller: name,
                        decoration: const InputDecoration(
                          labelText: 'Enter name',
                          border: OutlineInputBorder(),
                        ),
                        obscureText: true,
                      ),
                    ),
                  ), //input 1

                  Center(
                    child: Container(
                      margin: const EdgeInsets.fromLTRB(12, 10, 12, 0),
                      height: 48,
                      child: TextField(
                        controller: email,
                        decoration: const InputDecoration(
                          labelText: 'Enter login',
                          border: OutlineInputBorder(),
                        ),
                        obscureText: true,
                      ),
                    ),
                  ), //input 2

                  Center(
                    child: Container(
                      margin: const EdgeInsets.fromLTRB(12, 10, 12, 0),
                      height: 48,
                      child: TextField(
                        controller: pass,
                        decoration: const InputDecoration(
                          labelText: 'Enter password',
                          border: OutlineInputBorder(),
                        ),
                        obscureText: true,
                      ),
                    ),
                  ), //input 3

                  Center(
                    child: Container(
                      margin: const EdgeInsets.fromLTRB(12, 10, 12, 0),
                      height: 48,
                      width: 335,
                      child: FilledButton(
                        style: FilledButton.styleFrom(
                          backgroundColor: const Color(0xFF2D5482),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        onPressed: () {
                          if (email.text.isEmpty || name.text.isEmpty || pass.text.isEmpty) {
                            showDialog(
                              context: context,
                              builder: (BuildContext ctx) {
                                return const AlertDialog(
                                  title: Text('Error'),
                                  content: Text("Enter the email or name or pass"),
                                );
                              },
                            );
                          }
                        },
                        child: const Text("Reset"),
                      ),
                    ),
                  ), //sign up

                  Center(
                    child: Container(
                      margin: const EdgeInsets.fromLTRB(12, 10, 12, 0),
                      height: 48,
                      width: 335,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text("Back"),
                      ),
                    ),
                  ),
                ]
            )
        ),
    );
  }
}