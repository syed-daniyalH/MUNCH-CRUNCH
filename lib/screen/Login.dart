// ignore_for_file: constant_pattern_never_matches_value_type, avoid_print, use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:project_restaurant/database/database_service.dart';
import 'package:project_restaurant/services/SharedPref_Helper.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  late SharedPref pref;
  late DatabaseService _databaseService;

  @override
  void initState() {
    super.initState();
    // local-storage
    initiatePreference();
    // db storage
    _databaseService = DatabaseService();
    _databaseService.openDatabaseConnection();
  }

  void initiatePreference() async {
    pref = SharedPref();
    await pref.init();
  }

  Future<void> _login() async {

    String username = _usernameController.text;
    String password = _passwordController.text;

    List<String> admin = ["Admin"];
    List<String> manager = ["Manager"];
    List<String> waiter = ["Waiter"];

    if (admin.contains(username) && (password=="admin123")) {
      await pref.setValue("ROLE", "admin");
      Navigator.pushNamed(context, "/admin");
    }
    else if (manager.contains(username) && (password=="manager123")) {
      await pref.setValue("ROLE", "manager");
      Navigator.pushNamed(context, "/m-home");
    }
    else if (waiter.contains(username) && (password=="waiter123")) {
      await pref.setValue("ROLE", "waiter");
      Navigator.pushNamed(context, "/w-home");
    }
    else {
      print("INCORRECT CREDENTIALS");
    }

  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Theme.of(context).colorScheme.primary,
              Theme.of(context).colorScheme.primaryContainer,
            ],
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.restaurant_menu,
                  size: 80,
                  color: Colors.white,
                ),
                const SizedBox(height: 24),
                const Text(
                  'Munch & Crunch',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    letterSpacing: 1.5,
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Management System',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white70,
                  ),
                ),
                const SizedBox(height: 48),
                Card(
                  elevation: 8,
                  child: Padding(
                    padding: const EdgeInsets.all(32.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          'Welcome Back',
                          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 32),
                        TextField(
                          controller: _usernameController,
                          decoration: const InputDecoration(
                            labelText: 'Username',
                            prefixIcon: Icon(Icons.person_outline),
                          ),
                        ),
                        const SizedBox(height: 16),
                        TextField(
                          controller: _passwordController,
                          decoration: const InputDecoration(
                            labelText: 'Password',
                            prefixIcon: Icon(Icons.lock_outline),
                          ),
                          obscureText: true,
                        ),
                        const SizedBox(height: 32),
                        ElevatedButton(
                          onPressed: _login,
                          child: const Text(
                            'LOGIN',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
