import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.red, fontFamily: "Montserrat"),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: 35,
            color: Theme.of(context).accentColor,
          ),
          Positioned(
            right: 0,
            child: Text(
              "6",
              style: TextStyle(fontSize: 200, color: Color(0x10000000)),
            ),
          ),
          _mainContent(context),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () {},
            )
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Column _mainContent(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 60),
        Padding(
          padding: const EdgeInsets.all(24.0),
          child: Text(
            "Monday",
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(24.0),
          child: _button(context),
        ),
        _taskUncomplete("Call Tom about appointment"),
        _taskUncomplete("Fix onboarding experience"),
        _taskUncomplete("Edit API documentation"),
        _taskUncomplete("Setup user focus group"),
        Divider(),
        SizedBox(height: 16),
        _taskComplete("Have coffe with Sam"),
        _taskComplete("Meet with sales"),
      ],
    );
  }

  Widget _taskUncomplete(String task) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, bottom: 24.0),
      child: Row(
        children: <Widget>[
          Icon(
            Icons.radio_button_unchecked,
            color: Theme.of(context).accentColor,
            size: 20,
          ),
          SizedBox(
            width: 28,
          ),
          Text(task)
        ],
      ),
    );
  }

  Widget _taskComplete(String task) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, bottom: 24.0),
      child: Row(
        children: <Widget>[
          Icon(
            Icons.radio_button_checked,
            color: Theme.of(context).accentColor,
            size: 20,
          ),
          SizedBox(
            width: 28,
          ),
          Text(task)
        ],
      ),
    );
  }

  Widget _button(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: MaterialButton(
            onPressed: () {},
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12)),
            color: Theme.of(context).accentColor,
            textColor: Colors.white,
            padding: const EdgeInsets.all(14.0),
            child: Text("Tasks"),
          ),
        ),
        SizedBox(
          width: 32,
        ),
        Expanded(
          child: MaterialButton(
            onPressed: () {},
            shape: RoundedRectangleBorder(
                side: BorderSide(color: Theme.of(context).accentColor),
                borderRadius: BorderRadius.circular(12)),
            color: Theme.of(context).accentColor,
            textColor: Colors.white,
            padding: const EdgeInsets.all(14.0),
            child: Text("Tasks"),
          ),
        ),
      ],
    );
  }
}
