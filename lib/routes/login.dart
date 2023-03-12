import 'package:flutter/material.dart';
  class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(backgroundColor: Colors.pinkAccent,
            title:const Text(
              "Log In ",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25.0,
                  letterSpacing: 7.0,
                  fontWeight: FontWeight.w900),
            ),
            centerTitle: true
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                width: 400.0,
                height: 55.0,
                decoration: const BoxDecoration(
                  color: Colors.pinkAccent,
                  borderRadius: BorderRadius.horizontal(
                      right: Radius.circular(35), left: Radius.circular(35)),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email, color: Colors.white),
                      labelText: "Email",
                      labelStyle: TextStyle(fontSize: 15.0, color: Colors.white),
                      border: InputBorder.none),
                  keyboardType: TextInputType.emailAddress,
                  autocorrect: true,
                  textInputAction: TextInputAction.next,
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                width: 400.0,
                height: 55.0,
                decoration: BoxDecoration(
                  color: Colors.pinkAccent,
                  borderRadius: BorderRadius.circular(35.0),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Colors.white,
                    ),
                    labelText: "Password",
                    labelStyle: TextStyle(fontSize: 15.0, color: Colors.white),
                    //,border: OutlineInputBorder(),
                    border: InputBorder.none,
                  ),
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  autocorrect: true,
                  textInputAction: TextInputAction.done,
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    backgroundColor:const MaterialStatePropertyAll(Colors.pink),
                    fixedSize:const  MaterialStatePropertyAll(Size(400.0,55.0),),
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(35.0)))

                ),
                child: const Text(
                  "LOGIN",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      letterSpacing: 10.0,
                      fontWeight: FontWeight.w900),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
