import 'package:flutter/material.dart';
import 'profile.dart';
import 'search.dart';

void main() {
  runApp(const MainRouting());
}

class MainRouting extends StatelessWidget {
  const MainRouting({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      initialRoute: '/home',
      routes: {
        '/home': (context) => const Home(),
        '/search': (context) => const Search(),
        '/profile': (context) => const Profile(),
      },
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

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
          title: const Text('Home'),
          centerTitle: true,
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.notifications))
          ],
        ),
        body: SafeArea(
          child: Container(
            child: Scaffold(
                backgroundColor: Colors.grey[200],
                body: const Center(
                  child: Text(
                    'Welcome to Flutter Rafi',
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