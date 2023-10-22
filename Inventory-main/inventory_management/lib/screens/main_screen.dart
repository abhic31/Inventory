import 'package:flutter/material.dart';
import 'package:inventory_management/screens/display_data.dart';
import 'package:inventory_management/screens/required_data.dart';
import 'package:inventory_management/screens/update_inventory.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            leading: const Icon(Icons.restaurant_menu),
            title: const Text("Frachise Name "),
            actions: [
              IconButton(
                icon: const Icon(Icons.settings),
                tooltip: 'Show Snackbar',
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('This is a snackbar')));
                },
              ),
            ],
            bottom: const TabBar(tabs: [
              Tab(icon: Icon(Icons.update)),
              Tab(icon: Icon(Icons.view_list)),
              Tab(icon: Icon(Icons.list_sharp)),
            ]),
          ),
          body: Center(
            child: tabContent(),
          ),
//bottomNavigationBar: ,
        ),
      ),
    );
  }

  TabBarView tabContent() {
    return const TabBarView(
      children: [UpdatePage(), DisplayPage(), RequiredPage()],
    );
  }
}
