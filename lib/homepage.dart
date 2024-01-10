import 'package:flutter/material.dart';
import 'package:newprojectflutter/login.dart';


class homepage extends StatefulWidget {
  const homepage({super.key});

  State<homepage> createState() => _setHomepage();
}

class _setHomepage extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("images/photo3.jpg"), fit: BoxFit.cover),
      ),
      child: Center(
          child: Container(
        height: 50,
        width: 350,
        decoration: BoxDecoration(
            color: Colors.blueGrey.withOpacity(.75),
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(.75),
                  blurRadius: 10,
                  spreadRadius: 2)
            ]),
        child: MaterialButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const loginpage()),
            );
          },
          child: Text(
            "Lets get started",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      )),
    );
  }
}


