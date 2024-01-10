import 'package:flutter/material.dart';
import 'package:newprojectflutter/listmenufood.dart';
import './Rglobals.dart' as Rglobals;
import './globals.dart' as globals;
import 'package:url_launcher/url_launcher.dart';

class recipes extends StatefulWidget {
  const recipes({super.key});

  @override
  State<recipes> createState() => _recipes();
}

class _recipes extends State<recipes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const NavigationDrawer(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            if (Rglobals.Name == 'Risotto') {
              globals.isVisible5 = true;
            } else if (Rglobals.Name == 'Pasta') {
              globals.isVisible6 = true;
            } else if (Rglobals.Name == 'Calzone') {
              globals.isVisible7 = true;
            } else if (Rglobals.Name == 'Pizza') {
              globals.isVisible8 = true;
            } else if (Rglobals.Name == 'Almondine') {
              globals.isVisible1 = true;
            } else if (Rglobals.Name == 'Ambrosia Salad') {
              globals.isVisible2 = true;
            } else if (Rglobals.Name == 'Meringue') {
              globals.isVisible3 = true;
            } else if (Rglobals.Name == 'Roasted Fennel') {
              globals.isVisible4 = true;
            }
          },
          child: Icon(Icons.add),
        ),
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
                      padding: const EdgeInsets.fromLTRB(60, 10, 60, 10),
                      child: ClipRRect(
                        borderRadius:
                            BorderRadius.circular(10.0), //add border radius
                        child: Image.asset(
                          Rglobals.Photo,
                          height: 150.0,
                          width: 75.0,
                          fit: BoxFit.cover,
                        ),
                      )),
                  Container(
                    padding: const EdgeInsets.all(20),
                    child: Text(
                      Rglobals.Name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 50,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                  Container(
                      padding: const EdgeInsets.all(10),
                      height: 330,
                      child: Expanded(
                        child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: Text(
                            Rglobals.Recipe,
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ),
                      )),
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
