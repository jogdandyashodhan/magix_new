// Imports the Flutter Driver API.
import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';
// Imports Pages of application
import './Page_Object/LoginPageObject.dart';
import './Page_Object/CategoriesPageObject.dart';
import 'Page_Object/TestData.dart';

/*
Author: Archana Kankam
|| This class consists of methods used to connect and close flutter driver connection 
|| and test methods for automation testing of the application  
|| Create Date :  01-06-2020               
*/

void main() {
  FlutterDriver driver;
  LoginPageObject loginPage ;
 CategoriesPageObject categoriesPage;
group('Test sample App', () {

    setUpAll(() async {
      driver = await FlutterDriver.connect();
      driver.clearTimeline();
      loginPage = new LoginPageObject(driver);
      categoriesPage = new CategoriesPageObject(driver);

    });

    // Close the connection to the driver after the tests have completed.
    tearDownAll(() async {
      if (driver != null) {
        driver.close();
      }
    });
/*
/*Test Case Id : 001
Test Case Description : This test case is to validate login button functionality  with valid credentials in login section 
on login page when user  Installs and launches  TechM flutter application successfully.*/

  test('verify login functionality with valid credentials', () async {
    await Future.delayed(Duration(seconds: 5));
    Future<String> result =    loginPage.checkLogin(TestData.emailValue, TestData.passwordValue);
    await Future.delayed(Duration(seconds: 5));
    categoriesPage.selectLogout();
  //  expect(result, 'Welcome');

    },timeout: Timeout(
        Duration(minutes: 5),
      ),);


/*Test Case Id : 002
Test Case Description:This test case is to validate Loginpage title when user  Installs and launches  
TechM flutter application successfully.*/
  
  test('verify title', () async {
    await Future.delayed(Duration(seconds: 5));

    Future<String> result = loginPage.validateText(TestData.appTitle);
  //  expect(result, 'TechM');
    await Future.delayed(Duration(seconds: 5));

  });

/*Test Case Id : 003
Test Case Description:This test case is to validate Login section title on login page when user  Installs 
and launches  TechM flutter application successfully*/

  test('verify Login text', () async {
        await Future.delayed(Duration(seconds: 5));

    Future<String> result = loginPage.validateText(TestData.loginTitle);
 //   expect(result, 'LOGIN');
    await Future.delayed(Duration(seconds: 5));

  });

/*Test Case Id : 004
Test Case Description:This test case is to validate Email textbox  in Login section on login page when user  Installs 
and launches  TechM flutter application successfully.*/

  test('verify email text box', () async {
    await Future.delayed(Duration(seconds: 5));

    Future<bool> result = loginPage.checkEmailWidget();
//    expect(result, true);
    await Future.delayed(Duration(seconds: 5));

  });

/*Test Case Id : 005
Test Case Description:This test case is to validate  password textbox  in Login section on login page when user  Installs 
and launches  TechM flutter application successfully.*/

  test('verify password text box', () async {
    await Future.delayed(Duration(seconds: 5));

    Future<bool> result = loginPage.checkPasswordWidget();
 //   expect(result, true);
    await Future.delayed(Duration(seconds: 5));

  });

 /*Test Case Id : 006
 Test Case Description:This test case is to validate login button  in Login section on login page when user  Installs 
  and launches  TechM flutter application successfully.*/
  test('verify login button', () async {
    await Future.delayed(Duration(seconds: 5));

    Future<bool> result = loginPage.checkLoginButton();
//    expect(result, true);
    await Future.delayed(Duration(seconds: 5));

  });

/*Test Case Id : 007
Test Case Description:This test case is to validate signup link  in signup section on login page when user  Installs 
and launches  TechM flutter application successfully.*/

  test('verify sign up link', () async {
    await Future.delayed(Duration(seconds: 5));

    Future<bool> result = loginPage.checkSignUp();
 //   expect(result, true);
    await Future.delayed(Duration(seconds: 5));

  });


/*Test Case Id : 008
Test Case Description:This test case is to validate title of catalogue page  when user  Installs, launches 
 and login with valid credentials in  TechM flutter application successfully.*/

  test('verify title', () async {
    await Future.delayed(Duration(seconds: 5));

    loginPage.checkLogin(TestData.emailValue, TestData.passwordValue);
    await Future.delayed(Duration(seconds: 5));

    Future<String> result = loginPage.validateText(TestData.welcomeTitle);
    await Future.delayed(Duration(seconds: 5));

  //  expect(result, 'Welcome');
    categoriesPage.selectLogout();
  });

/*Test Case Id : 009
Test Case Description:This test case is to validate user name on catalogue page  when user  Installs, launches
  and login with valid credentials in  TechM flutter application successfully.*/

  test('verify username', () async {
    await Future.delayed(Duration(seconds: 5));

    loginPage.checkLogin(TestData.emailValue, TestData.passwordValue);
    Future<String> result = loginPage.validateText(TestData.userName);
  //  expect(result, 'TechM User');
    await Future.delayed(Duration(seconds: 5));

    categoriesPage.selectLogout();
    await Future.delayed(Duration(seconds: 5));

  });

/*Test Case Id : 010
Test Case Description:This test case is to validate search box on catalogue page  when user  Installs, launches 
 and login with valid credentials in  TechM flutter application successfully.*/

  test('verify Search widget', () async {
    await Future.delayed(Duration(seconds: 5));

    loginPage.checkLogin(TestData.emailValue, TestData.passwordValue);
    await Future.delayed(Duration(seconds: 5));

    Future<bool> result = categoriesPage.checkSearchWidget();
    await Future.delayed(Duration(seconds: 5));

 //   expect(result, true);
    categoriesPage.selectLogout();
    await Future.delayed(Duration(seconds: 5));

  });

/*Test Case Id : 011
Test Case Description:This test case is to validate whether use is able to enter text in  search box  or not, on catalogue page  
when user  Installs, launches  and login with valid credentials in  TechM flutter application successfully.*/

  test('verify if user can enter item name in search box', () async {
    await Future.delayed(Duration(seconds: 5));

    loginPage.checkLogin(TestData.emailValue, TestData.passwordValue);
    await Future.delayed(Duration(seconds: 5));

    Future<String> result =
        categoriesPage.enterItemNameInSearchWidget(TestData.itemName);
 //   expect(result, 'Ketofy');
    await Future.delayed(Duration(seconds: 5));

    categoriesPage.selectLogout();
    await Future.delayed(Duration(seconds: 5));

  });

/*Test Case Id : 012
Test Case Description:This test case is to validate checkbox of catalogue item on  catalogue page  when user Installs, launches 
 and login with valid credentials in  TechM flutter application successfully.*/

  test('verify check box widget', () async {
    await Future.delayed(Duration(seconds: 5));

    loginPage.checkLogin(TestData.emailValue, TestData.passwordValue);
    await Future.delayed(Duration(seconds: 5));

    Future<bool> result = categoriesPage.verifyCheckbox();
  //  expect(result, true);
    await Future.delayed(Duration(seconds: 5));

    categoriesPage.selectLogout();
    await Future.delayed(Duration(seconds: 5));

  });

*/
/*Test Case Id : 013
Test Case Description:This test case is to validate  selection of  catalogue item checkbox  on  catalogue page  when user Installs, 
launches  and login with valid credentials in  TechM flutter application successfully.*/

  test('Select checkbox', () async {
    await Future.delayed(Duration(seconds: 5));

    loginPage.checkLogin(TestData.emailValue, TestData.passwordValue);
    await Future.delayed(Duration(seconds: 5));

    categoriesPage.selectCheckbox();
    await Future.delayed(Duration(seconds: 5));

    categoriesPage.selectLogout();
    await Future.delayed(Duration(seconds: 5));

  });

/*Test Case Id : 014
Test Case Description:This test case is to validate  add to cart functionality  of selected catalogue item checkbox  on  catalogue page 
 when user Installs, launches  and login with valid credentials in  TechM flutter application successfully.*/

  test('Select items from the list and add to cart', () async {
    await Future.delayed(Duration(seconds: 5));

    loginPage.checkLogin(TestData.emailValue, TestData.passwordValue);
    await Future.delayed(Duration(seconds: 5));

     categoriesPage.selectItemsFromListAndToCart();
  //  expect(result, 'Cart');
    await Future.delayed(Duration(seconds: 5));

  //  categoriesPage.selectLogout();

  });
});
}