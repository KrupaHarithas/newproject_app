import 'package:flutter/material.dart';
import 'stafflogin.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  static String tag ='signup';
  @override
  Widget build(BuildContext context) {
    final logo =Hero(
        tag: "hero",
        child: CircleAvatar(
          backgroundColor: Colors.transparent,
          radius:120.0,
          child: Image.asset('assets/logo1.jpg'),
        )
    );

    final fullname = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
//    initialValue:'null',
      decoration: InputDecoration(
          hintText: 'Full Name',
          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0,20.0,10.0),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))
      ),
    );

    final phone = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
//    initialValue:'null',
      decoration: InputDecoration(
          hintText: 'Ph No',
          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0,20.0,10.0),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))
      ),
    );

    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
//    initialValue:'null',
      decoration: InputDecoration(
          hintText: 'email',
          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0,20.0,10.0),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))
      ),
    );

    final  password = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
//    initialValue:'null',
      decoration: InputDecoration(
          hintText: 'password',
          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0,20.0,10.0),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))
      ),
    );

    final confirmpassword = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
//    initialValue:'null',
      decoration: InputDecoration(
          hintText: 'Confirm Password',
          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0,20.0,10.0),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))
      ),
    );

    final signupButton = Padding(
      padding: EdgeInsets.symmetric(vertical:16.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => StaffLogin()));
        },
        padding: EdgeInsets.all(12),
        color: Colors.lightBlue,
        child: Text('Sign Up'),
      ),
    );

    return Scaffold(
      body:Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left:  24.0,right: 24.0),
          children: <Widget>[
            logo,
            SizedBox( height: 10.0),
            fullname,
            SizedBox(height: 10.0,),
            phone,
            SizedBox(height: 10.0),
            email,
            SizedBox( height: 10.0),
            password,
            SizedBox( height: 10.0),
            confirmpassword,
            SizedBox( height: 10.0),
            signupButton
          ],
        ),
      ),
    );
  }

}

