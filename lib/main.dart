import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var a = 1;

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Text(a.toString()),
          onPressed: () {
            setState(() {
              a++;
            });
          },
        ),
        appBar: AppBar(
          title: Text('제목'),
        ),

        body: Container(
          child: ListView.builder(
            itemCount: 20,
            itemBuilder: (context, i) {
              return ListTile(
                leading: Icon(Icons.person_rounded),
                title: Text('홍길동'),
              );
            },
          ),
        ),
        bottomNavigationBar: BottomAppBar(),
      ),
    );
  }
}

class BottomAppBar extends StatelessWidget {
  const BottomAppBar ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(Icons.phone),
          Icon(Icons.message),
          Icon(Icons.contact_page)
        ],
      ),
    );
  }
}
