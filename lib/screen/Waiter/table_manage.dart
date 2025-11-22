import 'package:flutter/material.dart';
import 'package:project_restaurant/widgets/drawer.dart';
import 'package:project_restaurant/widgets/footer.dart';

class TableManage extends StatelessWidget {
  const TableManage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TableManage'),
        backgroundColor: Colors.green,
      ),
      body: const Center(
        child: Text("TableManage"),
      ),
      drawer: const MyDrawer(),
      // bottomNavigationBar: const Footer(),
    );
  }
}