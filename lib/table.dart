import 'package:asesmen_awal/API.dart';
import 'package:flutter/material.dart';

class TableWidget extends StatelessWidget {
  const TableWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Soal 6 - Table'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey.shade300)
              ),
              child: DataTable(
                border: TableBorder.all(color: Colors.grey.shade300,width: 0.5),
                headingRowColor: WidgetStateProperty.all(Colors.blue),
                headingTextStyle: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),
                headingRowHeight: 56,
                dataRowMaxHeight:60 ,
                columnSpacing: 40,
                columns: [
                  DataColumn(label: Text('Name')),
                  DataColumn(label: Text('Age')),
                  DataColumn(label: Text('Gender')),
                ],
                rows: [
                  DataRow(cells: [
                    DataCell(Text('John')),
                    DataCell(Text('20')),
                    DataCell(Text('Male')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Jane')),
                    DataCell(Text('25')),
                    DataCell(Text('Female')),
                  ])
                ],
              ),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  }, 
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Text('Back')
                  ),
                  const SizedBox(width: 30),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const Api()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Text('Next')
                  ),
              ],
            )
            ],
          ),
        ),
      ),
    );
  }
}