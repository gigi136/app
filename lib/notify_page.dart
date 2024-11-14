import 'package:flutter/material.dart';
import 'package:flutter_application_1/users_page.dart';


class NotifyPage extends StatelessWidget {
  const NotifyPage({super.key});

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
              'The app is made for technical and vocatinal gradudes MANILY!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            const Text(
              'Sorry!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            const Text(
              'But we only verify Students, Graduates, and Alumni of technical and vocational institutions.',
              textAlign: TextAlign.center,
               style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)
            ),
            const SizedBox(height: 20),
            const Text(
              'If you have met the main condition, please go tothe sign-up form pages.',
              textAlign: TextAlign.center,
               style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => UsersPage()),
                );
              },
              child: const Text('SUBMIT'),
            ),
          ],
        ),
      ),
    );
  }
}
