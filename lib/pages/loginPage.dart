import 'package:flutter/material.dart';
import 'package:calatogapp/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changebutton = false;
  final _formkey = GlobalKey<FormState>();

  movehome(BuildContext context) async {
    if(_formkey.currentState!.validate()){
      setState(() {
        changebutton = true;
      });

      await Future.delayed(Duration(seconds: 1));

      await Navigator.pushNamed(context, MyRoutes.homeRoute);

      setState(() {
        changebutton = false;
      });

    }

  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Form(
            key: _formkey,
            child: Column(
              children: [
                Image.asset(
                  "assets/images/login_image.png",
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Welcome $name",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 16.0, horizontal: 32),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                            hintText: "Enter UserName", labelText: "Username"),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Username can't be empty";
                          }

                          return null;
                        },
                        onChanged: (value) {
                          name = value;
                          setState(() {});
                        },
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: "Enter Password", labelText: "Password"),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "password can't be empty";
                          } else if (value.length < 8) {
                            return "Password length must be over 8";
                          }

                          return null;
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () => movehome(context),
                  child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                    height: 50,
                    width: changebutton ? 50 : 100,
                    //color: Colors.deepPurple,
                    alignment: Alignment.center,
                    child: changebutton
                        ? Icon(
                      Icons.done,
                      color: Colors.white,
                    )
                        : Text(
                      "Login",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),

                    decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      shape:
                      changebutton ? BoxShape.circle : BoxShape.rectangle,
                      //borderRadius: BorderRadius.circular(changebutton? 20: 10),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
