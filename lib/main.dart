import 'package:flutter/material.dart';
import './Pages/Categories.dart';
import './Pages/Payment.dart';
import './Pages/CardPayment.dart';
import './Pages/SuccessPage.dart';


void main() => runApp(App());

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFFFB415B),
        fontFamily: "Ubuntu"
      ),
      home: LoginPage(),
      routes: {
        '/Categories':(context) =>Categories(),
        '/Payment':(context) =>Payment(),
        '/CardPayment':(context) =>CardPayment(),
        '/SuccessPage':(context) =>SuccessPage(),
        '/Main':(context) =>App(),
      },
    );
  }
}

class LoginPage extends StatefulWidget{
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>{

  bool _isHidden = true;

  void _toggleVisibility(){
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      
      resizeToAvoidBottomPadding: false,
      body: Container(
        padding: EdgeInsets.only(top: 100.0, right: 20.0, left: 20.0, bottom: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'TechM',
              style: TextStyle(
                fontSize: 50.0,
                fontWeight: FontWeight.bold,
                fontFamily: "Pacifico"
              ),
            ),
            SizedBox(height: 40.0,),
            Text(
              "LOGIN",
              style: TextStyle(
                fontSize: 32.0,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).primaryColor
              ),
            ),
            SizedBox(height: 40.0,),
            buildTextField("Email"),
            SizedBox(height: 20.0,),
            buildPasswordField("Password"),
            SizedBox(height: 50.0),
            buildLogin(),
            SizedBox(height: 10.0,),
            Container(
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Don't have an account?"),
                    SizedBox(width: 10.0,),
                    Text("SIGN UP", style: TextStyle(color: Theme.of(context).primaryColor,),key: Key('SignUp'))
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildPasswordField(String hintText){
    return TextField(
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
          color: Colors.grey,
          fontSize: 16.0,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
   //     prefixIcon: hintText == "Email" ? Icon(Icons.email) : Icon(Icons.lock),
        suffixIcon: hintText == "Password" ? IconButton(
          onPressed: _toggleVisibility,
          icon: _isHidden ? Icon(Icons.visibility_off) : Icon(Icons.visibility),
        ) : null,
      ),
      key: Key('Password'),
      obscureText: hintText == "Password" ? _isHidden : false,
    );
  }

  Widget buildTextField(String hintText){
    return TextField(
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
          color: Colors.grey,
          fontSize: 16.0,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
 //       prefixIcon: hintText == "Email" ? Icon(Icons.email) : Icon(Icons.lock),
        suffixIcon: hintText == "Password" ? IconButton(
          onPressed: _toggleVisibility,
          icon: _isHidden ? Icon(Icons.visibility_off) : Icon(Icons.visibility),
        ) : null,
      ),
      key: Key('Email'),
      obscureText: hintText == "Password" ? _isHidden : false,
    );
  }

  Widget buildLogin(){
    return RaisedButton(   
      textColor: Colors.white,
      padding:  EdgeInsets.all(0.0),
      child: Container(
        height: 56.0,
        width: MediaQuery.of(context).size.width,
        decoration:  BoxDecoration(
          borderRadius: BorderRadius.circular(23.0),
          gradient: LinearGradient(
          colors: <Color>[
            Color(0xFFFB415B),
            Color(0xFFEE5623)
           ],
            begin: Alignment.centerRight,
            end: Alignment.centerLeft
          ),
        ),
        
        child: Center(
          child: Text(
            "LOGIN",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18.0,
            ),
          )
        )
      ),
      key: Key('Login'),
      onPressed: () {
      Navigator.pushNamed(context, "/Categories");
      },
    );
  }
  
}