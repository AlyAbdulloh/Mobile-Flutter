import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // top section
    Widget topSection = Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          child: SizedBox(
            height: 55,
            width: 55,
            child: Card(
              semanticContainer: true,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              // elevation: 3,
              // shadowColor: const Color.fromARGB(255, 27, 27, 27),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Image.asset(
                'asset/LinkAja.png',
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        Container(
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 50,
                width: 50,
                child: Card(
                  semanticContainer: true,
                  // clipBehavior: Clip.antiAliasWithSaveLayer,
                  // elevation: 3,
                  shadowColor: const Color.fromARGB(255, 27, 27, 27),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Icon(
                    Icons.discount,
                    size: 26,
                  ),
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              SizedBox(
                height: 50,
                width: 50,
                child: Card(
                  semanticContainer: true,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  // elevation: 3,
                  // shadowColor: const Color.fromARGB(255, 27, 27, 27),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Icon(
                    Icons.favorite_border,
                    size: 27,
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );

    //secondSection
    Widget secondSection = Container(
      padding: EdgeInsets.only(top: 15, bottom: 15, left: 10, right: 10),
      margin: EdgeInsets.only(right: 4, left: 4, top: 13),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 245, 54, 40),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              SizedBox(
                width: 5,
              ),
              Text(
                'Hi, Achmad Aly Abdulloh',
                style: TextStyle(fontSize: 15, color: Colors.white),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 65,
                width: 140,
                child: Card(
                    semanticContainer: true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    child: Container(
                      padding: EdgeInsets.only(left: 10, top: 12),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Your Balance',
                                style: TextStyle(fontSize: 11),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Row(
                            children: [
                              Text(
                                'Rp 10.184',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Icon(
                                Icons.arrow_forward,
                                size: 13,
                              )
                            ],
                          )
                        ],
                      ),
                    )),
              ),
              SizedBox(
                height: 65,
                width: 140,
                child: Card(
                  semanticContainer: true,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  child: Container(
                    padding: EdgeInsets.only(left: 10, top: 12),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Bonus Balance',
                              style: TextStyle(fontSize: 11),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Row(
                          children: [
                            Text(
                              '0',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Icon(
                              Icons.arrow_forward,
                              size: 13,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );

    // third section
    Column _buttonColumn(IconData icon, String label) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon),
          Container(
            margin: EdgeInsets.only(top: 5),
            child: Text(
              label,
              style: TextStyle(
                fontSize: 10,
              ),
            ),
          )
        ],
      );
    }

    Widget thirdSection = Container(
      margin: EdgeInsets.only(top: 18, right: 4, left: 4),
      padding: EdgeInsets.only(top: 10, bottom: 10, left: 28, right: 28),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(6)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buttonColumn(Icons.payment, 'TopUp'),
          _buttonColumn(Icons.attach_money, 'Send Money'),
          _buttonColumn(Icons.confirmation_number, 'Ticket Code'),
          _buttonColumn(Icons.apps_rounded, 'See All')
        ],
      ),
    );

    //four section
    Column _fourSection(IconData icon, String label, double iconSize) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: iconSize,
          ),
          Container(
              margin: EdgeInsets.only(top: 10),
              child: Center(
                child: Text(
                  label,
                  style: TextStyle(
                    fontSize: 13,
                  ),
                ),
              ))
        ],
      );
    }

    Widget fourSection = Column(
      children: [
        SizedBox(
          height: 25,
        ),
        Container(
          padding: EdgeInsets.only(left: 10, right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _fourSection(Icons.phone_android, 'Pulsa/Data', 30),
              _fourSection(Icons.bolt, 'Electricity', 30),
              _fourSection(Icons.credit_card, 'BPJS', 30),
              _fourSection(Icons.sports_esports, 'mgames', 30),
            ],
          ),
        ),
        SizedBox(
          height: 25,
        ),
        Container(
          padding: EdgeInsets.only(left: 10, right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _fourSection(Icons.wifi, 'Cable TV \n& Internet', 30),
              _fourSection(Icons.water_drop, 'PDAM', 30),
              _fourSection(Icons.credit_card, 'Kartu Uang \nElektronik', 30),
              _fourSection(Icons.more_horiz, 'More', 40),
            ],
          ),
        )
      ],
    );

    //five section
    Widget fiveSection = Container(
      margin: EdgeInsets.only(top: 15),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Container(
              child: SizedBox(
                height: 140,
                width: 300,
                child: Card(
                  semanticContainer: true,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  // elevation: 3,
                  // shadowColor: const Color.fromARGB(255, 27, 27, 27),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Image.asset(
                    'asset/1.jpg',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 12,
            ),
            Container(
              child: SizedBox(
                height: 140,
                width: 300,
                child: Card(
                  semanticContainer: true,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  // elevation: 3,
                  // shadowColor: const Color.fromARGB(255, 27, 27, 27),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Image.asset(
                    'asset/2.jpg',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 12,
            ),
            Container(
              child: SizedBox(
                height: 140,
                width: 300,
                child: Card(
                  semanticContainer: true,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  // elevation: 3,
                  // shadowColor: const Color.fromARGB(255, 27, 27, 27),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Image.asset(
                    'asset/3.jpg',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 12,
            ),
            Container(
              child: SizedBox(
                height: 140,
                width: 300,
                child: Card(
                  semanticContainer: true,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  // elevation: 3,
                  // shadowColor: const Color.fromARGB(255, 27, 27, 27),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Image.asset(
                    'asset/4.jpg',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );

    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('LinkAja'),
          backgroundColor: const Color.fromARGB(255, 224, 29, 15),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.history),
              label: 'History',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.paypal),
              label: 'Pay',
            ),
          ],
        ),
        body: Container(
          color: Color(0xFFF5F7F8),
          child: ListView(
            padding: EdgeInsets.all(15),
            children: [
              topSection,
              secondSection,
              thirdSection,
              fourSection,
              fiveSection,
            ],
          ),
        ),
      ),
    );
  }
}
