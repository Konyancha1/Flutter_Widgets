// Imports
import 'package:flutter/material.dart';

// Main function
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of the application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of the application.
        primarySwatch: Colors.red,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Scaffold
    return Scaffold(
      appBar: AppBar(
        title: const Text('Available Games'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      // Centers elements in the body
      body: Center(
        // Elements in the body are put in a column
        child: Column(
          children: [
            ConstrainedBox(
              // Box properties which constraints its child
              constraints: const BoxConstraints(
                  maxHeight: 150, maxWidth: 300, minHeight: 100, minWidth: 100),
              // Container properties
              child: Container(
                color: Colors.red,
                margin: const EdgeInsets.all(10),
                child: const Center(
                  child: Text('FIFA 19', style: TextStyle(color: Colors.white)),
                ),
              ),
            ),
            ConstrainedBox(
              // Box properties which constraints its child
              constraints: const BoxConstraints(
                  maxHeight: 150, maxWidth: 300, minHeight: 100, minWidth: 100),
              // Container properties
              child: Container(
                color: Colors.red,
                margin: const EdgeInsets.all(10),
                child: const Center(
                  child:
                      Text('Fortnite', style: TextStyle(color: Colors.white)),
                ),
              ),
            ),
            // Sized box properties which constraints its child
            SizedBox(
              height: 150,
              width: 300,
              // Container properties
              child: Container(
                height: 150,
                width: 300,
                margin: const EdgeInsets.all(10),
                color: Colors.red,
                child: const Center(
                    child: Text('Call of Duty',
                        style: TextStyle(color: Colors.white))),
              ),
            ),
            // Container properties
            Container(
                height: 130,
                width: 280,
                color: Colors.red,
                margin: const EdgeInsets.only(top: 10),
                child: const Center(
                  child: Text('FIFA 23', style: TextStyle(color: Colors.white)),
                )),
          ],
        ),
      ),
    );
  }
}
