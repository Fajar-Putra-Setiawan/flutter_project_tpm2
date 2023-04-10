import 'package:flutter/material.dart';
import 'package:flutter_project_tpm2/homepage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPage createState() => _LoginPage();
}

class _LoginPage extends State<LoginPage> {
  String usernamef = "";
  String passwordf = "";
  bool isLoginSuccess = false;

  @override
  Widget build(BuildContext context) {
    final logo = Hero(
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 48.0,
        child: Image.asset('assets/travel.png'),
      ),
    );

    final email = TextFormField(
      enabled: true,
      onChanged: (value) {
        usernamef = value;
      },
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      decoration: InputDecoration(
        hintText: 'Email',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final password = TextFormField(
      enabled: true,
      onChanged: (value) {
        passwordf = value;
      },
      autofocus: false,
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Password',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final forgotLabel = GestureDetector(
      child: Text(
        'Forgot password?',
        style: TextStyle(
          color: Colors.black54,
        ),
      ),
      onTap: () {},
    );

    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        borderRadius: BorderRadius.circular(30.0),
        shadowColor: Colors.lightBlueAccent.shade100,
        elevation: 5.0,
        child: MaterialButton(
          minWidth: 200.0,
          height: 42.0,
          onPressed: () {
            String text = "";
            if (usernamef == "user" && passwordf == "user123") {
              setState(() {
                text = "Login Success";
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) {
                  return const HalamanUtama();
                }));
                isLoginSuccess = true;
              });
            } else {
              setState(() {
                text = "Login Failed";
                isLoginSuccess = false;
              });
            }

            SnackBar snackBar = SnackBar(
              content: Text(text),
            );
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          },
          color: Colors.orange,
          child: Text('Log In', style: TextStyle(color: Colors.white)),
        ),
      ),
    );

    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  logo,
                  const SizedBox(height: 30.0),
                  email,
                  const SizedBox(height: 8.0),
                  password,
                  const SizedBox(height: 24.0),
                  loginButton,
                  forgotLabel
                ],
              ),
            ),
          )),
    );
  }
}
