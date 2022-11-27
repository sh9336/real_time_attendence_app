import 'package:flutter/material.dart';
import 'package:recs1/screens/View.dart';
import 'package:recs1/screens/addstu.dart';
import 'package:recs1/screens/Statistics.dart';
import 'package:recs1/screens/mainpage.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text('ATTENDENCE')),
      body: Center(
        child: Column(
          children: [
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => AddStudent(),
                    ),
                  );
                },
                child: Text(
                    'ADD STUDENT'
                ),
              ),

            ),

            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => mainpage(),
                    ),
                  );
                },
                child: Text(
                    'Take Attendence'
                ),
              ),

            ),
          ],
        ),
      ),
      drawer: Material(
        child: Drawer(
          backgroundColor: Color(0xff09a2f3),
          // Add a ListView to the drawer. This ensures the user can scroll
          // through the options in the drawer if there isn't enough vertical
          // space to fit everything.
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: <Widget>[
              const UserAccountsDrawerHeader( // <-- SEE HERE
                decoration: BoxDecoration(color: const Color(0xff101bd0)),
                currentAccountPicture: CircleAvatar(

                    radius: 0.0,
                    backgroundImage: AssetImage('assets/Saw.jpg'
                    )
                ),
                accountName: Text(
                  "SAURABH CHAUHAN",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                accountEmail: Text(
                  "saurabh1234@gmail.com",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),

              ),

              ListTile(
                leading: Icon(Icons.person_add),
                title: const Text('ADD STUDENT'),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context)=> AddStudent(),
                    ),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.remove_red_eye),
                title: const Text('VIEW'),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context)=> View(),
                    ),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.poll),
                title: const Text('STATS'),
                hoverColor: Colors.red[800],
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context)=> Stats(),
                    ),
                  );
                },
              ),
            ],
          ),

        ),
      ),
    );
  }
}
