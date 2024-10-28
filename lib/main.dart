import 'package:flutter/material.dart';

void main() {
  runApp(DemoApp());
}

class DemoApp extends StatelessWidget {
  DemoApp({super.key});

  List<String> friendList = [
    'Iram',
    'Sabbir',
    'Rakib',
    'Hasan',
    'Roy',
    'Niloy',
    'Kopil',
    'Umama',
    'Bappy',
    'Antor',
    'Saiful',
    'Saiful',
    'Saiful',
    'Saiful',
    'Saiful',
  ];

  TextEditingController _emailTEController = TextEditingController();
  TextEditingController _passswordTEController = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Demo App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Home',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.amber,
          elevation: 10,
        ),
        /*  body: ListView.builder(
          itemCount: friendList.length,
          itemBuilder: (context, index) {
            int displayIndex = index + 1;
            return ListTile(
              dense: false,
              title: Text(friendList[index]),
              subtitle: Text('Friend no $displayIndex'),
              trailing: const Icon(Icons.arrow_circle_right_outlined),
              leading: const CircleAvatar(
                backgroundColor: Colors.amber,
                child: Icon(Icons.person),
              ),
              onTap: () {
                print('On Tap $index');
              },
              onLongPress: () {
                print('On LongPress $index');
              },
              tileColor: Colors.grey,
            );
          },
        ),*/ /*
        body: Center(
          child: GridView(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, mainAxisSpacing: 12, crossAxisSpacing: 8),
            children: [
              Text('Iram'),
              Text('Sabbir'),
              Text('Rakib'),
              Text('Hasan'),
              Text('Hasan'),
              Text('Hasan'),
              Text('Hasan'),
              Text('Hasan'),
              Text('Hasan'),
            ],*/
        /*body: GridView.builder(
          gridDelegate:
              const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
          itemCount: friendList.length,
          itemBuilder: (context, index) {
            return Center(
              child: Text(friendList[index]),
            );
          },
        ),*/
        body: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  controller: _emailTEController,
                  decoration: const InputDecoration(
                    hintText: 'Email',
                  ),
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Enter Email Address';
                    }
                    return null;
                  }),
              TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator:(String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Enter Password';
                  }
                  return null;
                } ,
                controller: _passswordTEController,
                decoration: const InputDecoration(
                  hintText: 'Password',
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  /*String email = _emailTEController.text;
                  String password = _passswordTEController.text;

                  if (email.isNotEmpty && password.isNotEmpty) {
                    print('Login Success');
                  } else {
                    print('Login Failed. Missing Data');
                  }*/
                  if (_formKey.currentState!.validate()) {
                    print('Login Success');
                  }
                },
                child: const Text('Tap'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
