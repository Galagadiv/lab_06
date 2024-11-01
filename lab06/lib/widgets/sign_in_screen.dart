import 'package:flutter/material.dart';
import './reset_password_screen.dart';
import './signup_screen.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final TextEditingController email = TextEditingController();
    final TextEditingController pass = TextEditingController();

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
                margin: EdgeInsets.all(12),
                height: 48,
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Enter login',
                    border: OutlineInputBorder(),
                  ),
                  obscureText: true,
                ),
              ),
            ), //input 1

            Center(
              child: Container(
                margin: const EdgeInsets.all(12),
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
            ), //input 2

            Center(
              child: Container(
                margin: const EdgeInsets.all(12),
                height: 48,
                width: 335,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),),
                  onPressed: () {
                    Navigator.push(
                      context, MaterialPageRoute(builder: (context) => const SignupScreen()
                    ),
                    );
                  },
                  child: const Text("Sign up"),
                ),
              ),
            ), //btn sign in

            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                  height: 48,
                  width: 160,
                  child: FilledButton(
                    style: FilledButton.styleFrom(
                      backgroundColor: const Color(0xFF2D5482),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    onPressed: () {
                      if (email.text.isEmpty || pass.text.isEmpty) {
                        showDialog(
                          context: context,
                          builder: (BuildContext ctx) {
                            return const AlertDialog(
                              title: Text('Error'),
                              content: Text("Enter the email or pass"),
                            );
                          },
                        );
                      }
                    },
                    child: const Text("Login"),
                  ),
                ),
                  Container(
                    margin: const EdgeInsets.all(15),
                    height: 48,
                    width: 160,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),),
                      onPressed: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => const ResetPasswordScreen()
                        ),
                        );
                      },
                      child: const Text("Reset password"),
                    ),
                  ), //Btn reset
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
