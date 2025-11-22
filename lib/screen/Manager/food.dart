import 'package:flutter/material.dart';
import 'package:project_restaurant/widgets/drawer.dart';

class Food extends StatelessWidget {
  const Food({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Food Menu'),
      ),
      drawer: const MyDrawer(),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: const Text('Add Item'),
        icon: const Icon(Icons.add),
        backgroundColor: Theme.of(context).colorScheme.secondary,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: 5, // Placeholder count
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.only(bottom: 16),
            child: ListTile(
              contentPadding: const EdgeInsets.all(16),
              leading: Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Icon(Icons.fastfood, color: Colors.grey),
              ),
              title: Text(
                'Food Item ${index + 1}',
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                'Delicious description for food item ${index + 1}',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              trailing: Text(
                '\$${(index + 1) * 5}.99',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.primary,
                  fontSize: 16,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}