import 'package:flutter/material.dart';
//import 'package:search_widget/search_widget.dart';


class Payment extends StatefulWidget{
  Payment();
  @override
  State<StatefulWidget> createState() => _Payment();
}

class _Payment extends State<Payment>{


@override
Widget build(BuildContext context){
  return Scaffold(
     appBar: AppBar(
       title: Text(
         'Cart',
         style:TextStyle(color: Colors.white,fontSize: 30)),
         
         bottom: PreferredSize(
         preferredSize: Size(50,50),
         child: Column(
         children: <Widget>[
          SizedBox(
          width: double.infinity,
          child: Container(margin:EdgeInsets.all(24),
            /*child: Text(
              "TechM User",
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
           RaisedButton(
             color: Colors.pinkAccent[400],
             child: Text(
                'Logout',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                ),
                ),
                key: Key('Logout'),
                onPressed:(){
                   Navigator.pushNamed(context, '/Main');
                }
           ),
         ]
       
      ),
      body: Container(margin:EdgeInsets.all(30),
      child: Form(
        child: Scrollbar(
        child: SingleChildScrollView(
        child: Column(
         children: <Widget>[
           buildTextField(),
           SizedBox(width: 10.0),
           myLayoutWidget(),
           SizedBox(height: 10.0),
           myPriceWidget(),
           SizedBox(height: 350.0),
           myTotalPriceWidget(),
           SizedBox(height: 30.0),
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
                'Continue Payment',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                ),
                )
              ),
              ),
              key: ValueKey('checkout'),
              onPressed: () {
                Navigator.pushNamed(context, '/CardPayment');
              },
            )
         ]
        ),
      ),
      ),
      ),
      ),
  );
}

}

Widget buildTextField(){
     return new Container(
      constraints: new BoxConstraints.expand(
        height: 60.0,
        width: 40.0,
      ),
      decoration: new BoxDecoration(
        image: new DecorationImage(
          image: new AssetImage('assets/images/dark_chocolate.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Text(
          "Ketofy - Dark Keto Chocolate (50g)",
          style: TextStyle(fontSize: 15),
        ),
        key: Key('Image'),
    );
  }
Widget myLayoutWidget() {
      return Center(
        child: Text(
          "Ketofy - Dark Keto Chocolate (50g)",
          style: TextStyle(fontSize: 15),
          key: Key('Description'),
        ),
      );
    }
Widget myPriceWidget() {
      return Center(
        child: Text(
          "Rs. 189",
          style: TextStyle(fontSize: 15),
          key: Key('Price'),
        ),
      );
    }
Widget myTotalPriceWidget(){
  return Center(
        child: Text(
          "Total amount : Rs.189",
          style: TextStyle(fontSize: 24),
          key: Key('TotalPrice'),
        ),
      );
}