import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Image(
        image: AssetImage('pokeball.jpeg'),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        fit: BoxFit.cover,
      ),
      Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
            child: Column(
          children: [
            SizedBox(
              height: 150,
            ),
            SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 120,
                child: Text(
                  'Poké Guesser',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 80,
                    fontFamily: 'Pokemon',
                  ),
                )),
            SizedBox(
              height: 350,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromRGBO(195, 49, 41, 1),
                  padding: EdgeInsets.symmetric(horizontal: 60, vertical: 20),
                ),
                onPressed: () {},
                child: Text(
                  'START',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 60,
                    fontFamily: 'Pokemon',
                  ),
                )),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromRGBO(195, 49, 41, 1),
                  padding: EdgeInsets.symmetric(horizontal: 75, vertical: 20),
                ),
                onPressed: () {
                  SystemNavigator.pop();
                },
                child: Text(
                  'EXIT',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 60,
                    fontFamily: 'Pokemon',
                  ),
                ))
          ],
        )),
        floatingActionButton: FloatingActionButton(
          onPressed: _incrementCounter,
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
      )
    ]);
  }
}
