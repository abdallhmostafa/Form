import 'package:flutter/material.dart';
import 'package:app_1/routes/login.dart';
import 'package:app_1/routes/signup.dart';
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(backgroundColor: Colors.pinkAccent,
            title:const Text(
              "Home",
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
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context,'/LoginForm' );
                },
                style: ButtonStyle(
                    backgroundColor:const MaterialStatePropertyAll(Colors.pink),
                    fixedSize:const  MaterialStatePropertyAll(Size(400.0,55.0),),
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(35.0)))

                ),
                child: const Text(
                  "LOG IN",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      letterSpacing: 10.0,
                      fontWeight: FontWeight.w900),
                ),
              ),
              const SizedBox(height: 30.0,),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/SignUpForm");
                },
                style: ButtonStyle(
                    backgroundColor:const MaterialStatePropertyAll(Colors.pink),
                    fixedSize:const  MaterialStatePropertyAll(Size(400.0,55.0),),
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(35.0)))

                ),
                child: const Text(
                  "SIGN UP",
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
