import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class CompaniesPage extends StatefulWidget {
  final List<Map<String, dynamic>> companies;
  final String pageTitle;

  CompaniesPage({required this.companies, required this.pageTitle});

  @override
  _CompaniesPageState createState() => _CompaniesPageState();
}

class _CompaniesPageState extends State<CompaniesPage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          widget.pageTitle,
        ),
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              "images/back.jpg",
              fit: BoxFit.cover,
            ),
          ),
          ListView(
            physics:
                NeverScrollableScrollPhysics(), // هنا نقوم بتعيين الـ physics للـ ListView

            children: [
              Padding(
                padding: EdgeInsets.all(16),
                child: SizedBox(
                  width: 150,
                  height: 150,
                  child: Image.asset(
                    "images/project1.png",
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16),
                child: Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image:
                          AssetImage(widget.companies[_currentIndex]['image']),
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
              ),
              ListView(
                // هنا نضع بطاقة الشركة داخل ListView
                shrinkWrap:
                    true, // تحديد shrinkWrap يجعل القائمة تتوسع وفقًا لمحتواها
                physics:
                    NeverScrollableScrollPhysics(), // تعطيل التمرير لهذه القائمة الداخلية
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child:
                        CompanyCard(company: widget.companies[_currentIndex]),
                  ),
                ],
              ),
            ],
          ),
          Positioned(
            top: 0,
            left: 0,
            child: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                setState(() {
                  if (_currentIndex > 0) {
                    _currentIndex--;
                  }
                });
              },
            ),
          ),
          Positioned(
            top: 0,
            right: 0,
            child: IconButton(
              icon: Icon(Icons.arrow_forward),
              onPressed: () {
                setState(() {
                  if (_currentIndex < widget.companies.length - 1) {
                    _currentIndex++;
                  }
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}

class CompanyCard extends StatelessWidget {
  final Map<String, dynamic> company;

  CompanyCard({required this.company});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: EdgeInsets.all(10),
      child: SizedBox(
        // Set a flexible height for the Card
        height:
            MediaQuery.of(context).size.height * 0.5, // 70% of screen height
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: EdgeInsets.all(8),
                child: Text(
                  company['title'],
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8),
                child: Text(
                  company['details'],
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(0),
                      child: ElevatedButton.icon(
                        onPressed: () {
                          _launchMaps(company['address']);
                        },
                        icon: Icon(Icons.location_on), // Icon added here
                        label: Text(
                          'Open in Maps',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(8),
                      child: ElevatedButton.icon(
                        onPressed: () {
                          launch("tel:${company['phone']}");
                        },
                        icon: Icon(Icons.phone),
                        label: Text(
                          'Call',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(0),
                      child: ElevatedButton.icon(
                        onPressed: () {
                          launch("mailto:${company['email']}?subject=Inquiry");
                        },
                        icon: Icon(Icons.email),
                        label: Text(
                          'Email',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 150,
              )
            ],
          ),
        ),
      ),
    );
  }

  void _launchMaps(String address) async {
    final url =
        'https://www.google.com/maps/search/?api=1&query=${Uri.encodeQueryComponent(address)}';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}

