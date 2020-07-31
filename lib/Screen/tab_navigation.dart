import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:testfirstapp/Screen/burger_screen.dart';
import 'package:testfirstapp/Screen/donuts_screen.dart';

class TabNavigation extends StatefulWidget {
  @override
  _TabNavigationState createState() => _TabNavigationState();
}

class _TabNavigationState extends State<TabNavigation> {

  List<Widget>_screen= <Widget>[
    DonutScreen(),
    BurgerScreen(),
    DonutScreen(),
    BurgerScreen(),
    DonutScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
//
        preferredSize: Size.fromHeight(MediaQuery.of(context).size.height/3.2),
        child: AppBar(
          leading: Icon(Icons.short_text),
          actions: <Widget>[
            Padding(
              padding: EdgeInsets.only(right: 15, top: 8, bottom: 8, left: 10),
              child: CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage('assets/images/profile.jpg'),
              ),
            )
          ],
          elevation: 0.0,
          flexibleSpace: ClipPath(
            clipper: MyClipper(),
//          clipper: MessageClipper(),
            child: Container(
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
//                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, bottom: 5),
                    child: Text("I want to Eat...", style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25
                    ),),
                  ),
                   Padding(
                     padding: const EdgeInsets.all(15.0),
                     child: new TabBar(
                      indicatorColor: Colors.black,
                      labelColor: Colors.black,
                      unselectedLabelColor: Colors.grey,
                      tabs: choices.map((Choice choice) {
                        return Tab(
                          text: choice.title,
                          icon: choice.icon,

                        );
                      }).toList(),
                  ),
                   ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: TabBarView(
        children: choices.map((Choice choice) {
          return Container(
              color: Colors.blueGrey[100],
              child: ChoiceCard(choice: choice)
          );
        }).toList(),
      )
    );
  }
}
class Choice {
  const Choice({this.title, this.icon});

  final String title;
  final Image icon;
}

const List<Choice> choices = const <Choice>[
  const Choice(title: 'Donuts', icon: Image( image: AssetImage("assets/images/mini-donut.png"),)),
  const Choice(title: 'Burger', icon: Image( image: AssetImage("assets/images/burger.png"),)),
  const Choice(title: 'PanCake',icon: Image( image: AssetImage("assets/images/pancake.png"),)),
  const Choice(title: 'Smothie', icon: Image( image: AssetImage("assets/images/diet.png"),)),
  const Choice(title: 'Pizza', icon: Image( image: AssetImage("assets/images/pizza.png"),)),
];

class ChoiceCard extends StatelessWidget {
  const ChoiceCard({Key key, this.choice}) : super(key: key);

  final Choice choice;

  @override
  Widget build(BuildContext context) {
//    final TextStyle textStyle = Theme.of(context).textTheme.headline4;
    switch (choice.title){
      case "Donuts": return DonutScreen();  break;
      case "Burger": return BurgerScreen(); break;
      case "PanCake":return DonutScreen();  break;
      case "Smothie":return BurgerScreen(); break;
      case "Pizza":return DonutScreen();  break;
    }
  }
}

class MyClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, 0);
    path.lineTo(0, 0);
    path.quadraticBezierTo(0, 0, size.width /3, 0);
    path.quadraticBezierTo(size.width -size.width/20, 0, size.width, size.height);
    path.quadraticBezierTo(0 ,size.width/1.5,0, size.height-size.height/10);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }

}