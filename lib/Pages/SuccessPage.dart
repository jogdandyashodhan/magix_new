import 'package:flutter/material.dart';
//import 'package:search_widget/search_widget.dart';


class SuccessPage extends StatefulWidget{
  SuccessPage();
  @override
  State<StatefulWidget> createState() => _SuccessPage();
}

class _SuccessPage extends State<SuccessPage>{
   

  //we omitted the brackets '{}' and are using fat arrow '=>' instead, this is dart syntax
   

@override
Widget build(BuildContext context){
  return Scaffold(
     appBar: AppBar(
       title: Text(
         'Success',
         style:TextStyle(color: Colors.white,fontSize: 30)),
         automaticallyImplyLeading: false,
         bottom: PreferredSize(
         preferredSize: Size(50,50),
         child: Column(
         children: <Widget>[
          SizedBox(
          width: double.infinity,
          child: Container(margin:EdgeInsets.all(24),
            /*child: Text(
              "",
              textAlign: TextAlign.left,
              style:TextStyle(color: Colors.white),
            ),*/
          ),
          ),
        
         ]),
         
       ),
       elevation: 20.0,
       actions: <Widget>[
           IconButton(
             icon: Icon(Icons.account_circle),
           ),
           IconButton(
            onPressed:(){},
            icon: Icon(Icons.more_vert)
          )
         ]
       
      ),
      body: Container(margin:EdgeInsets.all(30),
       child: Form(
        /*child: Text(
          'Order Placed Successfully.',
          textAlign: TextAlign.left,
          style:TextStyle(color: Colors.white),
        )*/
        child: Column(
         children: <Widget>[
          SizedBox(
          width: double.infinity,
          child: Container(margin:EdgeInsets.all(100),
            child: Text(
              "",
              textAlign: TextAlign.left,
              style:TextStyle(color: Colors.black),
            ),
          ),
          ),
          myLayoutWidget(),
          myLayout(),
          
          RaisedButton(
              textColor: Colors.white,
              padding: EdgeInsets.all(0.0),
              child: Container(
              height: 56.0,
              //width: MediaQuery.of(context).size.width,
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
                'Home',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                ),
                )
              )
              ),
              key: ValueKey('checkout'),
              onPressed: () {
                Navigator.pushNamed(context, '/Categories');
              },
            )
         ]
         
        ),
      ),
      ),
  );
}

}

Widget buildTextField(String hintText){
    return TextField(
      decoration: InputDecoration(
        hintStyle: TextStyle(
          color: Colors.grey,
          fontSize: 16.0,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        suffixIcon: hintText == "Search" ? Icon(Icons.search) : Icon(Icons.search),
      ),
     );
  }

  Widget myLayoutWidget() {
      return Center(
        child: Text(
          "Order places successsfully!",
          style: TextStyle(fontSize: 24),
        ),
      );
    }
    Widget myLayout() {
      return Center(
        child: Text(
          "Continue Shopping.",
          style: TextStyle(fontSize: 24),
        ),
      );
    }