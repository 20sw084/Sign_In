import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyAppPage(),
    );
  }
}

class MyAppPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Authorization'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              child: Center(
                child: Text(
                  'Sign In',
                  style: SignInTextStyle.textStyle,
                ),
              ),
            ),
            const SizedBox(
              height: 50, // <-- SEE HERE
            ),
            Container(
              child: const Center(
                child: Text(
                  'New to this site? Sign Up',
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30, // <-- SEE HERE
            ),
            ElevatedButton.icon(
              onPressed: () {
                print("Login With Google");
              },
              icon: Image.asset(
                "lib/images/google.svg.webp",
                height: 50,
                width: 50,
              ),
              label: const Text(
                'Login With Google',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all(Colors.black),
                backgroundColor: MaterialStateProperty.all(Colors.white),
              ),
            ),
            const SizedBox(
              height: 30, // <-- SEE HERE
            ),
            Container(
              child: const Center(
                child: Text(
                  '----------------- or -----------------',
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30, // <-- SEE HERE
            ),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all(Colors.black),
                backgroundColor: MaterialStateProperty.all(Colors.white),
              ),
              child: const Text(
                'Login with Email',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
          ],
        ),
      ),
      // Center(
      //   child: Text(
      //     'Sign In',
      //     style: SignInTextStyle.textStyle,
      //   ),
      // ),
      backgroundColor: Colors.grey,
    );
  }
}

class SignInTextStyle {
  static TextStyle textStyle = const TextStyle(
    color: Colors.black,
    fontSize: 50,
    fontWeight: FontWeight.bold,
  );
}
