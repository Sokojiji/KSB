import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:firebase_core/firebase_core.dart';

class MyHomePage extends StatefulWidget {
  // const MyHomePage({Key? key}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  bool _authenticated = false;

  var label;

  void _increment() {
    setState(() {
      _counter++;
      print('$_counter');
    });
  }

  //text editing controllers
  TextEditingController Client = TextEditingController();
  TextEditingController KsgEngineer = TextEditingController();
  TextEditingController Date = TextEditingController();
  TextEditingController Department = TextEditingController();
  TextEditingController Sitelocation = TextEditingController();
  TextEditingController Recomendation = TextEditingController();
  TextEditingController ActionRequired = TextEditingController();
  TextEditingController VehicleReg = TextEditingController();
  TextEditingController OtherSitesVisited = TextEditingController();
  TextEditingController MileageAtSite = TextEditingController();
  TextEditingController Engname = TextEditingController();
  TextEditingController Engcontact = TextEditingController();
  TextEditingController Clientname = TextEditingController();
  TextEditingController Clientcontact = TextEditingController();

  @override
  Widget build(BuildContext context) {
    FirebaseAuth auth = FirebaseAuth.instance;

    String username = '';
    // FirebaseAuth.instance.authStateChanges().listen((User? user) {
    //   if (user == null){

    //   } else {
    //     Navigator.pushNamed(context, '/login');
    //   }
    // });
    Color themecolor = Color(0xFF0D47A1);
    Padding(padding: EdgeInsets.all(20.0));
    return Scaffold(
      drawer: Drawer(
        child: Center(
          child: ListView(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Color(0xFF0D47A1),
                ),
                child: Text("Hello"),
              ),

              // ListTile(
              //   onTap: () {
              //     Navigator.pop(context);
              //   },
              //   leading: const Icon(
              //     Icons.verified_user_rounded,
              //     color: Colors.purple,
              //   ),
              //   title: Text(
              //     "Doctors Profile",
              //     style: TextStyle(fontSize: 16),
              //   ),
              // ),
              Divider(
                thickness: 1.5,
                endIndent: 4.0,
              ),
              ListTile(
                onTap: () {},
                leading: const Icon(
                  Icons.settings,
                  color: Color(0xFF0D47A1),
                ),
                title: Text(
                  "Settings",
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Divider(
                thickness: 1.5,
                endIndent: 4.0,
              ),
              ListTile(
                onTap: () {},
                leading: const Icon(
                  Icons.chat,
                  color: Color(0xFF0D47A1),
                ),
                title: Text(
                  "Chat",
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Divider(
                thickness: 1.5,
                endIndent: 4.0,
              ),
              ListTile(
                onTap: () {},
                leading: const Icon(
                  Icons.notifications,
                  color: Color(0xFF0D47A1),
                ),
                title: Text(
                  "Notifications",
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Divider(
                thickness: 1.5,
                endIndent: 4.0,
              ),
              ListTile(
                onTap: () {},
                leading: const Icon(
                  Icons.phone,
                  color: Color(0xFF0D47A1),
                ),
                title: Text(
                  "Support",
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Divider(
                thickness: 1.5,
                endIndent: 4.0,
              ),
              ListTile(
                onTap: () {},
                leading: const Icon(
                  Icons.share,
                  color: Color(0xFF0D47A1),
                ),
                title: Text(
                  "Share",
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Divider(
                thickness: 1.5,
                endIndent: 4.0,
              ),
              ListTile(
                onTap: () {
                  Navigator.pop(context);
                },
                leading: const Icon(
                  Icons.logout,
                  color: Color(0xFF0D47A1),
                ),
                title: Text(
                  "Logout",
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Divider(
                thickness: 1.5,
                endIndent: 4.0,
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                  leading: FloatingActionButton(
                    onPressed: () {},
                    backgroundColor: Color(0xFF0D47A1),
                    child: Icon(Icons.book),
                  ),
                  title: Text(
                    "Terms and conditions",
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 16),
                  ))
            ],
          ),
        ),
      ),
      appBar: AppBar(
        // actions
        actions: const <Widget>[
          Icon(Icons.search),
          SizedBox(width: 10.0),
        ],

        // Title
        centerTitle: true,
        title: Title(
          color: Colors.black,
          child: const Text("Daily report sample"),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 5.0),
        child: Column(children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 0, bottom: 0),
                //padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  controller: Client,
                  decoration: InputDecoration(border: OutlineInputBorder(), labelText: 'Client', hintText: 'Client'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 0, bottom: 0),
                //padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  controller: KsgEngineer,
                  decoration: InputDecoration(border: OutlineInputBorder(), labelText: 'KsgEngineer', hintText: 'Eng David'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 0, bottom: 0),
                //padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  controller: Date,
                  decoration: InputDecoration(border: OutlineInputBorder(), labelText: 'Date', hintText: 'DD/MM/YYYY'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 0, bottom: 0),
                //padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  controller: Department,
                  decoration: InputDecoration(border: OutlineInputBorder(), labelText: 'Department', hintText: 'Department'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 0, bottom: 0),
                //padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  controller: Sitelocation,
                  decoration: InputDecoration(border: OutlineInputBorder(), labelText: 'SiteLocation', hintText: 'SiteLocation'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 0, bottom: 0),
                //padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  controller: Recomendation,
                  decoration: InputDecoration(border: OutlineInputBorder(), labelText: 'Recomendation', hintText: 'Recomendation'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 0, bottom: 0),
                //padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  controller: ActionRequired,
                  decoration: InputDecoration(border: OutlineInputBorder(), labelText: 'ActionRequired', hintText: 'ActionRequired'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 0, bottom: 0),
                //padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  controller: VehicleReg,
                  decoration: InputDecoration(border: OutlineInputBorder(), labelText: 'Vehicle Registration', hintText: 'kcb f5y7'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 0, bottom: 0),
                //padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  controller: OtherSitesVisited,
                  decoration: InputDecoration(border: OutlineInputBorder(), labelText: 'others', hintText: 'others'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 0, bottom: 0),
                //padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  controller: MileageAtSite,
                  decoration: InputDecoration(border: OutlineInputBorder(), labelText: 'mileage', hintText: '40 miles'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 0, bottom: 0),
                //padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  controller: Engname,
                  decoration: InputDecoration(border: OutlineInputBorder(), labelText: 'Eng name', hintText: 'eng brian'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 0, bottom: 0),
                //padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  controller: Engcontact,
                  decoration: InputDecoration(border: OutlineInputBorder(), labelText: 'eng contact', hintText: '0743******'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 0, bottom: 0),
                //padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  controller: Clientname,
                  decoration: InputDecoration(border: OutlineInputBorder(), labelText: 'clients name', hintText: 'brian kibui'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 0, bottom: 0),
                //padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  controller: Clientcontact,
                  decoration: InputDecoration(border: OutlineInputBorder(), labelText: 'clients contact', hintText: '0743*******'),
                ),
              ),
              MaterialButton(
                onPressed: () {
                  //TODO FORGOT PASSWORD SCREEN GOES HERE
                },
                child: Text(
                  'Submit',
                  style: TextStyle(color: Colors.blue, fontSize: 15),
                ),
              ),
            ],
          ),
        ]),
      ),

      // floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    );
  }
}
