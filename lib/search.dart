import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Rafi',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.list_rounded,
                size: 30,
              )),
          title: const Text('Search'),
          centerTitle: true,
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.notifications))
          ],
        ),
        body: SafeArea(
          child: Container(
            child: Scaffold(
                backgroundColor: Colors.grey[200],
                body: const Center(
                  child: Text(
                    'Welcome to Search Page',
                    style: TextStyle(fontSize: 24, color: Colors.indigo),
                  ),
                ),
                bottomNavigationBar: BottomNavigationBar(
                  onTap: (index) {
                    if (index == 0) {
                      Navigator.pushReplacementNamed(context, '/home');
                    } else if (index == 1) {
                      Navigator.pushReplacementNamed(context, '/search');
                    } else if (index == 2) {
                      Navigator.pushReplacementNamed(context, '/profile');
                    }
                  },
                  items: const [
                    BottomNavigationBarItem(
                        icon: Icon(
                          Icons.home,
                          color: Colors.indigo,
                          size: 30,
                        ),
                        label: ''),
                    BottomNavigationBarItem(
                        icon: Icon(
                          Icons.search,
                          color: Colors.indigo,
                          size: 30,
                        ),
                        label: ''),
                    BottomNavigationBarItem(
                        icon: Icon(
                          Icons.person,
                          color: Colors.indigo,
                          size: 30,
                        ),
                        label: ''),
                  ],
                )),
          ),
        ),
      ),
    );
  }
}