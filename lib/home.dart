import 'package:flutter/material.dart';

import 'package:see_tech/Addcompany.dart';
import 'package:see_tech/Addprodut.dart';
import 'package:see_tech/chatpot.dart';
import 'package:see_tech/compane.dart';
import 'package:see_tech/product.dart';

import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatelessWidget {
  final List<List<Map<String, dynamic>>> companiesList = [
    [
      {
        'title': 'ECO NOZOM',
        'details':
            'Eco Systems has the softwares that supports your business, whether you are a supermarket, store, restaurant, company or factory, Eco Systems has the software you need to manage your business more efficiently. Our cashier software is easy to use, affondable, and management software will help you track everything from inventory to finances. Choose from a one time purchase or a simple monthly subscription, and start using Eco Systems today.',
        'image': 'images/IMG-20240217-WA0004.jpg',
        'address': 'Ahmed El Sawy St., Off Makram Ebaid St., Nasr City, Cairo.',
      },
    ],

    // Interface 2
    [
      {
        'title': 'SECURITY SYSTEM',
        'details':
            'We provide integrated solutions that suit the needs of our customers. Our journey began towards developing and discovering ideas that generate opportunities and contribute to developing innovative solutions to deal with challenges in the field of information technology, surveillance systems, and developing innovative services to contribute to raising the level of services for all sectors of our clients',
        'image': 'images/IMG-20240224-WA0007.jpg',
        'address': 'sadat city , elmonofeya 1st commercial market - office 49',
      },
    ],

    // Interface 3
    [
      {
        'title': 'MIRROURFUL',
        'details':
            'Mirrorful is a software company that specializes in crafting digital experiences for businesses. With our team of talented experts, we strive to be the beautiful, powerful, and trustful project that mirror your brands vision in the digital world.',
        'image': 'images/WhatsApp Image 2024-03-01 at 17.26.27_b5279cb6.jpg',
        'address': 'Cairo, Egypt',
      },
      // Add more companies as needed
    ],

    // Interface 4
    [
      {
        'title': 'MIRROURFUL',
        'details':
            'Mirrorful is a software company that specializes in crafting digital experiences for businesses. With our team of talented experts, we strive to be the beautiful, powerful, and trustful project that mirror your brands vision in the digital world.',
        'image': 'images/WhatsApp Image 2024-03-01 at 17.26.27_b5279cb6.jpg',
        'address': 'Cairo, Egypt',
      },
      // Add more companies as needed
    ],
    [
      {
        'title': 'ISEC',
        'details':
            'ISEC is an Egyptian cyber defense consultancy company who is expert in the cyber defense field. We are a service-oriented organization specialized in technical security consultancy services, such as malware defense, IT risk management and information security advisory. With a niche and dedicated malware defense and security advisory team, we can approach cyber defense from a holistic approach.',
        'image': 'images/IMG-20240224-WA0013.jpg',
        'address': '41 Zaker Hussein, 5th floor, Nasr City, Cairo',
      },
    ],
    [
      {
        'title': 'PRODUCT',
        'details': 'ProductDetailsPage',
        'image': 'images/IMG-20240224-WA0013.jpg',
        'address': '41 Zaker Hussein, 5th floor, Nasr City, Cairo',
      },
    ],
  ];

  final List<String> interfaceTitles = [
    'SOFTWARE',
    'NETWORK',
    'ERBSYSTEM',
    'SUPPLISE',
    'SECURITY',
    'PRODUCT',
  ];

  final List<String> interfaceImages = [
    'images/IMG-20240208-WA0007.jpg',
    'images/IMG-20240208-WA0006.jpg',
    'images/IMG-20240120-WA0013.jpg',
    'images/IMG-20240120-WA0010.jpg',
    'images/IMG-20240120-WA0009.jpg',
    'images/product.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'See Tech',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "images/back.jpg",
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 16,
            left: 0,
            right: 0,
            child: Image.asset(
              "images/project1.png",
              width: 150,
              height: 150,
            ),
          ),
          Positioned(
            top: 180,
            left: 30,
            right: 30,
            bottom: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 10.0,
                  ),
                  itemCount: interfaceTitles.length,
                  itemBuilder: (context, index) {
                    return InterfaceCard(
                      companies: companiesList[index],
                      interfaceTitle: interfaceTitles[index],
                      interfaceImage: interfaceImages[index],
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.07,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.3,
            height: MediaQuery.of(context).size.height * 0.06,
            child: FloatingActionButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AddCampanyPage()),
                );
              },
              backgroundColor: const Color.fromARGB(255, 255, 255, 255),
              child: Text(
                'Add company',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.3,
            height: MediaQuery.of(context).size.height * 0.06,
            child: FloatingActionButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AddProductPage()),
                );
              },
              backgroundColor: const Color.fromARGB(255, 255, 255, 255),
              child: Text(
                'Add product',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.3,
            height: MediaQuery.of(context).size.height * 0.06,
            child: FloatingActionButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => OtherPage()),
                );
              },
              backgroundColor: const Color.fromARGB(255, 255, 255, 255),
              child: Text(
                'Ask me',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class OtherPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChatBotApp();
  }
}

class InterfaceCard extends StatelessWidget {
  final List<Map<String, dynamic>> companies;
  final String interfaceTitle;
  final String interfaceImage;

  InterfaceCard({
    required this.companies,
    required this.interfaceTitle,
    required this.interfaceImage,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (interfaceTitle == 'PRODUCT') {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ProductDetailsPage()),
          );
        } else {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CompaniesPage(
                companies: companies,
                pageTitle: interfaceTitle,
              ),
            ),
          );
        }
      },
      child: Container(
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                interfaceImage,
                width: 100,
                height: 60,
              ),
              SizedBox(height: 10),
              Text(
                interfaceTitle,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 16,
                ),
                textAlign: TextAlign.right,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
