import 'package:flutter/material.dart';
import 'package:flutter_application_1/notify_page.dart';
import 'package:flutter_application_1/serviceselectionscreen.dart';


class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome to XFIX'),
        backgroundColor: const Color.fromARGB(255, 118, 21, 173), 
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Login',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Name',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
               
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ServiceSelectionScreen()),
                );
              },
              child: const Text('Log In'),
            ),
            const SizedBox(height: 10),
            TextButton(
              onPressed: () {
                
              },
              child: const Text('Forgot Password?'),
            ),
             const SizedBox(height: 10),
             ElevatedButton(
              onPressed: () {
                
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NotifyPage()),
                );
              },
              child: const Text('signup'),
            ),
          ],
        ),
      ),
    );
  }
}