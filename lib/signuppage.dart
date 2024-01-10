import 'package:flutter/material.dart';
import 'package:newprojectflutter/login.dart';

class signuppage extends StatefulWidget {
  const signuppage({super.key});

  State<signuppage> createState() => _setSignUp();
}

class _setSignUp extends State<signuppage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: DecoratedBox(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/b.png"), fit: BoxFit.cover),
            ),
            child: Stack(
              children: [
                Center(
                    child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Container(
                      height: 600,
                      width: 400,
                      decoration: BoxDecoration(
                          color: Colors.blueGrey.withOpacity(.75),
                          borderRadius:const BorderRadius.all(Radius.circular(20)),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(.75),
                                blurRadius: 10,
                                spreadRadius: 2)
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const TextField(
                                  //controller: _nameController,
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                  cursorColor: Colors.white,
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: InputDecoration(
                                    prefixIcon: Icon(
                                      Icons.person,
                                      color: Colors.white,
                                    ),
                                    hintText: 'User Name',
                                    prefixText: ' ',
                                    hintStyle: TextStyle(color: Colors.white),
                                    focusColor: Colors.white,
                                    focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                      color: Colors.white,
                                    )),
                                    enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                      color: Colors.white,
                                    )),
                                  )),
                              const SizedBox(
                                height: 10,
                              ),
                              const TextField(
                                  //controller: _emailController,
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                  cursorColor: Colors.white,
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: InputDecoration(
                                    prefixIcon: Icon(
                                      Icons.mail,
                                      color: Colors.white,
                                    ),
                                    hintText: 'E-Mail',
                                    prefixText: ' ',
                                    hintStyle: TextStyle(color: Colors.white),
                                    focusColor: Colors.white,
                                    focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                      color: Colors.white,
                                    )),
                                    enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                      color: Colors.white,
                                    )),
                                  )),
                              const SizedBox(
                                height: 10,
                              ),
                              const TextField(
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                  cursorColor: Colors.white,
                                  //   controller: _passwordController,
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    prefixIcon: Icon(
                                      Icons.vpn_key,
                                      color: Colors.white,
                                    ),
                                    hintText: 'Password',
                                    prefixText: ' ',
                                    hintStyle: TextStyle(color: Colors.white),
                                    focusColor: Colors.white,
                                    focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                      color: Colors.white,
                                    )),
                                    enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                      color: Colors.white,
                                    )),
                                  )),
                              const SizedBox(
                                height: 10,
                              ),
                              const TextField(
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                  cursorColor: Colors.white,
                                  //     controller: _passwordAgainController,
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    prefixIcon: Icon(
                                      Icons.vpn_key,
                                      color: Colors.white,
                                    ),
                                    hintText: 'Repeat Password',
                                    prefixText: ' ',
                                    hintStyle: TextStyle(color: Colors.white),
                                    focusColor: Colors.white,
                                    focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                      color: Colors.white,
                                    )),
                                    enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                      color: Colors.white,
                                    )),
                                  )),
                              const SizedBox(
                                height: 20,
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const loginpage()),
                                  );
                                },
                                child: Container(
                                  padding:const EdgeInsets.symmetric(vertical: 5),
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.white, width: 2),
                                      //color: colorPrimaryShade,
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(30))),
                                  child: const Padding(
                                    padding: EdgeInsets.all(5.0),
                                    child: Center(
                                        child: Text(
                                      "Save",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                      ),
                                    )),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )),
                )),

                // Padding(
                //   padding:EdgeInsets.only(top: 10, left: 10),
                // )
              ],
            )));
  }
}
