import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 16,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                  textStyle:
                      TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                  padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                  shadowColor: Colors.blue,
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  )),
              onPressed: () {
                showDialog(
                  barrierColor: Colors.green,
                  barrierDismissible: false,
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      //title: Text('Delete'),
                      content: const Text('Anonna is My Wife!'),
                      actions: [
                        TextButton(onPressed: () {}, child: const Text('No')),
                        TextButton(onPressed: () {}, child: const Text('Yes')),
                      ],
                    );
                  },
                );
              },
              child: const Text('Tap'),
            ),
            const SizedBox(
              height: 16,
            ),
            TextButton(
              onPressed: () {
                print('Text Button');
              },
              child: Text('Click here'),
            ),
            const SizedBox(
              height: 16,
            ),
            IconButton(
              onPressed: () {
                print('Icon Button');
              },
              icon: Icon(Icons.add),
            ),
            const SizedBox(height: 16),
            OutlinedButton(
              onPressed: () {
                print('Outlined Button');
              },
              child: Text('Outline'),
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                print('Inkwell');
              },
              child: Text('Sample Text'),
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: (){
                print('Just One Click');
              },

              onDoubleTap: (){
                print('Double Click');
              },
              onLongPress: (){
                print('on Long press');
              },
              onLongPressEnd: (details) {
                print('on Long press End');
              },onLongPressCancel: (){
                print('on Long press Cancel');
              },
              child: const Column(
                children: [
                  Text('Just One Click'),
                  Text('Double Click'),
                  Text('on Long press'),
                  Text('on Long press End'),
                  Text('on Long press Cancel'),
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('Floating Action Button');
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
