import 'package:flutter/material.dart';
import 'package:newprojectflutter/listmenufood.dart';
import 'package:newprojectflutter/westren.dart';
//import 'package:url_launcher/url_launcher.dart';
// import './Rglobals.dart' as Rglobals;
class french extends StatefulWidget {
  const french({super.key});

  @override
  State<french> createState() => _french();
}

class _french extends State<french> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const NavigationDrawer(),
        body: ListView(
          children: <Widget>[


            Container(
                width: double.infinity,
                height: 800,
                decoration: BoxDecoration(
                  color: Color(0xFFE1DEDE),
                  shape: BoxShape.rectangle,
                ),
                child: ListView(
                    children: <Widget>[
                      Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.all(10),
                        child: Image.asset(
                          'images/a.png',
                        ),
                      ),


                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 20.0),
                        height: 40.0,
                        child: ListView(
                          // This next line does the trick.
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            Container(
                                width: 160.0,
                                child: ElevatedButton(
                                  child: const Text('Italian'),
                                  onPressed: () {
                                    Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(builder: (context) => const westren()),
                                );
                                  },
                                )
                            ),
                            Container(
                                width: 160.0,
                                child: ElevatedButton(
                                  child: const Text('French'),
                                  onPressed: () {
                                   Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(builder: (context) => const french()),
                                );
                                  },
                                )
                            ),
                            Container(
                                width: 160.0,
                                child: ElevatedButton(
                                  child: const Text('Spanish'),
                                  onPressed: () {
                                    Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(builder: (context) => const westren()),
                                );
                                  },
                                )
                            ),
                            Container(
                                width: 160.0,
                                child: ElevatedButton(
                                  child: const Text('Greek'),
                                  onPressed: () {
                                    Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(builder: (context) => const french()),
                                );
                                  },
                                )
                            ),
                          ],
                        ),
                      ),


                      Container(
                        padding: const EdgeInsets.all(10),

                        child: Material(
                          color: Color(0xFFB4B4B4),
                          elevation: 10,
                          borderRadius: BorderRadius.circular(20),


                          child: InkWell(
                              onTap: () {
                                // Rglobals.Name = 'Almondine';
                                // Rglobals.Recipe = "Bring a large pot of salted water to a boil. Meanwhile, prep an ice bath by filling a large bowl with ice and water. Cook green beans until crisp-tender, 2 to 3 minutes (you want them to be slightly undercooked as they will continue to cook later). Using a slotted spoon, immediately transfer beans to ice bath. Drain.In large skillet over medium-low heat, melt butter until lightly bubbling. Add almonds and cook, stirring frequently, until golden brown, 3 to 4 minutes. Reduce heat to low and add shallots and garlic. Cook, stirring occasionally, until fragrant, 2 to 3 minutes. Add green beans and toss until combined and beans are tender. Stir in lemon zest and juice, tossing to coat; season with salt and pepper.";
                                // Rglobals.Photo = 'assets/almondine.jpg';
                                // Navigator.pushNamed(context, '/recipes');
                              },
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [

                                  Ink.image(

                                    image: AssetImage('images/almondine.jpg'),
                                    width: 200,
                                    height: 120,
                                    fit: BoxFit.cover,
                                  ),
                                  SizedBox(width: 50),
                                  Text('Almondine')
                                ],
                              )

                          ),

                        ),
                      ),


                      Container(
                        padding: const EdgeInsets.all(10),

                        child: Material(
                          color: Color(0xFFB4B4B4),
                          elevation: 10,
                          borderRadius: BorderRadius.circular(20),


                          child: InkWell(
                              onTap: () {
                                // Rglobals.Name = 'Ambrosia Salad';
                                // Rglobals.Recipe = "In a large bowl, fold together Cool Whip and sour cream. Add oranges, pineapple, cherries, coconut, pecans, and marshmallows and stir gently.Cover and refrigerate for at least 1 hour and up to overnight. ";
                                // Rglobals.Photo = 'assets/ambrosia salad.jpg';
                                // Navigator.pushNamed(context, '/recipes');
                                },
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [

                                  Ink.image(

                                    image: AssetImage('images/ambrosia salad.jpg'),
                                    width: 200,
                                    height: 120,
                                    fit: BoxFit.cover,
                                  ),
                                  SizedBox(width: 50),
                                  Text('Ambrosia Salad')
                                ],
                              )

                          ),

                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(10),

                        child: Material(
                          color: Color(0xFFB4B4B4),
                          elevation: 10,
                          borderRadius: BorderRadius.circular(20),


                          child: InkWell(
                              onTap: () {
                                // Rglobals.Name = 'Meringue';
                                // Rglobals.Recipe = "Preheat oven to 200°. Line two sheet pans with parchment paper.In bowl of a stand mixer fitted with a whisk attachment, combine egg whites, cream of tartar, and salt. Beat on medium speed until whites are foamy and soft peaks form, about 1 minute. With mixer running, slowly add sugar 1 tablespoon at a time, then increase speed to high and beat until meringue is thick, marshmallow-like, and holds firm peaks, 4 to 6 minutes. Beat in peppermint extract.Fit a large disposable piping bag with a large tip and fold top back to create a cuff. Using a small paint brush, paint a few thin vertical stripes of red food coloring inside bag. Rest bag in an empty drinking glass to prop it up, then use a rubber spatula to scrape meringue into piping bag. Fold back top of bag and twist top to seal.Pipe 2” cookies on prepared sheet pans, leaving 1” between cookies. Bake until cookies are very crisp and hard to the touch, 1½ to 2 hours. Turn off oven and let cookies sit in oven until completely cool, about 2 hours.Place peppermints in bowl of a mini food processor. Pulse until candy is broken up into fine pieces. (Alternatively, place them in a small ziptop bag and crush with a meat mallet or rolling pin.) Transfer to a small bowl.In a small microwave-safe bowl, microwave chocolate chips in 30-second intervals, stirring between each, until melted and smooth.Working with one cookie at a time, dip bottom of meringue in chocolate and let excess drip off. Sprinkle some crushed peppermints over chocolate and return immediately back to baking sheet. Repeat with remaining cookies, then refrigerate until chocolate is set, 15 to 20 minutes. Store in an airtight container.";
                                // Rglobals.Photo = 'assets/Meringue.jpg';
                                // Navigator.pushNamed(context, '/recipes');
                              },
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [

                                  Ink.image(

                                    image: AssetImage(
                                        'images/Meringue.jpg'),
                                    width: 200,
                                    height: 120,
                                    fit: BoxFit.cover,
                                  ),
                                  SizedBox(width: 50),
                                  Text('Meringue')
                                ],
                              )

                          ),

                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(10),

                        child: Material(
                          color: Color(0xFFB4B4B4),
                          elevation: 10,
                          borderRadius: BorderRadius.circular(20),


                          child: InkWell(
                              onTap: () {
                                // Rglobals.Name = 'Roasted Fennel';
                                // Rglobals.Recipe = "Preheat oven to 400º. In a small bowl, combine shallot, vinegar, and 1/2 teaspoon salt. Let sit, stirring occasionally, while vegetables roast.On a large rimmed baking sheet, toss fennel, squash, apple, oil, 1 teaspoon salt, and 1/2 teaspoon pepper with your hands. Transfer some of the fennel mixture to another baking sheet so vegetables are in an even layer.Roast vegetables, rotating pans halfway through, until golden brown and tender, 35 to 45 minutes.Transfer vegetables to a platter. Top with pickled shallots, hazelnuts, pomegranate seeds, and parsley.";
                                // Rglobals.Photo = 'assets/roasted fennel.jpg';
                                // Navigator.pushNamed(context, '/recipes');
                                },
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [

                                  Ink.image(

                                    image: AssetImage('images/roasted fennel.jpg'),
                                    width: 200,
                                    height: 120,
                                    fit: BoxFit.cover,
                                  ),
                                  SizedBox(width: 50),
                                  Text('Roasted Fennel')
                                ],
                              )

                          ),

                        ),
                      ),


                    ]
                )
            ),
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
