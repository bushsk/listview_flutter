import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key? key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _count = 0;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter NavigationDrawer Example'),
      ),
      body: Center(
        child: Text('We have pressed the button $_count times.'),
      ),

      //Adding bottom navigation bar
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Container(
          height: 50.0,
          color: Colors.grey,
        ),
      ),

      //floating button
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() {
          _count++;
        }),
        tooltip: 'Increment Counter',
        child: const Icon(Icons.add),
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      //Adding Drawer
      drawer: Drawer(
        elevation: 20.0,
        child: Column(
          children: <Widget>[
            const UserAccountsDrawerHeader(
              accountName: Text("SIESGSST"),
              accountEmail: Text("siesgst@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.pink,
                child: Text("SIES"),
              ),
            ),
            ListTile(
              title: const Text("Inbox"),
              leading: const Icon(Icons.mail),
              onTap: () {
                Navigator.pop(context);
                
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Mailpage()),
                );
              },
            ),
            const Divider(
              height: 0.1,
            ),
            ListTile(
              title: const Text("Primary"),
              leading: const Icon(Icons.inbox),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Primarypage()),
                );
              },
            ),
            ListTile(
              title: const Text("Social"),
              leading: new Icon(Icons.people),
            ),
            ListTile(
              title: const Text("Promotions"),
              leading: new Icon(Icons.local_offer),
            )
          ],
        ),
      ),
    );
  }
}

class Mailpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mail Screen"),
      ),
      body: Center(
        child: RaisedButton(
          color: Colors.blueGrey,
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Mail Screen'),
        ),
      ),
    );
  }
}
class Primarypage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Primary Screen"),
      ),
      body: Center(
        child: RaisedButton(
          color: Colors.blueGrey,
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Primary Screen'),
        ),
      ),
    );
  }
}
