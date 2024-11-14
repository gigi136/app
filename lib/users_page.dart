import 'package:flutter/material.dart';
import 'package:flutter_application_1/signupcustomer_page.dart';
import 'types_page.dart';

class UsersPage extends StatelessWidget {
  const UsersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('XFIX'),
        backgroundColor: const Color.fromARGB(255, 118, 21, 173),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'What type of user are you?',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TypesPage()),
                );
              },
              child: const Text('Service Provider'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignupCustomerPage()),
                );
              },
              child: const Text('Customer'),
            ),
          ],
        ),
      ),
    );
  }
}
