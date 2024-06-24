import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:upgrade_employ/component/constante.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
//We need two text editing controller

//TextEditing controller to control the text when we enter it
  final Email = TextEditingController();
  final password = TextEditingController();

  //A bool variable for show and hide password
  bool isVisible = true;

  //We have to create global key for our form
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              key: formKey,
              children: [
                //Email field
                //Before we show the image, after we copied the image we need to define the location in pubspec.yaml
                Image.asset(
                  '${Constante.imagePath}login.png',
                  width: 200,
                ),
                const SizedBox(height: 15),

                Text(
                  'Log in',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),

                Container(
                  margin: EdgeInsets.all(8),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.blue.withOpacity(.2)),
                  child: TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Email is required";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      icon: Icon(Icons.email),
                      border: InputBorder.none,
                      hintText: "Email",
                    ),
                  ),
                ),

                //Password field
                Container(
                  margin: const EdgeInsets.all(8),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.blue.withOpacity(.2)),
                  child: TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "password is required";
                      }
                      return null;
                    },
                    obscureText: isVisible,
                    decoration: InputDecoration(
                        icon: Icon(Icons.lock),
                        border: InputBorder.none,
                        hintText: "Password",
                        suffixIcon: IconButton(
                            onPressed: () {
                              //In here we will create a click tio show and hide the password a toggle button
                              setState(() {
                                //toggle button
                                isVisible = !isVisible;
                              });
                            },
                            icon: Icon(isVisible
                                ? Icons.visibility
                                : Icons.visibility_off))),
                  ),
                ),
                const SizedBox(height: 10),

                //Login button
                Container(
                  height: MediaQuery.of(context).size.height * 0.1,
                  width: MediaQuery.of(context).size.width * .9,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.blue,
                  ),
                  child: TextButton(
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          //Login method willw bw here
                        }
                      },
                      child: const Text(
                        "LOGIN",
                        style: TextStyle(color: Colors.white),
                      )),
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text('Log in with'),
                  IconButton(
                    icon: Icon(Icons.facebook),
                    onPressed: () {},
                  ),
                  /*IconButton(icon: Icon(Icons.google),
                    onPressed: (){},),
                    IconButton(icon: Icon(Icons.github),
                    onPressed: (){},),*/
                ]),
                /*isLoginTrue
                    ? const Text(
                        "Username or passowrd is incorrect",
                        style: TextStyle(color: Colors.red),
                      )
                    : const SizedBox(),*/
              ],
            ),
          ),
        ),
      ),
    );
  }
}
