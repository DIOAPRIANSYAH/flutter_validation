import 'package:flutter/material.dart';

import 'Pages/praktikum_1.dart';
import 'Pages/praktikum_2.dart';
import 'Pages/praktikum_3.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter ListView Navigation I',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyListView(),
    );
  }
}

class MyListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[Colors.green, Colors.blue])),
        ),
        iconTheme: const IconThemeData(
          color: Color.fromARGB(255, 255, 255, 255), // <-- SEE HERE
        ),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.settings))
        ],
        title: Text('Main Menu'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 8),
        children: [
          ListTile(
            leading: const CircleAvatar(
              backgroundColor: Colors.green,
              child: Text('1'),
            ),
            title: const Text('Praktikum 1'),
            subtitle: const Text('Menerapkan Gesture Detector'),
            trailing: const Icon(Icons.keyboard_arrow_right_sharp),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => praktikum_1(),
                ),
              );
            },
            shape: RoundedRectangleBorder(
              side: const BorderSide(
                  color: Color.fromARGB(255, 36, 192, 72), width: 3),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          const SizedBox(height: 16),
          ListTile(
            leading: const CircleAvatar(
              backgroundColor: Colors.green,
              child: Text('2'),
            ),
            title: const Text('Praktikum 2'),
            subtitle: const Text('Menerapkan Input Widgets dan Forms'),
            trailing: const Icon(Icons.keyboard_arrow_right_sharp),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => praktikum_2(),
                ),
              );
            },
            shape: RoundedRectangleBorder(
              side: const BorderSide(
                  color: Color.fromARGB(255, 36, 192, 72), width: 3),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          const SizedBox(height: 16),
          ListTile(
            leading: const CircleAvatar(
              backgroundColor: Colors.green,
              child: Text('3'),
            ),
            title: const Text('Praktikum 3'),
            subtitle: const Text('Menerapkan Customisasi Praktikum 2'),
            trailing: const Icon(Icons.keyboard_arrow_right_sharp),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => praktikum_3(),
                ),
              );
            },
            shape: RoundedRectangleBorder(
              side: const BorderSide(
                  color: Color.fromARGB(255, 36, 192, 72), width: 3),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ],
      ),
    );
  }
}
