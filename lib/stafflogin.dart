import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'signup.dart';
import 'staffpage/staffhome.dart';

class StaffLogin extends StatefulWidget {
  @override
  _StaffLoginState createState() => _StaffLoginState();
}

class _StaffLoginState extends State<StaffLogin> {
  String _username,_email,_password= "";
  final _formKey = GlobalKey<FormState>();
  FocusNode _emailFocusNode = FocusNode();
  FocusNode _passwordFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomePageBody()
    );
  }
  final logo =Hero(
      tag: "hero",
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius:150.0,
        child: Image.asset('assets/logo1.jpg'),
      )
  );


  Widget HomePageBody() {

    return Container(
      padding: EdgeInsets.all(16),
      child: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              logo,
              SizedBox(height: 16,),
              EmailInput(),
              SizedBox(height: 16,),
              PasswordInput(),
              SizedBox(height: 16,),
              SubmitButton(),
              SizedBox(height: 16,),
              FlatButton(
                child:  Text('Dont have an account? SignUP', style: TextStyle(color: Colors.purple,fontSize: 15),),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Signup()));
                },
              ),

            ],
          ),
        ),
      ),
    );
  }

  Widget EmailInput() {
    return TextFormField(
      focusNode: _emailFocusNode,
      keyboardType: TextInputType.emailAddress ,
      decoration: InputDecoration(
        labelText: "Email",
        hintText: "e.g abc@gmail.com",
      ),
      textInputAction: TextInputAction.next,
      validator: (email)=>EmailValidator.Validate(email)? null:"Invalid email address",
      onSaved: (email)=> _email = email,
      onFieldSubmitted: (_){
        fieldFocusChange(context, _emailFocusNode, _passwordFocusNode);
      },
    );
  }

  Widget PasswordInput() {
    return TextFormField(
      focusNode: _passwordFocusNode,
      keyboardType: TextInputType.text ,
      obscureText: true,
      decoration: InputDecoration(
        labelText: "Password",
        suffixIcon: Icon(Icons.lock),
      ),
      textInputAction: TextInputAction.done,

      validator: (password){
        Pattern pattern =
            r'^(?=.*[0-9]+.*)(?=.*[a-zA-Z]+.*)[0-9a-zA-Z]{6,}$';
        RegExp regex = new RegExp(pattern);
        if (!regex.hasMatch(password))
          return 'Invalid password';
        else
          return null;
      },
      onSaved: (password)=> _password = password,
    );
  }



  RaisedButton SubmitButton(){
    return  RaisedButton(
      color:Theme.of(context).primaryColor,
      onPressed: (){
        if(_formKey.currentState.validate()){
          _formKey.currentState.save();
          toastMessage("Username: $_username\nEmail: $_email\nPassword: $_password");
        }
        Navigator.push(context, MaterialPageRoute(builder: (context) => StaffHome()));
      },
      child: Text("Login",style: TextStyle(color: Colors.white),),
    );
  }
}

void toastMessage(String message){
  Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.TOP,
      timeInSecForIos: 1,
      fontSize: 16.0
  );
}

void fieldFocusChange(BuildContext context, FocusNode currentFocus,FocusNode nextFocus) {
  currentFocus.unfocus();
  FocusScope.of(context).requestFocus(nextFocus);
}
