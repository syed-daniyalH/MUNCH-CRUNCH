import 'package:flutter/material.dart';
import 'package:project_restaurant/widgets/drawer.dart';

class Bill extends StatelessWidget {
  const Bill({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Generate Bill'),
      ),
      drawer: const MyDrawer(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Table Selection',
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    const SizedBox(height: 16),
                    DropdownButtonFormField<String>(
                      decoration: const InputDecoration(
                        labelText: 'Select Table',
                        prefixIcon: Icon(Icons.table_restaurant),
                      ),
                      items: const [
                        DropdownMenuItem(value: '1', child: Text('Table 1')),
                        DropdownMenuItem(value: '2', child: Text('Table 2')),
                        DropdownMenuItem(value: '3', child: Text('Table 3')),
                      ],
                      onChanged: (value) {},
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Order Summary',
                          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                        Text(
                          '#ORD-2024-001',
                          style: TextStyle(color: Colors.grey[600]),
                        ),
                      ],
                    ),
                    const Divider(height: 32),
                    _buildBillItem('Chicken Burger', 2, 12.50),
                    _buildBillItem('French Fries', 1, 5.00),
                    _buildBillItem('Coke', 3, 2.50),
                    const Divider(height: 32),
                    _buildSummaryRow('Subtotal', 37.50),
                    _buildSummaryRow('Tax (10%)', 3.75),
                    const SizedBox(height: 16),
                    _buildSummaryRow('Total', 41.25, isTotal: true, context: context),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 24),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.print),
              label: const Text('PRINT BILL'),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(16),
              ),
            ),
            const SizedBox(height: 16),
            OutlinedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.payment),
              label: const Text('MARK AS PAID'),
              style: OutlinedButton.styleFrom(
                padding: const EdgeInsets.all(16),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBillItem(String name, int qty, double price) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              '$qty x $name',
              style: const TextStyle(fontSize: 16),
            ),
          ),
          Text(
            '\$${(price * qty).toStringAsFixed(2)}',
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }

  Widget _buildSummaryRow(String label, double amount,
      {bool isTotal = false, BuildContext? context}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: isTotal ? 20 : 16,
              fontWeight: isTotal ? FontWeight.bold : FontWeight.normal,
              color: isTotal ? Theme.of(context!).colorScheme.primary : Colors.black87,
            ),
          ),
          Text(
            '\$${amount.toStringAsFixed(2)}',
            style: TextStyle(
              fontSize: isTotal ? 20 : 16,
              fontWeight: isTotal ? FontWeight.bold : FontWeight.normal,
              color: isTotal ? Theme.of(context!).colorScheme.primary : Colors.black87,
            ),
          ),
        ],
      ),
    );
  }
}