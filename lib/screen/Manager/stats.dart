import 'package:flutter/material.dart';
import 'package:project_restaurant/widgets/drawer.dart';
import 'package:project_restaurant/widgets/footer.dart';

class Stats extends StatelessWidget {
  const Stats({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stats'),
        backgroundColor: Colors.green,
      ),
      body: const Center(
        child: Text("Stats"),
      ),
      drawer: const MyDrawer(),
      // bottomNavigationBar: const Footer(),
    );
  }
}