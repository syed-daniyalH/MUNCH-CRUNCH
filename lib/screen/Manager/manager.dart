import 'package:flutter/material.dart';
import 'package:project_restaurant/widgets/dashboard_card.dart';
import 'package:project_restaurant/widgets/drawer.dart';

class Manager extends StatelessWidget {
  const Manager({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Manager Dashboard'),
      ),
      drawer: const MyDrawer(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Overview',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
            ),
            const SizedBox(height: 16),
            GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              children: [
                DashboardCard(
                  title: 'Total Orders',
                  value: '124',
                  icon: Icons.receipt_long,
                  color: Colors.blue,
                  onTap: () {},
                ),
                DashboardCard(
                  title: 'Revenue',
                  value: '\$1,250',
                  icon: Icons.attach_money,
                  color: Colors.green,
                  onTap: () {},
                ),
                DashboardCard(
                  title: 'Active Staff',
                  value: '8',
                  icon: Icons.people,
                  color: Colors.orange,
                  onTap: () {},
                ),
                DashboardCard(
                  title: 'Tables Occupied',
                  value: '12/20',
                  icon: Icons.table_restaurant,
                  color: Colors.purple,
                  onTap: () {},
                ),
              ],
            ),
            const SizedBox(height: 24),
            Text(
              'Quick Actions',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
            ),
            const SizedBox(height: 16),
            Card(
              child: ListTile(
                leading: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.teal.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Icon(Icons.restaurant_menu, color: Colors.teal),
                ),
                title: const Text('Manage Food Menu'),
                subtitle: const Text('Add, edit, or remove menu items'),
                trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                onTap: () => Navigator.pushNamed(context, '/m-food'),
              ),
            ),
            const SizedBox(height: 8),
            Card(
              child: ListTile(
                leading: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.indigo.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Icon(Icons.person_add, color: Colors.indigo),
                ),
                title: const Text('Register Employee'),
                subtitle: const Text('Add new staff members'),
                trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                onTap: () => Navigator.pushNamed(context, '/m-emp-register'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}