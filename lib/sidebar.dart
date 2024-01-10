import 'package:flutter/material.dart';


class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer ({super.key});

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
      ListTile(
        leading: const Icon(Icons.home_outlined),
        title: const Text('Home'),
        onTap: (){ 
          //Navigator.pushNamed(context, '/HomePage');
        },
      ),
      ListTile(
        leading: const Icon(Icons.favorite),
        title: const Text('Favorite'),
        onTap: (){
          //Navigator.pushNamed(context, '/favorite');
        },
      ),
      ListTile(
        leading: const Icon(Icons.web),
        title: const Text('Visit Website'),
        //onTap: () async => {await launch ( "https://www.youtube.com/shorts/Dk_j0f-HhaI") },
      ),
    ],
  );
}
