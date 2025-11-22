import 'package:flutter/material.dart';
import 'package:project_restaurant/widgets/drawer.dart';
import 'package:project_restaurant/widgets/footer.dart';

class EmpWork extends StatelessWidget {
  const EmpWork({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('EmpWork'),
        backgroundColor: Colors.green,
      ),
      body: const Center(
        child: Text("EmpWork"),
      ),
      drawer: const MyDrawer(),
      // bottomNavigationBar: const Footer(),
    );
  }
}