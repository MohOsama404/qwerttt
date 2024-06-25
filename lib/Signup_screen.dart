import 'package:flutter/material.dart';
import 'package:see_tech/Login_screen.dart';
import 'Home.dart';

class Signupscreen extends StatefulWidget {
  @override
  SignupscreenPageState createState() => SignupscreenPageState();
}

class SignupscreenPageState extends State<Signupscreen> {
  final _formKey = GlobalKey<FormState>();
  late String _firstName, _lastName, _email, _password, _phoneNumber;

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      // تعيين الصورة الخلفية للصفحة
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/back.jpg"), // تحديد المسار للصورة
            fit: BoxFit.cover, // تغطية الشاشة بالصورة
          ),
        ),
        child: SafeArea(
          child: Center(
            child: Container(
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Transform.rotate(
                      origin: Offset(90, -224),
                      angle: 1.9,
                      child: Container(
                        margin: EdgeInsets.only(
                          left: 0,
                          top: 0,
                          right: 0,
                        ),
                        height: screenSize.height * 0.6,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(60),
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 40),
                        Image.asset(
                          "images/project1.png",
                          width: 190,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Form(
                            key: _formKey,
                            child: Column(
                              children: <Widget>[
                                SizedBox(height: 20),
                                Container(
                                  height: 50,
                                  width: 300,
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      border: Border.all(),
                                      borderRadius: BorderRadius.circular(51)),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderSide: BorderSide.none),
                                      hintText: ' First Name ',
                                    ),
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return 'Please enter your first name';
                                      }
                                      return null;
                                    },
                                    onSaved: (value) => _firstName = value!,
                                  ),
                                ),
                                SizedBox(height: 11),
                                Container(
                                  height: 50,
                                  width: 300,
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      border: Border.all(),
                                      borderRadius: BorderRadius.circular(51)),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderSide: BorderSide.none),
                                      hintText: ' Last Name ',
                                    ),
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return 'Please enter your last name';
                                      }
                                      return null;
                                    },
                                    onSaved: (value) => _lastName = value!,
                                  ),
                                ),
                                SizedBox(height: 11),
                                Container(
                                  height: 50,
                                  width: 300,
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      border: Border.all(),
                                      borderRadius: BorderRadius.circular(51)),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderSide: BorderSide.none),
                                      hintText: ' Email ',
                                    ),
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return 'Please enter your email';
                                      }
                                      return null;
                                    },
                                    onSaved: (value) => _email = value!,
                                  ),
                                ),
                                SizedBox(height: 11),
                                Container(
                                  height: 50,
                                  width: 300,
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      border: Border.all(),
                                      borderRadius: BorderRadius.circular(51)),
                                  child: TextFormField(
                                    obscureText: true,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderSide: BorderSide.none),
                                      hintText: ' Password ',
                                    ),
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return 'Please enter your password';
                                      }
                                      return null;
                                    },
                                    onSaved: (value) => _password = value!,
                                  ),
                                ),
                                SizedBox(height: 11),
                                Container(
                                  height: 50,
                                  width: 300,
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      border: Border.all(),
                                      borderRadius: BorderRadius.circular(51)),
                                  child: TextFormField(
                                    obscureText: true,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderSide: BorderSide.none),
                                      hintText: ' Confirm Password ',
                                    ),
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return 'Please enter your password';
                                      }
                                      return null;
                                    },
                                    onSaved: (value) => _password = value!,
                                  ),
                                ),
                                SizedBox(height: 11),
                                Container(
                                  height: 50,
                                  width: 300,
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      border: Border.all(),
                                      borderRadius: BorderRadius.circular(51)),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderSide: BorderSide.none),
                                      hintText: ' Phone Number ',
                                    ),
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return 'Please enter your phone number';
                                      }
                                      return null;
                                    },
                                    onSaved: (value) => _phoneNumber = value!,
                                  ),
                                ),
                                SizedBox(height: 16),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(builder: (context) {
                                        return login();
                                      }),
                                    );
                                  },
                                  child: Container(
                                    width: 150,
                                    height: 55,
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(30)),
                                      color: Color.fromARGB(255, 0, 0, 0),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "Next",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
