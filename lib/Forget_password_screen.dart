import 'package:flutter/material.dart';
import 'Login_screen.dart';

class Forgetpasswordscreen extends StatefulWidget {
  @override
  ForgetpasswordscreenState createState() => ForgetpasswordscreenState();
}

class ForgetpasswordscreenState extends State<Forgetpasswordscreen> {
  final _formKey = GlobalKey<FormState>();
  late String _email, _phoneNumber;

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/back.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 0), // Add space for the logo
                  Image.asset(
                    "images/project.jpg",
                    width: 250,
                    height: 100,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        children: <Widget>[
                          SizedBox(height: 145),
                          Container(
                            height: 50,
                            width: 300,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 255, 255, 255),
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(51),
                            ),
                            child: TextFormField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                ),
                                hintText: ' Email ',
                              ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter your Email';
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
                              borderRadius: BorderRadius.circular(51),
                            ),
                            child: TextFormField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                ),
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
                                  return NewPasswordPage();
                                }),
                              );
                            },
                            child: Container(
                              width: 100,
                              height: 50,
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
                                    color: Color.fromARGB(255, 255, 255, 255),
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
          ),
        ),
      ),
    );
  }
}

class NewPasswordPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  late String _newPassword, _confirmPassword;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Password'),
      ),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/back.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 0),
                    Image.asset(
                      "images/project.jpg",
                      width: 250,
                      height: 100,
                    ),
                    SizedBox(height: 145),
                    Container(
                      height: 50,
                      width: 300,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255),
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(51),
                      ),
                      child: TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                          hintText: ' New Password ',
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter the new password';
                          }
                          return null;
                        },
                        onSaved: (value) => _newPassword = value!,
                      ),
                    ),
                    SizedBox(height: 11),
                    Container(
                      height: 50,
                      width: 300,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255),
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(51),
                      ),
                      child: TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                          hintText: ' Confirm Password ',
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please confirm the new password';
                          }
                          return null;
                        },
                        onSaved: (value) => _confirmPassword = value!,
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
                        // Add logic for handling new password and confirmation
                        if (_formKey.currentState!.validate()) {
                          _formKey.currentState!.save();
                          print(
                              'New Password: $_newPassword, Confirm Password: $_confirmPassword');
                        }
                      },
                      child: Container(
                        width: 100,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                        child: Center(
                          child: Text(
                            "Finish",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 255, 255, 255),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
