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

class MyHomePage2 extends StatefulWidget {
  static Route<dynamic> route() {
    return SimpleRoute(
      name: '/github',
      title: 'GitHub Projects',
      builder: (_) => MyHomePage2(),
    );
  }

  @override
  _MyHomePage2State createState() => _MyHomePage2State();
}

class _MyHomePage2State extends State<MyHomePage2> {
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
                    child: Tooltip(
                      message: "About me",
                      waitDuration: Duration(seconds: 1),
                      child: MaterialButton(
                        padding: EdgeInsets.all(0),
                        onPressed: () {
                          Navigator.of(context)
                              .pushReplacement(MyHomePage1.route());
                        },
                        child: Image.asset(
                          'images/dp.jpg',
                          width: 3000,
                        ),
                      ),
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
                    title: Text(
                      'Home',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                      ),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  Divider(
                    height: 2.0,
                  ),
                  ListTile(
                    leading: Icon(FontAwesomeIcons.github),
                    title: Text(
                      'GitHub Projects',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context)
                          .pushReplacement(MyHomePage2.route());
                    },
                  ),
                  Divider(
                    height: 2.0,
                  ),
                  ListTile(
                    leading: Icon(FontAwesomeIcons.bolt),
                    title: Text(
                      'Electronics Projects',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context)
                          .pushReplacement(MyHomePage3.route());
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
                        title: Text(
                          'Resume',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                          ),
                        ),
                        onTap: () {
                          launch('http://codenameakshay.tech/resume.pdf');
                        },
                      ),
                      Divider(
                        height: 2.0,
                      ),
                      ListTile(
                        leading: Icon(FontAwesomeIcons.linkedin),
                        title: Text(
                          'LinkedIn',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                          ),
                        ),
                        onTap: () {
                          launch(
                              'https://www.linkedin.com/in/akshay-maurya-b56664170/');
                        },
                      ),
                      Divider(
                        height: 2.0,
                      ),
                      ListTile(
                        leading: Icon(FontAwesomeIcons.facebook),
                        title: Text(
                          'Facebook',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                          ),
                        ),
                        onTap: () {
                          launch('https://www.facebook.com/akshay.maurya.180');
                        },
                      ),
                      Divider(
                        height: 2.0,
                      ),
                      ListTile(
                        leading: Icon(FontAwesomeIcons.instagram),
                        title: Text(
                          'Instagram',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                          ),
                        ),
                        onTap: () {
                          launch(
                              'https://www.instagram.com/codename_photographer/');
                        },
                      ),
                      Divider(
                        height: 2.0,
                      ),
                      ListTile(
                        leading: Icon(FontAwesomeIcons.githubAlt),
                        title: Text(
                          'GitHub',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                          ),
                        ),
                        onTap: () {
                          launch('https://github.com/codenameakshay/');
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
      } else if (constraints.maxWidth > 910 && constraints.maxWidth < 1200) {
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
                MaterialButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: Text(
                    'Home',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MyHomePage.route());
                  },
                ),
                SizedBox(width: 10),
                MaterialButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: Text(
                    'GitHub',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MyHomePage2.route());
                  },
                ),
                SizedBox(width: 10),
                MaterialButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: Text(
                    'Electronics',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MyHomePage3.route());
                  },
                ),
                SizedBox(width: 10),
                MaterialButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: Text(
                    'About Me',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MyHomePage1.route());
                  },
                ),
                SizedBox(width: 20),
                MaterialButton(
                  onPressed: () {
                    launch(
                        'https://www.linkedin.com/in/akshay-maurya-b56664170/');
                  },
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
                'GitHub Projects',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Montserrat',
                  fontSize: 40,
                ),
              ),
              Row(
                children: <Widget>[
                  Card(
                    color: Colors.white,
                    margin: EdgeInsets.only(top: 15, right: 15, bottom: 15),
                    child: Stack(
                      children: <Widget>[
                        Image.asset(
                          'images/git1.png',
                          width: 500,
                        ),
                        MaterialButton(
                            onPressed: () {
                              launch(
                                  'https://github.com/codenameakshay/tictactoe-flutter');
                            },
                            height: 136,
                            child: Text(
                                "                                                                                                                         "))
                      ],
                    ),
                  ),
                  Card(
                    color: Colors.white,
                    margin: EdgeInsets.all(15),
                    child: Stack(
                      children: <Widget>[
                        Image.asset(
                          'images/git2.png',
                          width: 500,
                        ),
                        MaterialButton(
                            onPressed: () {
                              launch(
                                  'https://github.com/codenameakshay/BMI-flutter');
                            },
                            height: 136,
                            child: Text(
                                "                                                                                                                         "))
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Card(
                    color: Colors.white,
                    margin: EdgeInsets.only(top: 15, right: 15, bottom: 15),
                    child: Stack(
                      children: <Widget>[
                        Image.asset(
                          'images/git3.png',
                          width: 500,
                        ),
                        MaterialButton(
                            onPressed: () {
                              launch(
                                  'https://github.com/codenameakshay/qr-scanner-flutter');
                            },
                            height: 136,
                            child: Text(
                                "                                                                                                                         "))
                      ],
                    ),
                  ),
                  Card(
                    color: Colors.white,
                    margin: EdgeInsets.all(15),
                    child: Stack(
                      children: <Widget>[
                        Image.asset(
                          'images/git4.png',
                          width: 500,
                        ),
                        MaterialButton(
                            onPressed: () {
                              launch(
                                  'https://github.com/codenameakshay/scientific-expression-calculator');
                            },
                            height: 136,
                            child: Text(
                                "                                                                                                                         "))
                      ],
                    ),
                  ),
                ],
              ),
              MaterialButton(
                onPressed: () {
                  launch('https://github.com/codenameakshay/');
                },
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
                    'Check all projects',
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
      // Padding(
      //   padding: const EdgeInsets.symmetric(vertical: 20),
      //   child: Image.asset(
      //     'images/hugo-productive-work.png',
      //     width: width * width / 5000,
      //   ),
      // )
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
                'GitHub Projects',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Montserrat',
                  fontSize: 40,
                ),
              ),
              Column(
                children: <Widget>[
                  Card(
                    color: Colors.white,
                    margin: EdgeInsets.only(top: 15),
                    child: Stack(
                      children: <Widget>[
                        Center(
                          child: Image.asset(
                            'images/git1.png',
                            width: 365,
                          ),
                        ),
                        Center(
                          child: MaterialButton(
                              onPressed: () {
                                launch(
                                    'https://github.com/codenameakshay/tictactoe-flutter');
                              },
                              height: 100,
                              child: Text(
                                  "                                                                                                                         ")),
                        )
                      ],
                    ),
                  ),
                  Card(
                    color: Colors.white,
                    margin: EdgeInsets.only(top: 15),
                    child: Stack(
                      children: <Widget>[
                        Center(
                          child: Image.asset(
                            'images/git2.png',
                            width: 365,
                          ),
                        ),
                        Center(
                          child: MaterialButton(
                              onPressed: () {
                                launch(
                                    'https://github.com/codenameakshay/BMI-flutter');
                              },
                              height: 100,
                              child: Text(
                                  "                                                                                                                         ")),
                        )
                      ],
                    ),
                  ),
                  Card(
                    color: Colors.white,
                    margin: EdgeInsets.only(top: 15),
                    child: Stack(
                      children: <Widget>[
                        Center(
                          child: Image.asset(
                            'images/git3.png',
                            width: 365,
                          ),
                        ),
                        Center(
                          child: MaterialButton(
                              onPressed: () {
                                launch(
                                    'https://github.com/codenameakshay/qr-scanner-flutter');
                              },
                              height: 100,
                              child: Text(
                                  "                                                                                                                         ")),
                        )
                      ],
                    ),
                  ),
                  Card(
                    color: Colors.white,
                    margin: EdgeInsets.only(top: 15,bottom:15),
                    child: Stack(
                      children: <Widget>[
                        Center(
                          child: Image.asset(
                            'images/git4.png',
                            width: 365,
                          ),
                        ),
                        Center(
                          child: MaterialButton(
                              onPressed: () {
                                launch(
                                    'https://github.com/codenameakshay/scientific-expression-calculator');
                              },
                              height: 100,
                              child: Text(
                                  "                                                                                                                         ")),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              MaterialButton(
                onPressed: () {
                  launch('https://github.com/codenameakshay/');
                },
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
                    'Check all projects',
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
