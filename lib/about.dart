import 'package:flutter/material.dart';
import './theme_provider.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:math';
import './routes.dart';
import './homepage.dart';
import './about.dart';
import './electronics.dart';
import './github.dart';

class MyHomePage1 extends StatefulWidget {
  static Route<dynamic> route() {
    return SimpleRoute(
      name: '/about',
      title: 'About',
      builder: (_) => MyHomePage1(),
    );
  }

  @override
  _MyHomePage1State createState() => _MyHomePage1State();
}

class _MyHomePage1State extends State<MyHomePage1> {
  final GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<DynamicTheme>(context);
    return Scaffold(
      key: scaffoldKey,
      drawer: Drawer(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.85,
                child: DrawerHeader(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      'images/logo.jfif',
                    ),
                  ),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color.fromARGB(255, 60, 140, 231),
                        Color.fromARGB(255, 0, 234, 255),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  Divider(
                    height: 2.0,
                  ),
                  ListTile(
                    leading: Icon(FontAwesomeIcons.home),
                    //  SizedBox(
                    //     height: 20,
                    //     width: 20,
                    //     child: Image.asset('icon/home--v2.png')),
                    title: Text(
                      'Home',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                      ),
                    ),
                    onTap: () {
                      // Navigator.pop(context);
                    },
                  ),
                  Divider(
                    height: 2.0,
                  ),
                  ListTile(
                    leading: Icon(FontAwesomeIcons.github),
                    // SizedBox(
                    //     height: 20, width: 20, child: Image.asset('icon/github.png')),
                    title: Text(
                      'GitHub Projects',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context)
                          .pushReplacement(MyHomePage2.route());
                      // Navigator.pop(context);
                    },
                  ),
                  Divider(
                    height: 2.0,
                  ),
                  ListTile(
                    leading: Icon(FontAwesomeIcons.bolt),
                    //  SizedBox(
                    //     height: 20,
                    //     width: 20,
                    //     child: Image.asset('icon/electronics.png')),
                    title: Text(
                      'Electronics Projects',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                      ),
                    ),
                    onTap: () {
                      // Navigator.pop(context);
                    },
                  ),
                  Divider(
                    height: 2.0,
                  ),
                  ExpansionTile(
                    leading: Icon(FontAwesomeIcons.phone),
                    title: Text(
                      'Contact Me',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                      ),
                    ),
                    children: <Widget>[
                      ListTile(
                        leading: Icon(FontAwesomeIcons.book),
                        // SizedBox(
                        //     height: 20,
                        //     width: 20,
                        //     child: Image.asset('icon/linkedin.png')),
                        title: Text(
                          'Resume',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                          ),
                        ),
                        onTap: () {
                          // Navigator.pop(context);
                        },
                      ),
                      Divider(
                        height: 2.0,
                      ),
                      ListTile(
                        leading: Icon(FontAwesomeIcons.linkedin),
                        // SizedBox(
                        //     height: 20,
                        //     width: 20,
                        //     child: Image.asset('icon/linkedin.png')),
                        title: Text(
                          'LinkedIn',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                          ),
                        ),
                        onTap: () {
                          // Navigator.pop(context);
                        },
                      ),
                      Divider(
                        height: 2.0,
                      ),
                      ListTile(
                        leading: Icon(FontAwesomeIcons.facebook),
                        // SizedBox(
                        //     height: 20,
                        //     width: 20,
                        //     child: Image.asset('icon/linkedin.png')),
                        title: Text(
                          'Facebook',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                          ),
                        ),
                        onTap: () {
                          // Navigator.pop(context);
                        },
                      ),
                      Divider(
                        height: 2.0,
                      ),
                      ListTile(
                        leading: Icon(FontAwesomeIcons.instagram),
                        // SizedBox(
                        //     height: 20,
                        //     width: 20,
                        //     child: Image.asset('icon/linkedin.png')),
                        title: Text(
                          'Instagram',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                          ),
                        ),
                        onTap: () {
                          // Navigator.pop(context);
                        },
                      ),
                      Divider(
                        height: 2.0,
                      ),
                      ListTile(
                        leading: Icon(FontAwesomeIcons.githubAlt),
                        // SizedBox(
                        //     height: 20,
                        //     width: 20,
                        //     child: Image.asset('icon/linkedin.png')),
                        title: Text(
                          'GitHub',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                          ),
                        ),
                        onTap: () {
                          // Navigator.pop(context);
                        },
                      ),
                      Divider(
                        height: 2.0,
                      ),
                    ],
                  ),

                  Builder(
                    builder: (context) => ListTile(
                      title: Text(
                        'Toggle Dark mode',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                        ),
                      ),
                      leading: Icon(FontAwesomeIcons.lightbulb),
                      onTap: () {
                        setState(() {
                          themeProvider
                              .changeDarkMode(!themeProvider.isDarkMode);
                        });
                        Navigator.pop(context);
                      },
                      trailing: CupertinoSwitch(
                        value: themeProvider.getDarkMode(),
                        onChanged: (value) {
                          setState(() {
                            themeProvider.changeDarkMode(value);
                          });
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  ),
                  Divider(
                    height: 2.0,
                  ),
                  // Builder(
                  //   builder: (context) => ListTile(
                  //     leading: Icon(Icons.open_in_browser),
                  //     title: new InkWell(
                  //         child: Text('Visit my website!'),
                  //         onTap: () {
                  //           launch('http://codenameakshay.tech');
                  //           Navigator.pop(context);
                  //         }),
                  //     onTap: () {
                  //       Navigator.pop(context);
                  //     },
                  //   ),
                  // ),
                  // Divider(
                  //   height: 2.0,
                  // ),
                ],
              ),
            )
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: themeProvider.getDarkMode()
                    ? [
                        Color.fromARGB(255, 3, 0, 30),
                        Color.fromARGB(255, 115, 3, 192),
                        Color.fromARGB(255, 236, 56, 188),
                        Color.fromARGB(255, 253, 239, 249),
                      ]
                    : [
                        Color.fromARGB(255, 60, 140, 231),
                        Color.fromARGB(255, 0, 234, 255),
                      ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight)),
        child: Column(
          children: <Widget>[NavBar(openDrawer), LandingPage()],
        ),
      ),
    );
  }

  void openDrawer() {
    setState(() {
      scaffoldKey.currentState.openDrawer();
    });
  }
}

