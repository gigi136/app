import 'package:flutter/material.dart';
import 'package:flutter_application_1/signup_page.dart';


class TypesPage extends StatelessWidget {
  const TypesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('XFIX'),
        backgroundColor: const Color.fromARGB(255, 118, 21, 173),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Are you ...',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround, 

              children: [
                Image.asset('images/plumbing.png', width: 100, height: 100),
                Image.asset('images/carpenters.png', width: 100, height: 100),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset('images/car-repairs.png', width: 100, height: 100),
                Image.asset('images/welders.png', width: 100, height: 100),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset('images/electrician.png', width: 100, height: 100),
                Image.asset('images/hairstyling.png', width: 100, height: 100),
              ],
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                 Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignupPage()),
                );
              },
              child: const Text('NEXT'),
            ),
          ],
        ),
      ),
    );
  }
}