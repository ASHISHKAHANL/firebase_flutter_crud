import 'package:flutter/material.dart';
import 'package:flutter_firebase/screens/add_student_page.dart';
import 'package:flutter_firebase/screens/list_student_page.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Flutter Firebase CRUD'),
            ElevatedButton(
              onPressed: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AddStudentPage(),
                  ),
                ),
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blueGrey),
              child: const Text(
                'Add Student',
                style: TextStyle(fontSize: 20.0),
              ),
            ),
          ],
        ),
      ),
      body: const ListStudentPage(),
    );
  }
}
