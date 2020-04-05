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
                  child: Stack(
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.network(
                          'https://raw.githubusercontent.com/codenameakshay/.tech/master/assets/images/dp.jpg',
                          width: 3000,
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Tooltip(
                          message: "About me",
                          waitDuration: Duration(seconds: 1),
                          child: MaterialButton(
                            height: 215,
                            padding: EdgeInsets.all(0),
                            onPressed: () {
                              Navigator.of(context)
                                  .pushReplacement(MyHomePage1.route());
                            },
                            child: Text(
                                '                                                                       '),
                          ),
                        ),
                      ),
                    ],
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
                  Tooltip(
                    message: "Navigate to Homepage",
                    waitDuration: Duration(seconds: 1),
                    child: ListTile(
                      leading: Icon(FontAwesomeIcons.home),
                      title: Text(
                        'Home',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                        ),
                      ),
                      onTap: () {
                        Navigator.of(context)
                            .pushReplacement(MyHomePage.route());
                      },
                    ),
                  ),
                  Divider(
                    height: 2.0,
                  ),
                  Tooltip(
                    message: "Navigate to GitHub Projects",
                    waitDuration: Duration(seconds: 1),
                    child: ListTile(
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
                  ),
                  Divider(
                    height: 2.0,
                  ),
                  Tooltip(
                    message: "Navigate to Electronics Projects",
                    waitDuration: Duration(seconds: 1),
                    child: ListTile(
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
                      Tooltip(
                        message: "Navigate to my Resume",
                        waitDuration: Duration(seconds: 1),
                        child: ListTile(
                          leading: Icon(FontAwesomeIcons.book),
                          title: Text(
                            'Resume',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                            ),
                          ),
                          onTap: () {
                            launch('https://codenameakshay.tech/resume.pdf');
                          },
                        ),
                      ),
                      Divider(
                        height: 2.0,
                      ),
                      Tooltip(
                        message: "Navigate to my LinkedIn Page",
                        waitDuration: Duration(seconds: 1),
                        child: ListTile(
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
                      ),
                      Divider(
                        height: 2.0,
                      ),
                      Tooltip(
                        message: "Navigate to my Facebook Page",
                        waitDuration: Duration(seconds: 1),
                        child: ListTile(
                          leading: Icon(FontAwesomeIcons.facebook),
                          title: Text(
                            'Facebook',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                            ),
                          ),
                          onTap: () {
                            launch(
                                'https://www.facebook.com/akshay.maurya.180');
                          },
                        ),
                      ),
                      Divider(
                        height: 2.0,
                      ),
                      Tooltip(
                        message: "Navigate to my Instagram Page",
                        waitDuration: Duration(seconds: 1),
                        child: ListTile(
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
                      ),
                      Divider(
                        height: 2.0,
                      ),
                      Tooltip(
                        message: "Navigate to my GitHub Page",
                        waitDuration: Duration(seconds: 1),
                        child: ListTile(
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
                      ),
                      Divider(
                        height: 2.0,
                      ),
                    ],
                  ),
                  Builder(
                    builder: (context) => ListTile(
                      title: Tooltip(
                        message: "Toggle dark mode on/off",
                        waitDuration: Duration(seconds: 1),
                        child: Text(
                          'Toggle Dark mode',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                          ),
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
                Tooltip(
                  message: "Akshay Maurya",
                  waitDuration: Duration(seconds: 1),
                  child: Text(
                    'CodeNameAkshay',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 30,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Tooltip(
                  message: "Navigate to Homepage",
                  waitDuration: Duration(seconds: 1),
                  child: MaterialButton(
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
                ),
                SizedBox(width: 10),
                Tooltip(
                  message: "Navigate to GitHub Projects",
                  waitDuration: Duration(seconds: 1),
                  child: MaterialButton(
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
                      Navigator.of(context)
                          .pushReplacement(MyHomePage2.route());
                    },
                  ),
                ),
                SizedBox(width: 10),
                Tooltip(
                  message: "Navigate to Electronics Projects",
                  waitDuration: Duration(seconds: 1),
                  child: MaterialButton(
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
                      Navigator.of(context)
                          .pushReplacement(MyHomePage3.route());
                    },
                  ),
                ),
                SizedBox(width: 10),
                Tooltip(
                  message: "Know me more",
                  waitDuration: Duration(seconds: 1),
                  child: MaterialButton(
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
                      Navigator.of(context)
                          .pushReplacement(MyHomePage1.route());
                    },
                  ),
                ),
                SizedBox(width: 20),
                Tooltip(
                  message: "Contact me for work",
                  waitDuration: Duration(seconds: 1),
                  child: MaterialButton(
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
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
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
            Tooltip(
              message: "Akshay Maurya",
              waitDuration: Duration(seconds: 1),
              child: Text(
                'CodeNameAkshay',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 30,
                  fontFamily: 'Montserrat',
                ),
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
                'About Me',
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
                  "Hello, if we are meeting for the first time, I am Akshay Maurya, an engineering undergrad from Delhi, India.\nI am pursing engineering from Netaji Subhas University of Technology, Delhi in Electronics and Communications\nbranch. I love to create electronics projects which involve designing new circuits, soldering, fabricating them,\nand more. I also like to use microcontrollers and microprocessors to implement various circuits and have won many\ncompetitions by making projects like Smart Home Lock, Creating Energy from LEDs, and much more. I also like to\ncode and program and I know many languages like C, C++, Python, MATLAB, DART, HTML, CSS and frameworks like\nAnaconda, Bootstrap, Flutter and more. I have also developed many Android as well iOS Applications using Flutter.\nI developed this whole website using Flutter in just 4 days. I also like to do photography and video editing,\nand have been doing it since a long time so I know Photoshop, Lightroom, Premiere Pro, After Effects and more.\nI have also worked as an video editor for a couple of YouTube channels excluding my own. In my channel, I\nregularly upload videos on how to make various electronics projects. I also upload photography and video editing\ntutorials on my Insatgram page. You can also checkout my LInkedIn page for contacting me.",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Montserrat',
                    fontSize: 16,
                  ),
                ),
              ),
              MaterialButton(
                onPressed: () {
                  launch('mailto:akshaymaurya3006@gmail.com');
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
                    'Contact Me',
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
        child: Image.network(
          'https://raw.githubusercontent.com/codenameakshay/.tech/master/assets/images/hugo-easy-money.png',
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
          child: Image.network(
            'https://raw.githubusercontent.com/codenameakshay/.tech/master/assets/images/hugo-easy-money.png',
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
                'About Me',
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
                  "Hello, if we are meeting for the first time, I am Akshay Maurya, an engineering undergrad from Delhi, India.\nI am pursing engineering from Netaji Subhas University of Technology, Delhi in Electronics and Communications\nbranch. I love to create electronics projects which involve designing new circuits, soldering, fabricating them,\nand more. I also like to use microcontrollers and microprocessors to implement various circuits and have won many\ncompetitions by making projects like Smart Home Lock, Creating Energy from LEDs, and much more. I also like to\ncode and program and I know many languages like C, C++, Python, MATLAB, DART, HTML, CSS and frameworks like\nAnaconda, Bootstrap, Flutter and more. I have also developed many Android as well iOS Applications using Flutter.\nI developed this whole website using Flutter in just 4 days. I also like to do photography and video editing,\nand have been doing it since a long time so I know Photoshop, Lightroom, Premiere Pro, After Effects and more.\nI have also worked as an video editor for a couple of YouTube channels excluding my own. In my channel, I\nregularly upload videos on how to make various electronics projects. I also upload photography and video editing\ntutorials on my Insatgram page. You can also checkout my LInkedIn page for contacting me.",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Montserrat',
                    fontSize: 13,
                  ),
                ),
              ),
              MaterialButton(
                onPressed: () {
                  launch('mailto:akshaymaurya3006@gmail.com');
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
                    'Contact Me',
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
