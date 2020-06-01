import 'package:flutter/material.dart';
//import 'package:search_widget/search_widget.dart';


class CardPayment extends StatefulWidget{
  CardPayment();
  @override
  State<StatefulWidget> createState() => _CardPayment();
}

class _CardPayment extends State<CardPayment>{
   

  //we omitted the brackets '{}' and are using fat arrow '=>' instead, this is dart syntax
   

@override
Widget build(BuildContext context){
  return Scaffold(
     appBar: AppBar(
       title: Text(
         'Checkout',
         style:TextStyle(color: Colors.white,fontSize: 30)),
         
         bottom: PreferredSize(
         preferredSize: Size(50,50),
         child: Column(
         children: <Widget>[
          SizedBox(
          //width: double.infinity,
          child: Container(margin:EdgeInsets.all(20),
            child: Text(
              "Rs. 2000",
             // textAlign: TextAlign.left,
              style:TextStyle(color: Colors.white,fontSize: 25),
            ),
          ),
          ),
        
         ]),
         
       ),
      // elevation: 20.0,
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
        
        child: Column(
         children: <Widget>[
           buildTextField(),
           SizedBox(height: 40.0,),
          // buildImage(),
          buildCardNumber(),
          SizedBox(height: 40.0,),
          buildExpiryDate(),
          SizedBox(height: 40.0,),
          buildCVV(),
          SizedBox(height: 40.0,),
          //buildCheckOut(),
          RaisedButton(
              textColor: Colors.white,
              padding: EdgeInsets.all(0.0),
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
                "Checkout",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                ),
                )
              )
              ),
              key: ValueKey('checkout'),
              onPressed: () {
                Navigator.pushNamed(context, '/SuccessPage');
              },
            )
         ]
        ),
      ),
      
      ),
      
      
  );
}

}

Widget buildTextField(){
     return new Container(
      constraints: new BoxConstraints.expand(
        height: 50.0,
      ),
      decoration: new BoxDecoration(
        image: new DecorationImage(
          image: new AssetImage('assets/images/card.jpg'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
  Widget buildImage(){
     return new Container(
      constraints: new BoxConstraints.expand(
        height: 50.0,
      ),
      padding: new EdgeInsets.only(left: 16.0, bottom: 20.0, top:20.0),
      decoration: new BoxDecoration(
        image: new DecorationImage(
          image: new AssetImage('assets/images/open_secret.jpg'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
  Widget buildCardNumber(){
    return TextField(
      decoration: InputDecoration(
        hintStyle: TextStyle(
          color: Colors.grey,
          fontSize: 16.0,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        labelText: 'Card Number',
        hintText: 'Enter Your Credit/Debit card number',
        
      ),
      key: ValueKey('cardNumber')
    );
  }
  Widget buildExpiryDate(){
    return TextField(
      decoration: InputDecoration(
        hintStyle: TextStyle(
          color: Colors.grey,
          fontSize: 16.0,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        labelText: 'Expiry',
        hintText: 'Enter your card expiry date',
        
      ),
      key: ValueKey('expiry')
    );
  }
  Widget buildCVV(){
    return TextField(
      decoration: InputDecoration(
        hintStyle: TextStyle(
          color: Colors.grey,
          fontSize: 16.0,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        labelText: 'CVV',
        hintText: 'Enter your CVV',
        
      ),
      key: ValueKey('cvv')
    );
  }
  