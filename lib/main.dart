import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
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
              onPressed: () {
                showModalBottomSheet(
                  barrierColor: Colors.green.shade100,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  isScrollControlled: false,
                  useSafeArea: true,
                  enableDrag: false,
                  context: context,
                  builder: (context) {
                    return Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 16,
                              ),
                              Text(
                                'Title',
                                style: TextStyle(fontSize: 18),
                              ),
                            ],
                          ),
                        ),
                        const Divider(
                          height: 10,
                          thickness: 4,
                        ),
                        const Text('Sample'),
                        Row(
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              child: const Text('Cancel'),
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              child: const Text('Save'),
                            ),
                          ],
                        ),
                      ],
                    );
                  },
                );
              },
              child: const Text(
                'TAP',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            SizedBox(height: 24),
            Padding(
              padding: EdgeInsets.all(18),
              child: TextField(
                maxLength: 50,
                onChanged: (String? value) {
                  print('value');
                },
                controller: TextEditingController(),
                obscureText: false,
                maxLines: 1,
                keyboardType: TextInputType.phone,
                enabled: true,
                decoration: InputDecoration(
                  hintText: 'Phone',
                  hintStyle: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.grey.shade50,
                  ),
                  labelText: 'Contact Number',
                  prefix: Icon(Icons.phone),
                  suffix: Icon(Icons.person),
                  fillColor: Colors.white54,
                  filled: true,
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.pink),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red, width: 2),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green, width: 4),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {

      },
        backgroundColor: Colors.amberAccent,
        foregroundColor: Colors.black,
        //hoverColor: Colors.blue,
        splashColor: Colors.green,
      child:
      const Icon(Icons.add),
      ),
    );
  }
}