class NavBar extends StatelessWidget {
  var openDrawer;
  NavBar(this.openDrawer);
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 1200) {
        return DesktopNavBar(
          width: constraints.maxWidth,
          height: constraints.maxHeight,
          openDrawer: openDrawer,
        );
      } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
        return DesktopNavBar(
          width: constraints.maxWidth,
          height: constraints.maxHeight,
          openDrawer: openDrawer,
        );
      } else {
        return MobileNavBar(
          width: constraints.maxWidth,
          height: constraints.maxHeight,
          openDrawer: openDrawer,
        );
      }
    });
  }
}

class DesktopNavBar extends StatelessWidget {
  var width;
  var height;
  var openDrawer;
  DesktopNavBar({this.width, this.height, this.openDrawer});
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<DynamicTheme>(context);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Container(
        constraints: BoxConstraints(maxWidth: width),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'CodeNameAkshay',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 30,
                    fontFamily: 'Montserrat',
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Text(
                  'Home',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Montserrat',
                  ),
                ),
                SizedBox(width: 30),
                Text(
                  'GitHub',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Montserrat',
                  ),
                ),
                SizedBox(width: 30),
                Text(
                  'Electronics',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Montserrat',
                  ),
                ),
                SizedBox(width: 30),
                Text(
                  'About',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Montserrat',
                  ),
                ),
                SizedBox(width: 30),
                MaterialButton(
                  onPressed: () {},
                  color: themeProvider.getDarkMode()
                      ? Color.fromARGB(255, 115, 3, 192)
                      : Colors.cyanAccent[400],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: Text(
                    'Hire Me',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class MobileNavBar extends StatelessWidget {
  var width;
  var height;
  var openDrawer;
  MobileNavBar({this.width, this.height, this.openDrawer});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
                icon: Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
                onPressed: () {
                  openDrawer();
                }),
            Text(
              'CodeNameAkshay',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 30,
                fontFamily: 'Montserrat',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LandingPage extends StatelessWidget {
  List<Widget> landingPageChild(var width, var height, var themeProvider) {
    return <Widget>[
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30.0),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'App\nDeveloper',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Montserrat',
                  fontSize: 40,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 20,
                ),
                child: Text(
                  "I am experienced Electronic Engineer with a demonstrated history of working in the electrical \nand electronic manufacturing industry. Skilled in Python (Programming Language), DART, \nFlutter, Android App Development, Web Development, Lightroom, Video Editing, Digital \nManipulation, and Adobe Photoshop. I also have strong engineering professional with a BTech - \nBachelor of Technology focused in Electrical, Electronics and Communications Engineering \nfrom Netaji Subhas Institute of Technology.",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Montserrat',
                    fontSize: 16,
                  ),
                ),
              ),
              MaterialButton(
                onPressed: () {},
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                  child: Text(
                    'Check projects',
                    style: TextStyle(
                      color: themeProvider.getDarkMode()
                          ? Color.fromARGB(255, 115, 3, 192)
                          : Colors.cyan,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Image.asset(
          'images/hugo-productive-work.png',
          width: width * width / 5000,
        ),
      )
    ];
  }

  Widget landingPageVert(var width, var height, var themeProvider) {
    return Stack(alignment: Alignment.topCenter, children: <Widget>[
      Opacity(
        opacity: 0.4,
        child: Container(
          margin: EdgeInsets.only(top: 100),
          child: Image.asset(
            'images/hugo-productive-work.png',
            width: sqrt(width) * 18,
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30.0),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'App\nDeveloper',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Montserrat',
                  fontSize: 40,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 20,
                ),
                child: Text(
                  "I am experienced Electronic Engineer with a demonstrated history of working in the electrical \nand electronic manufacturing industry. Skilled in Python (Programming Language), DART, \nFlutter, Android App Development, Web Development, Lightroom, Video Editing, Digital \nManipulation, and Adobe Photoshop. I also have strong engineering professional with a BTech - \nBachelor of Technology focused in Electrical, Electronics and Communications Engineering \nfrom Netaji Subhas Institute of Technology.",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Montserrat',
                    fontSize: 16,
                  ),
                ),
              ),
              MaterialButton(
                onPressed: () {},
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                  child: Text(
                    'Check projects',
                    style: TextStyle(
                      color: themeProvider.getDarkMode()
                          ? Color.fromARGB(255, 115, 3, 192)
                          : Colors.cyan,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final themeProvider = Provider.of<DynamicTheme>(context);
        if (constraints.maxWidth > 1200) {
          return ListView(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: landingPageChild(
                    constraints.maxWidth,
                    constraints.maxHeight,
                    themeProvider,
                  ),
                )
              ]);
        } else {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              landingPageVert(
                constraints.maxWidth,
                constraints.maxHeight,
                themeProvider,
              )
            ],
          );
        }
      },
    );
  }
}
