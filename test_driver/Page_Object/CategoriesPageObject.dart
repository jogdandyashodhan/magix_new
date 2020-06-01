
import 'package:flutter_driver/flutter_driver.dart';

/*
Author: Archana Kankam
|| This class consists of objects and methods for Categories Page  
|| Create Date :  01-06-2020               
*/

class CategoriesPageObject {
  final checkbox1 = find.byValueKey('checkvalue1');
  final search = find.byValueKey('Search');
  final cart = find.byValueKey('NextKey');
  final cartTitle = find.byValueKey('Cart');
  final logout = find.byValueKey('Logout');


  FlutterDriver _driver;

  CategoriesPageObject(FlutterDriver driver) {
    this._driver = driver;
  }

 // Future<void> delay([int milliseconds = 250]) async {
 //   await Future<void>.delayed(Duration(milliseconds: milliseconds));
 // }
//Method Description: select item from the categories and add to cart
  Future<void> selectItemsFromListAndToCart() async {
    await _driver.tap(checkbox1);
    print('User has clicked Checkbox');

    await Future.delayed(Duration(seconds: 4));    

    await _driver.tap(cart);
        print('User has clicked on Cart');

    await Future.delayed(Duration(seconds: 4));   
 //   return validateText('Cart');
  }


//Method Description : check whether Search widget present
  Future<bool> checkSearchWidget() async {
    return await isPresent(search);
  }

//check if we are able to enter item name into search widget present
  Future<void> enterItemNameInSearchWidget(String itemName) async {
    print('User has clicked on Search');

    await _driver.tap(search);
    await Future.delayed(Duration(seconds: 4));
    await _driver.enterText(itemName);
    print('User has searched Product ');

    await Future.delayed(Duration(seconds: 4));
 //   return await _driver.getText(search);
  }

  // verify check box

  Future<bool> verifyCheckbox() async {
    return await isPresent(checkbox1);
  }

  // select check box

  Future<void> selectCheckbox() async {
    await _driver.tap(checkbox1);
  }

  //function to check any widget is present or not
  isPresent(SerializableFinder byValueKey) async {
    try {
      await _driver.waitFor(byValueKey);
      return true;
    } catch (exception) {
      return false;
    }
  }
  //verify text
  Future<String> validateText(String text) async {
    return find.text(text).toString();
  }

  //Logout functionality
    Future<void> selectLogout() async{
  await _driver.tap(logout);
  }

  

}
