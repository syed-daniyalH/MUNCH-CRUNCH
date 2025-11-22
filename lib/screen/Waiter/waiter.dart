import 'package:flutter/material.dart';
import 'package:project_restaurant/widgets/dashboard_card.dart';
import 'package:project_restaurant/widgets/drawer.dart';

class Waiter extends StatelessWidget {
  const Waiter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Waiter Dashboard'),
      ),
      drawer: const MyDrawer(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'My Shift',
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
                  title: 'Pending Orders',
                  value: '5',
                  icon: Icons.pending_actions,
                  color: Colors.orange,
                  onTap: () => Navigator.pushNamed(context, '/w-order-manage'),
                ),
                DashboardCard(
                  title: 'Active Tables',
                  value: '4',
                  icon: Icons.table_restaurant,
                  color: Colors.blue,
                  onTap: () => Navigator.pushNamed(context, '/w-table-manage'),
                ),
                DashboardCard(
                  title: 'Ready to Serve',
                  value: '2',
                  icon: Icons.room_service,
                  color: Colors.green,
                  onTap: () {},
                ),
                DashboardCard(
                  title: 'Total Tips',
                  value: '\$45',
                  icon: Icons.monetization_on,
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
                    color: Colors.red.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Icon(Icons.add_circle_outline, color: Colors.red),
                ),
                title: const Text('New Order'),
                subtitle: const Text('Take a new order for a table'),
                trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                onTap: () {},
              ),
            ),
            const SizedBox(height: 8),
            Card(
              child: ListTile(
                leading: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.teal.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Icon(Icons.receipt, color: Colors.teal),
                ),
                title: const Text('Generate Bill'),
                subtitle: const Text('Process payment for a table'),
                trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                onTap: () => Navigator.pushNamed(context, '/w-bill'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}