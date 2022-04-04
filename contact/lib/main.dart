import 'package:flutter/material.dart';

void main() {
  runApp(
      MaterialApp(
          home: MyApp()
      )
  );
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

    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showDialog(
                context: context,
                barrierDismissible: true,
                builder: (context){
                  return AlertDialog(
                    title: Text('제목'),

                    content: SingleChildScrollView(
                      child: ListBody(
                        children: [
                          Text('첫줄'),
                          Text('첫줄')
                        ],
                      ),
                    ),

                    actions: [
                      TextButton(
                          onPressed: (){
                            Navigator.of(context).pop();
                          },
                          child: Text('취소')
                      ),
                      TextButton(
                          onPressed: (){},
                          child: Text('확인')
                      ),
                    ],

              );
            });
          },
        ),
        appBar: AppBar(),
        body: BodyList(),
        bottomNavigationBar: BottomAppBar(),
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

class BodyList extends StatefulWidget {
  const BodyList({Key? key}) : super(key: key);

  @override
  State<BodyList> createState() => _BodyListState();
}

class _BodyListState extends State<BodyList> {
  var name = ['쌍칼', '홍길동', '시라소니', '곽두철'];

  var like = [0, 0, 0, 0];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: name.length,
        itemBuilder: (context, i) {
          return ListTile(
            leading: Text(like[i].toString()),
            title: Text(name[i]),
            trailing: ElevatedButton(
              child: Text('좋아요'),
              onPressed: (){
                setState(() {
                  like[i]++;
                });
              },
            )
            ,);
        },
      ),
    );
  }
}
