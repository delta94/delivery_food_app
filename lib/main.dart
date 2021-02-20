import 'package:delivery_food_app/screens/components_screen.dart';
import 'package:delivery_food_app/screens/navbar_screen.dart';
import 'package:delivery_food_app/screens/sign_in_screen.dart';
import 'package:delivery_food_app/screens/sign_up_screen.dart';
import 'package:delivery_food_app/theme/themedata.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: DataTheme.lightTheme,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Delivery Food App'),
      ),
      body: Center(
        child: Column(
          children: [
            RaisedButton(
              child: Text('Sign in'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => (SignInScreen())),
                );
              },
            ),
            RaisedButton(
              child: Text('Sign up'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => (SignUpScreen())),
                );
              },
            ),
            RaisedButton(
              child: Text('Components'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => (ComponentsScreen())),
                );
              },
            ),
            RaisedButton(
              child: Text('Navbar'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => (NavbarScreen())),
                );
              },
            ),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
