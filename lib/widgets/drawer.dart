import 'package:flutter/material.dart';
import 'package:project_restaurant/routes/sidebar_routes.dart';
import 'package:project_restaurant/classes/route.dart' as _MyAppRoute;

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {


  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
            ),
            accountName: const Text(
              "Munch & Crunch User",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            accountEmail: const Text("Logged in"),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(
                Icons.person,
                size: 40,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          ),
          Expanded(
            child: FutureBuilder<List<_MyAppRoute.Router>>(
              future: getRoleBasedRoutes(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                } else if (snapshot.hasError) {
                  return Center(child: Text('Error: ${snapshot.error}'));
                } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                  return const Center(child: Text('No menu items available'));
                }

                final approute = snapshot.data!;
                return ListView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: approute.length,
                  itemBuilder: (context, index) {
                    final item = approute[index];
                    return ListTile(
                      leading: IconTheme(
                        data: IconThemeData(
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        child: item.icon ?? const Icon(Icons.circle),
                      ),
                      title: Text(
                        item.title,
                        style: const TextStyle(fontWeight: FontWeight.w500),
                      ),
                      onTap: () {
                        Navigator.pushNamed(context, item.routeLink);
                      },
                    );
                  },
                );
              },
            ),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.logout, color: Colors.red),
            title: const Text('Logout', style: TextStyle(color: Colors.red)),
            onTap: () {
              // Handle logout logic here
              Navigator.pushReplacementNamed(context, '/login');
            },
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
