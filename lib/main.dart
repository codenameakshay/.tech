import 'package:flutter/material.dart';
import './theme_provider.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/cupertino.dart';
import './homepage.dart';
import './about.dart';
import './electronics.dart';
import './github.dart';
import './routes.dart';

void main() {
  runApp(
    ChangeNotifierProvider<DynamicTheme>(
      create: (_) => DynamicTheme(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<DynamicTheme>(context);
    return MaterialApp(
      onGenerateRoute: (settings) {
        switch(settings.name) {
          case "/": return MyHomePage.route();
          case "/about": return MyHomePage1.route();
          case "/github": return MyHomePage2.route();
          case "/electronics": return MyHomePage3.route();
          // case "/download": return Download.route();
          default: return MyHomePage.route();
        }
      },
      initialRoute: "/",
      debugShowCheckedModeBanner: false,
      theme: themeProvider.getDarkMode()
          ? ThemeData(
              primarySwatch: Colors.lightBlue,
              textTheme: TextTheme(
                headline6:
                    TextStyle(color: Colors.white, fontFamily: 'Montserrat'),
              ),
            )
          : ThemeData.dark(),
      // home: MyHomePage(),
    );
  }
}
