import 'package:flutter_driver/flutter_driver.dart';
/*
Author: Archana Kankam
|| This class consists of objects and methods for Login Page  
|| Create Date :  01-06-2020               
*/
class LoginPageObject {
  final emailFinder = find.byValueKey('Email');
  final passwordFinder = find.byValueKey('Password');
  final loginBtnFinder = find.byValueKey('Login');
  final welcomeTxtFinder = find.byValueKey('Welcome');
  final loginTxtFinder = find.byValueKey('Login');
  FlutterDriver _driver;

  LoginPageObject(FlutterDriver driver) {
    this._driver = driver;
  }

  //Future<void> delay([int milliseconds = 250]) async {
  //  await Future<void>.delayed(Duration(milliseconds: milliseconds));
  // }

//Method Description : check login functionality
  Future<void> checkLogin(String email, String password) async {
    await _driver.tap(emailFinder);
    await Future.delayed(Duration(seconds: 4));
    await _driver.enterText(email);
    print('User has entered email id');
    await _driver.tap(passwordFinder);
    await Future.delayed(Duration(seconds: 4));
    await _driver.enterText(password);
    print('User has entered passowrd');
    await _driver.tap(loginBtnFinder);
    print('User has clicked login button');
    print('User has logged in successfully');
 //   return await _driver.getText(welcomeTxtFinder);
    
  }

//verify text
  Future<String> validateText(String text) async {
    return find.text(text).toString();
  }

//check whether email widget present
  Future<bool> checkEmailWidget() async {
    return await isPresent(find.byValueKey('Email'));
  }
  
//check whether password widget present
  Future<bool> checkPasswordWidget() async {
    return await isPresent(find.byValueKey('Password'));
  }

//check whether login button is present
  Future<bool> checkLoginButton() async {
    return await isPresent(find.byValueKey('Login'));
  }

//check whether Sign Up button is present
  Future<bool> checkSignUp() async {
    return await isPresent(find.byValueKey('SignUp'));
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
  // click login

  Future<void> loginbtn() async {
    await _driver.tap(loginBtnFinder);
  }
}
