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
import './github.dart';

class MyHomePage3 extends StatefulWidget {
  static Route<dynamic> route() {
    return SimpleRoute(
      name: '/electronics',
      title: 'Electronics Projects',
      builder: (_) => MyHomePage3(),
    );
  }

  @override
  _MyHomePage3State createState() => _MyHomePage3State();
}

class _MyHomePage3State extends State<MyHomePage3> {
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
                child: Stack(
                  fit: StackFit.expand,
                  children: <Widget>[
                    UserAccountsDrawerHeader(
                      accountName: Text(
                        'Akshay Maurya',
                        style:
                            TextStyle(fontFamily: "Montserrat", fontSize: 24),
                      ),
                      accountEmail: Text(
                        "akshaymaurya3006@gmail.com",
                        style:
                            TextStyle(fontFamily: "Montserrat", fontSize: 12),
                      ),
                      onDetailsPressed: () {
                        Navigator.of(context)
                            .pushReplacement(MyHomePage1.route());
                      },
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
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
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(5, 20, 80, 90),
                      child: CircleAvatar(
                        // width: 100,
                        // height: 100,
                        child: ClipOval(
                          clipBehavior: Clip.hardEdge,
                          child: Image.network(
                            'https://raw.githubusercontent.com/codenameakshay/blog/master/static/img/ak.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
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
                    message: "Navigate to my Blog",
                    waitDuration: Duration(seconds: 1),
                    child: ListTile(
                      leading: Icon(FontAwesomeIcons.blog),
                      title: Text(
                        'Blog',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                        ),
                      ),
                      onTap: () {
                        launch("https://blog-bd6w.onrender.com/");
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
                  message: "Checkout my blog",
                  waitDuration: Duration(seconds: 1),
                  child: MaterialButton(
                    onPressed: () {
                      launch('https://blog-bd6w.onrender.com/');
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
                      'Blog',
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
                'Electronics Projects',
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
                    margin: EdgeInsets.only(top: 15, right: 15),
                    child: Stack(
                      children: <Widget>[
                        Image.network(
                          'https://raw.githubusercontent.com/codenameakshay/.tech/master/assets/images/yt1.png',
                          width: 300,
                        ),
                        MaterialButton(
                            hoverColor: Colors.black26,
                            onPressed: () {
                              launch(
                                  'https://www.youtube.com/watch?v=A8pD1dj2Qsg');
                            },
                            height: 230,
                            child: Text(
                                "                                                                     "))
                      ],
                    ),
                  ),
                  Card(
                    color: Colors.white,
                    margin: EdgeInsets.only(top: 15, right: 15, left: 15),
                    child: Stack(
                      children: <Widget>[
                        Image.network(
                          'https://raw.githubusercontent.com/codenameakshay/.tech/master/assets/images/yt2.png',
                          width: 300,
                        ),
                        MaterialButton(
                            hoverColor: Colors.black26,
                            onPressed: () {
                              launch(
                                  'https://www.youtube.com/watch?v=_Wd3oHnJhHo');
                            },
                            height: 230,
                            child: Text(
                                "                                                                     "))
                      ],
                    ),
                  ),
                  Card(
                    color: Colors.white,
                    margin: EdgeInsets.only(top: 15, right: 15, left: 15),
                    child: Stack(
                      children: <Widget>[
                        Image.network(
                          'https://raw.githubusercontent.com/codenameakshay/.tech/master/assets/images/yt3.png',
                          width: 300,
                        ),
                        MaterialButton(
                            hoverColor: Colors.black26,
                            onPressed: () {
                              launch(
                                  'https://www.youtube.com/watch?v=35NZ8DxCS-g');
                            },
                            height: 230,
                            child: Text(
                                "                                                                     "))
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
                        Image.network(
                          'https://raw.githubusercontent.com/codenameakshay/.tech/master/assets/images/yt4.png',
                          width: 300,
                        ),
                        MaterialButton(
                            hoverColor: Colors.black26,
                            onPressed: () {
                              launch(
                                  'https://www.youtube.com/watch?v=iENXxbHCuU0');
                            },
                            height: 230,
                            child: Text(
                                "                                                                     "))
                      ],
                    ),
                  ),
                  Card(
                    color: Colors.white,
                    margin: EdgeInsets.all(15),
                    child: Stack(
                      children: <Widget>[
                        Image.network(
                          'https://raw.githubusercontent.com/codenameakshay/.tech/master/assets/images/yt5.png',
                          width: 300,
                        ),
                        MaterialButton(
                            hoverColor: Colors.black26,
                            onPressed: () {
                              launch(
                                  'https://www.youtube.com/watch?v=w1odfEejg-s');
                            },
                            height: 230,
                            child: Text(
                                "                                                                     "))
                      ],
                    ),
                  ),
                  Card(
                    color: Colors.white,
                    margin: EdgeInsets.all(15),
                    child: Stack(
                      children: <Widget>[
                        Image.network(
                          'https://raw.githubusercontent.com/codenameakshay/.tech/master/assets/images/yt6.png',
                          width: 300,
                        ),
                        MaterialButton(
                            hoverColor: Colors.black26,
                            onPressed: () {
                              launch(
                                  'https://www.youtube.com/watch?v=Yt7kgCYVjxU');
                            },
                            height: 230,
                            child: Text(
                                "                                                                     "))
                      ],
                    ),
                  ),
                ],
              ),
              MaterialButton(
                onPressed: () {
                  launch(
                      'https://www.youtube.com/channel/UCBSEFstqptgtYsLSAdq8tKg/videos');
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
    ];
  }

  Widget landingPageVert(var width, var height, var themeProvider) {
    return Stack(alignment: Alignment.topCenter, children: <Widget>[
      Opacity(
        opacity: 0.4,
        child: Container(
          margin: EdgeInsets.only(top: 100),
          child: Image.network(
            'https://raw.githubusercontent.com/codenameakshay/.tech/master/assets/images/hugo-productive-work.png',
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
                'Electronics Projects',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Montserrat',
                  fontSize: 40,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Card(
                    color: Colors.white,
                    margin: EdgeInsets.only(top: 15, right: 15),
                    child: Stack(
                      children: <Widget>[
                        Image.network(
                          'https://raw.githubusercontent.com/codenameakshay/.tech/master/assets/images/yt1.png',
                          width: 160,
                        ),
                        MaterialButton(
                            hoverColor: Colors.black26,
                            onPressed: () {
                              launch(
                                  'https://www.youtube.com/watch?v=A8pD1dj2Qsg');
                            },
                            height: 125,
                            child: Text("                                 "))
                      ],
                    ),
                  ),
                  Card(
                    color: Colors.white,
                    margin: EdgeInsets.only(top: 15, right: 15),
                    child: Stack(
                      children: <Widget>[
                        Image.network(
                          'https://raw.githubusercontent.com/codenameakshay/.tech/master/assets/images/yt2.png',
                          width: 160,
                        ),
                        MaterialButton(
                            hoverColor: Colors.black26,
                            onPressed: () {
                              launch(
                                  'https://www.youtube.com/watch?v=_Wd3oHnJhHo');
                            },
                            height: 125,
                            child: Text("                                 "))
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Card(
                    color: Colors.white,
                    margin: EdgeInsets.only(top: 15, right: 15),
                    child: Stack(
                      children: <Widget>[
                        Image.network(
                          'https://raw.githubusercontent.com/codenameakshay/.tech/master/assets/images/yt3.png',
                          width: 160,
                        ),
                        MaterialButton(
                            hoverColor: Colors.black26,
                            onPressed: () {
                              launch(
                                  'https://www.youtube.com/watch?v=35NZ8DxCS-g');
                            },
                            height: 125,
                            child: Text("                                 "))
                      ],
                    ),
                  ),
                  Card(
                    color: Colors.white,
                    margin: EdgeInsets.only(top: 15, right: 15),
                    child: Stack(
                      children: <Widget>[
                        Image.network(
                          'https://raw.githubusercontent.com/codenameakshay/.tech/master/assets/images/yt4.png',
                          width: 160,
                        ),
                        MaterialButton(
                            hoverColor: Colors.black26,
                            onPressed: () {
                              launch(
                                  'https://www.youtube.com/watch?v=iENXxbHCuU0');
                            },
                            height: 125,
                            child: Text("                                 "))
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Card(
                    color: Colors.white,
                    margin: EdgeInsets.only(top: 15, right: 15, bottom: 15),
                    child: Stack(
                      children: <Widget>[
                        Image.network(
                          'https://raw.githubusercontent.com/codenameakshay/.tech/master/assets/images/yt5.png',
                          width: 160,
                        ),
                        MaterialButton(
                            hoverColor: Colors.black26,
                            onPressed: () {
                              launch(
                                  'https://www.youtube.com/watch?v=w1odfEejg-s');
                            },
                            height: 125,
                            child: Text("                                 "))
                      ],
                    ),
                  ),
                  Card(
                    color: Colors.white,
                    margin: EdgeInsets.only(top: 15, right: 15, bottom: 15),
                    child: Stack(
                      children: <Widget>[
                        Image.network(
                          'https://raw.githubusercontent.com/codenameakshay/.tech/master/assets/images/yt6.png',
                          width: 160,
                        ),
                        MaterialButton(
                            hoverColor: Colors.black26,
                            onPressed: () {
                              launch(
                                  'https://www.youtube.com/watch?v=Yt7kgCYVjxU');
                            },
                            height: 125,
                            child: Text("                                 "))
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
