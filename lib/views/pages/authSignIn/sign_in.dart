import 'package:flutter/material.dart';
import 'package:travel_app/views/pages/authSignUp/sign_up_page.dart';
import 'package:travel_app/views/pages/homepage/homepage.dart';

class SignInView extends StatefulWidget {
  const SignInView({super.key});

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: Padding(
          padding: const EdgeInsets.only(
            top: 60,
            left: 24,
            right: 24,
          ),
          child: ListView(
            children: [
              Text(
                "Sign In",
                style: TextStyle(
                  fontSize: 10.0,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Column(
                children: [
                  TextFormField(
                    initialValue: 'admin@gmail.com',
                    maxLength: 20,
                    decoration: const InputDecoration(
                      labelText: 'Email',
                      labelStyle: TextStyle(
                        color: Colors.blueGrey,
                      ),
                      suffixIcon: Icon(
                        Icons.email,
                      ),
                      helperText: 'Enter your email address',
                    ),
                    onChanged: (value) {},
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    initialValue: '123456',
                    maxLength: 20,
                    obscureText: true,
                    decoration: const InputDecoration(
                      labelText: 'Password',
                      labelStyle: TextStyle(
                        color: Colors.blueGrey,
                      ),
                      suffixIcon: Icon(
                        Icons.password,
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.blueGrey,
                        ),
                      ),
                      helperText: 'Enter your password',
                    ),
                    onChanged: (value) {},
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Container(
                    width: 400,
                    height: 50,
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => HomePage())));
                      },
                      style: TextButton.styleFrom(
                          backgroundColor: Color(0xff4141A4),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          )),
                      child: Text(
                        "Sign In",
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0, bottom: 80.0),
                    child: Center(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => SignUpPage())));
                        },
                        child: Text(
                          "Create New Account",
                          style: TextStyle(
                            fontSize: 10.0,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        )));
  }
}
