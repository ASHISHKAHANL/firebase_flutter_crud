import 'package:flutter/material.dart';
import 'package:flutter_firebase/screens/update_student_page.dart';

class ListStudentPage extends StatefulWidget {
  const ListStudentPage({super.key});

  @override
  State<ListStudentPage> createState() => _ListStudentPageState();
}

class _ListStudentPageState extends State<ListStudentPage> {
  deleteUser(id) {
    Text("User Deleted $id");
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Table(
          border: TableBorder.all(),
          // columnWidths: const <int, TableColumnWidth>{
          //   1: FixedColumnWidth(140)
          // },
          defaultVerticalAlignment: TableCellVerticalAlignment
              .middle, //for the text to be written will be in the middle
          children: [
            TableRow(
              children: [
                TableCell(
                  child: Container(
                    color: Colors.green,
                    child: const Center(
                      child: Text(
                        'Name',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                TableCell(
                  child: Container(
                    color: Colors.green,
                    child: const Center(
                      child: Text(
                        'Email',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                TableCell(
                  child: Container(
                    color: Colors.green,
                    child: const Center(
                      child: Text(
                        'Action',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            TableRow(
              children: [
                const TableCell(
                  child: Center(
                    child: Text(
                      'John',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
                const TableCell(
                  child: Center(
                    child: Text(
                      'John@gmail.com',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
                TableCell(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () => {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const UpdateStudentPage(),
                          ),
                        ),
                      },
                      icon: const Icon(
                        Icons.edit,
                        color: Colors.deepPurple,
                      ),
                    ),
                    IconButton(
                        onPressed: () => {deleteUser(1)},
                        icon: const Icon(
                          Icons.delete,
                          color: Colors.red,
                        ))
                  ],
                )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
