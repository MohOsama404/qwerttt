import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:see_tech/payment_screen.dart';

class AddCampanyPage extends StatefulWidget {
  @override
  _AddCampanyPageState createState() => _AddCampanyPageState();
}

class _AddCampanyPageState extends State<AddCampanyPage> {
  String companyName = '';
  String commercialActivities = '';
  String email = '';
  String phoneNumber = '';
  String address = '';
  String city = '';
  String state = '';
  String zip = '';
  String productType = '';

  File? _image;

  Color _networkButtonColor = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Add Campany',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.grey,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            Image.asset(
              'images/seeTech.png',
              width: 150,
              height: 100,
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: 'Company Name',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                setState(() {
                  companyName = value;
                });
              },
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                labelText: 'Commerical Activities',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                setState(() {
                  commercialActivities = value;
                });
              },
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                setState(() {
                  email = value;
                });
              },
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                labelText: 'Phone Number',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                setState(() {
                  phoneNumber = value;
                });
              },
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                labelText: 'Address',
                border: OutlineInputBorder(),
              ),
              readOnly: true,
              // onTap: _getImage,
              controller: TextEditingController(
                  text: _image != null ? _image!.path : ''),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: 'City',
                border: OutlineInputBorder(),
              ),
              readOnly: true,
              // onTap: _getImage,
              controller: TextEditingController(
                  text: _image != null ? _image!.path : ''),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: 'State',
                border: OutlineInputBorder(),
              ),
              readOnly: true,
              // onTap: _getImage,
              controller: TextEditingController(
                  text: _image != null ? _image!.path : ''),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: 'Zip code',
                border: OutlineInputBorder(),
              ),
              readOnly: true,
              // onTap: _getImage,
              controller: TextEditingController(
                  text: _image != null ? _image!.path : ''),
            ),
            SizedBox(height: 20),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Expanded(
                    child: CustomButton(
                      buttonText: 'Security',
                      onPressed: () {
                        setState(() {
                          _networkButtonColor = Colors.blue;
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: CustomButton(
                      buttonText: 'Supplies',
                      onPressed: () {
                        setState(() {
                          _networkButtonColor = Colors.blue;
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: CustomButton(
                      buttonText: 'Erpsystem',
                      onPressed: () {
                        setState(() {
                          _networkButtonColor = Colors.blue;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Expanded(
                    child: CustomButton(
                      buttonText: 'Network',
                      onPressed: () {
                        // Add functionality here
                      },
                    ),
                  ),
                  Expanded(
                    child: CustomButton(
                      buttonText: 'Software',
                      onPressed: () {
                        // Add functionality here
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PaymentPage()),
                );
              },
              child: Text(
                'Save',
                style: TextStyle(
                    color: Colors.white), // Change text color to white
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    Color.fromARGB(
                        255, 0, 0, 0)), // Change button color to green
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Color.fromARGB(255, 255, 251, 251),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;

  const CustomButton({
    required this.buttonText,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          buttonText,
          style: TextStyle(fontSize: 14),
        ),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith<Color>((states) {
            if (states.contains(MaterialState.pressed)) {
              return Colors.blue;
            }
            return Colors.grey;
          }),
        ),
      ),
    );
  }
}

class PaymentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'images/back.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: screenHeight * 0.05),
              child: Center(
                child: Image.asset(
                  'images/project1.png',
                  width: screenWidth * 0.5,
                  height: screenHeight * 0.2,
                ),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: screenHeight * 0.3),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  PaymentButton(
                    buttonText:
                        '3 Months - 700 EGP', // تعليق: زر لفترة اشتراك 3 أشهر
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => VisaPage()),
                      );
                    },
                    width: screenWidth * 0.3,
                    height: screenHeight * 0.1,
                  ),
                  SizedBox(width: screenWidth * 0.05),
                  PaymentButton(
                    buttonText:
                        '6 Months - 1150 EGP', // تعليق: زر لفترة اشتراك 6 أشهر
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => VisaPage()),
                      );
                    },
                    width: screenWidth * 0.3,
                    height: screenHeight * 0.1,
                  ),
                  SizedBox(width: screenWidth * 0.05),
                  PaymentButton(
                    buttonText:
                        '1 Year - 1550 EGP', // تعليق: زر لفترة اشتراك سنة
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => VisaPage()),
                      );
                    },
                    width: screenWidth * 0.3,
                    height: screenHeight * 0.1,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class PaymentButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;
  final double width;
  final double height;

  const PaymentButton({
    required this.buttonText,
    required this.onPressed,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(buttonText),
      ),
    );
  }
}
