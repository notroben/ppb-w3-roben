import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const RowColumnPage(),
    );
  }
}

class RowColumnPage extends StatelessWidget {
  const RowColumnPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    double screenWidth = mediaQueryData.size.width;
    double screenHeight = mediaQueryData.size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'complex widget example',
          style: TextStyle(color: Colors.black, fontFamily: 'Montserrat', fontWeight: FontWeight.w700),
        ),
        backgroundColor: const Color.fromARGB(255, 199, 206, 210),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: AspectRatio(
              aspectRatio: 1.0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 10.0),
                padding: EdgeInsets.all(20.0),
                color: Colors.lightBlue[100],
                child: Center(
                  child: Image.asset(
                    'assets/catconfused.jpg',
                    fit: BoxFit.cover,
                    width: 500,
                  ),
                ),
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 10.0),
            padding: EdgeInsets.all(20.0),
            color: Colors.pink[200],
            child: Text('gambar apa itu wok', style: TextStyle(fontFamily: 'Montserrat', fontWeight: FontWeight.w600, fontSize: 16)),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            color: Colors.yellow[200],
            padding: EdgeInsets.all(20.0),
            margin: EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Column(children: [Icon(Icons.food_bank_rounded), Text("Food", style: TextStyle(fontFamily: 'Montserrat', fontWeight: FontWeight.w600, fontSize: 12))]),
                Column(children: [Icon(Icons.landscape_rounded), Text("Scenery", style: TextStyle(fontFamily: 'Montserrat', fontWeight: FontWeight.w600, fontSize: 12))]),
                Column(children: [Icon(Icons.people_alt_rounded), Text("People", style: TextStyle(fontFamily: 'Montserrat', fontWeight: FontWeight.w600, fontSize: 12))]),
              ],
            ),
          ),
          CounterCard(),
        ],
      ),
    );
  }
}

class CounterCard extends StatefulWidget {
  const CounterCard({super.key});

  @override
  State<CounterCard> createState() => _CounterCardState();
}

class _CounterCardState extends State<CounterCard> {
  int _counter = 0; // This is the state (data) that changes.

  void _incrementCounter() {
    setState(() {
      _counter++; // Update the state.
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 5.0),
      padding: EdgeInsets.all(20.0),
      width: MediaQuery.of(context).size.width,
      color: Colors.cyan[100],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Counter: $_counter", style: TextStyle(fontFamily: 'Montserrat', fontWeight: FontWeight.w600, fontSize: 16)),
          Container(
            color: Colors.cyan[200],
            padding: EdgeInsets.all(5.0),
            child: IconButton(
              onPressed: _incrementCounter,
              icon: Icon(Icons.add, color: Colors.black, size: 16),
            ),
          ),
        ],
      ),
    );
  }
}