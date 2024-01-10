import 'package:flutter/material.dart';
import 'package:newprojectflutter/african.dart';
import 'package:newprojectflutter/asian.dart';
import 'package:newprojectflutter/middleeastern.dart';
import 'package:newprojectflutter/westren.dart';

class listmenufood extends StatefulWidget {
  const listmenufood({super.key});

  @override
  State<listmenufood> createState() => _listmenufood();
}

class _listmenufood extends State<listmenufood> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: NavigationDrawer(),
        body: ListView(
          children: <Widget>[
            Container(
                width: double.infinity,
                height: 800,
                decoration: BoxDecoration(
                  color: Color(0xFFE1DEDE),
                  shape: BoxShape.rectangle,
                ),
                child: ListView(children: <Widget>[
                  Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(10),
                    child: Image.asset(
                      'images/a.png',
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(12),
                    child: Material(
                      color: Color(0xFFB4B4B4),
                      elevation: 10,
                      borderRadius: BorderRadius.circular(20),
                      child: InkWell(
                          onTap: () {
                            Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const westren()),
                            );
                          },
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Ink.image(
                                image: AssetImage('images/westernfood.jpg'),
                                width: 200,
                                height: 120,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(width: 50),
                              Text('Western Food')
                            ],
                          )),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(12),
                    child: Material(
                      color: Color(0xFFB4B4B4),
                      elevation: 10,
                      borderRadius: BorderRadius.circular(20),
                      child: InkWell(
                          onTap: () {
                            Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const asian()),
                            );
                          },
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Ink.image(
                                image: AssetImage('images/aisanfood.jpg'),
                                width: 200,
                                height: 120,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(width: 50),
                              Text('Asian Food')
                            ],
                          )),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(12),
                    child: Material(
                      color: Color(0xFFB4B4B4),
                      elevation: 10,
                      borderRadius: BorderRadius.circular(20),
                      child: InkWell(
                          onTap: () {
                            Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const middleeastern()),
                            );
                          },
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Ink.image(
                                image:
                                    AssetImage('images/middleeasternfood.jpg'),
                                width: 200,
                                height: 120,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(width: 40),
                              Text('Middle Eastern Food')
                            ],
                          )),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(12),
                    child: Material(
                      color: Color(0xFFB4B4B4),
                      elevation: 10,
                      borderRadius: BorderRadius.circular(20),
                      child: InkWell(
                          onTap: () {
                            Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const african()),
                            );
                          },
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Ink.image(
                                image: AssetImage('images/africanfood.jpg'),
                                width: 200,
                                height: 120,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(width: 50),
                              Text('African Food')
                            ],
                          )),
                    ),
                  ),
                ])),
          ],
        ));
  }
}

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({super.key});

  @override
  Widget build(BuildContext context) => Drawer(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildHeader(context),
              buildMenuItems(context),
            ],
          ),
        ),
      );
  Widget buildHeader(BuildContext context) => Container(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top,
        ),
      );
  Widget buildMenuItems(BuildContext context) => Column(
        children: [

          Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(10),
                    child: Image.asset(
                      'images/a.png',
                    ),
                  ),

          Container(
            height: 20,
          ),        

          ListTile(
            leading: const Icon(Icons.home_outlined, ),
            title: const Text('Home', style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400),),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const listmenufood()),
              );
            },
          ),

          Container(
            height: 20,
          ), 

          ListTile(
            leading: const Icon(Icons.favorite),
            title: const Text('Favorite', style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400),),
            onTap: () {
              //Navigator.pushNamed(context, '/favorite');
            },
          ),

          Container(
            height: 20,
          ),  


          ListTile(
            leading: const Icon(Icons.web),
            title: const Text('Visit Website', style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400),),
            //onTap: () async => {await launch ( "https://www.youtube.com/shorts/Dk_j0f-HhaI") },
          ),

          

          Container(
            height: 50,
          ),  


          Center(
          child: Container(
        height: 50,
        width: 350,
        decoration: BoxDecoration(
            color: Colors.blueGrey.withOpacity(.75),
           // borderRadius: BorderRadius.circular(20),
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
              MaterialPageRoute(builder: (context) => const listmenufood()),
            );
          },
          child: Text(
            "Close",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
        ),
      )),

        ],
      );
}
