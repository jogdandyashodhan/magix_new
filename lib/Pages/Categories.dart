import 'package:flutter/material.dart';
//import 'package:search_widget/search_widget.dart';


class Categories extends StatefulWidget{
  Categories();
  @override
  State<StatefulWidget> createState() => _Categories();
}

class _Categories extends State<Categories>{
  bool _value1 = false;
  void _value1Changed(bool value) => setState(() => _value1 = value);

@override
Widget build(BuildContext context){
  return Scaffold(
     appBar: AppBar(
       title: Text(
         'Welcome',
         key: Key('Welcome123'),
         style:TextStyle(color: Colors.white,fontSize: 18)),
         automaticallyImplyLeading: false,
         bottom: PreferredSize(
         preferredSize: Size(50,50),
         child: Column(
         children: <Widget>[
          SizedBox(
          width: double.infinity,
          child: Container(margin:EdgeInsets.all(24),
            child: Text(
              "TechM User",
              textAlign: TextAlign.left,
              style:TextStyle(color: Colors.white),
              key: Key('Subtitle'),
            ),
          ),
          ),
        
         ]),
         
       ),
       elevation: 20.0,
       leading: IconButton(
          onPressed: (){},
          icon: Icon(Icons.menu),
          key: Key('menuIcon'),
        ),
       actions: <Widget>[
           IconButton(
             icon: Icon(Icons.account_circle),
             key: Key('userIcon'),
           ),
           RaisedButton(
             color: 
                Colors.red,
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
          
         ],
       
      ),
      body: Container(margin:EdgeInsets.all(30),
      child: Form(
        child: Scrollbar(
        child: SingleChildScrollView(
        child: Column(
         children: <Widget>[
           buildTextField("Search"),
              new CheckboxListTile(
                  value: _value1,
                  key: Key('checkvalue1'),
                  onChanged: _value1Changed,
                  title: new Text(r'Ketofy - Dark Keto Chocolate (50g) - $2.50}'),
                  controlAffinity: ListTileControlAffinity.leading,
                  subtitle: new Text('SubSugar Free Unsweetened Intense Dark Chocolate '),
                  secondary: Image.asset('assets/images/dark_chocolate.jpg'),
                  activeColor: Colors.red,
              ),
         ]
        ),
      ),
      ),
      ),
      ),
      floatingActionButton: FloatingActionButton(
        key: Key('NextKey'),
        child: Icon(Icons.add_shopping_cart),
        onPressed: (){
          Navigator.pushNamed(context, '/Payment');
        }
      ),
  );
}

}

Widget buildTextField(String hintText){
    return TextField(
      key: Key('Search'),
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

/*Widget buildDropdown(){
  DropdownButton<String>(
    var _cities = ['Warangal', 'Hyderabad', 'Karimnagar', 'Ranga Reddy'];
  var _currentItemSelected = 'Warangal';
              key: Key('dropdown'),
              items: _cities.map((String dropDownStringItem){
                return DropdownMenuItem<String>(
                  value: dropDownStringItem,
                  child: Text(dropDownStringItem),
                );
              }).toList(),
              onChanged: (String newValueSelected){
                _onDropDownItemSelected(newValueSelected);
               
              },
              value: _currentItemSelected,
            );
}*/