import 'package:flutter/material.dart';
import 'login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashScreen(),
      routes: {
        '/login':(context) => login(),
      },
    );


  }
}
class SplashScreen extends StatefulWidget{
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>{
  @override
  void initState(){
    super.initState();
    Future.delayed(Duration(seconds: 5),(){
      Navigator.pushReplacementNamed(context, '/login');
      Navigator.pushReplacementNamed(context, '/cadastro');

    });
  }
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
          title: Text('Splash Screen')
      ),
      body: Container(
        decoration: BoxDecoration(
        ),
        child: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );

  }

}
