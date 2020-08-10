import 'package:flutter/material.dart';
import 'adminlogin.dart';
import 'stafflogin.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BookStore Scaffold',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final logo =Hero(
        tag: "hero",
        child: CircleAvatar(
          backgroundColor: Colors.transparent,
          radius:150.0,
          child: Image.asset('assets/logo1.jpg'),
        )
    );
     return Scaffold(
       body:Center(
         child: ListView(
           shrinkWrap: true,
           padding: EdgeInsets.only(left:  24.0,right: 24.0),
           children: <Widget>[
           logo,
           SizedBox(height: 50.0,),
           Card(color: Colors.purple,
             child: ListTile(
              title: Text('Admin'),
             onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => AdminLogin()));},
           ),),
             Card(color: Colors.purple,
               child: ListTile(
                title: Text('Staff'),
               onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => StaffLogin()));},
             ),),
           ]
         ),
       ),
     );
  }
}