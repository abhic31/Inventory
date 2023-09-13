import 'package:flutter/material.dart';
import 'package:inventory_management/screens/main_screen.dart';
//import 'package:email_validator/email_validator.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  //final String title;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/images/sample_logo.jpg',
                  height: 75,
                  scale: 2.5,
                  // color: Color.fromARGB(255, 15, 147, 59),
                  opacity: const AlwaysStoppedAnimation<double>(0.5)),
              const Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "Hello Again!",
                    style: TextStyle(fontSize: 30),
                  )),
              const Text(
                "Login to your account ",
                style: TextStyle(fontSize: 15),
              ),
              Padding(
                  padding: const EdgeInsets.all(20),
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      iconColor: Colors.blue,
                      prefixIcon: const Icon(Icons.email),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.blue, width: 1),
                          borderRadius: BorderRadius.circular(15)),
                      hintText: 'Enter a email ',
                    ),
                  )),
              Padding(
                  padding: const EdgeInsets.all(20),
                  child: TextField(
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.lock),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.blue, width: 1),
                          borderRadius: BorderRadius.circular(15)),
                      hintText: 'Enter password ',
                    ),
                  )),
              Padding(
                padding: const EdgeInsets.all(20),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            const MainScreen(title: "Franchise Name "),
                      ),
                    );
                  },
                  child: const Text("Login"),
                ),
              ),
            ]),
      ),
    );
  }
}
