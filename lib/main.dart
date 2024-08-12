import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homepage(),
    );
  }
}

class homepage extends StatelessWidget {
  const homepage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dialog",
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
            )),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) => AlertDialog(
                      title: Text("Success"),
                      titleTextStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 20),
                      actionsOverflowButtonSpacing: 20,
                      actions: [
                        ElevatedButton(onPressed: () {}, child: Text("Back")),
                        ElevatedButton(onPressed: () {}, child: Text("Next")),
                      ],
                      content: Text("Hai"),
                    ));
          },
          child: Text("Click Me"),
        ),
      ),
    );
  }
}
