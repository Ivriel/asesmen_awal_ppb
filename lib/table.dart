import 'package:flutter/material.dart';

class TableWidget extends StatelessWidget {
  const TableWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
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
              ]),
              DataRow(cells: [
                DataCell(Text('Bob')),
                DataCell(Text('30')),
                DataCell(Text('Male')),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}