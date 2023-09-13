import 'package:flutter/material.dart';

import '../shared widgets/display_data.dart';

class RequiredPage extends StatelessWidget {
  const RequiredPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Padding(
      padding: EdgeInsets.all(20),
      child: Container(
        height: 800,
        child: AspectRatio(
          aspectRatio: 3 / 2,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                    height: 600,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: DataTable(
                        showCheckboxColumn: true,
                        border: TableBorder.all(width: 1),
                        headingRowColor: MaterialStateColor.resolveWith(
                            (states) => Colors.cyan.withOpacity(0.3)),
                        columns: const <DataColumn>[
                          DataColumn(
                            label: Text(
                              'Item Name',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                          ),
                          DataColumn(
                            label: Text(
                              'Qty ',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            numeric: true,
                          ),
                        ],
                        rows: data
                            .map(
                              (item) => DataRow(
                                cells: [
                                  DataCell(Text(item['Item Name'])),
                                  DataCell(Text(item['Qty'].toString())),
                                ],
                              ),
                            )
                            .toList(),
                      ),
                    )),
                SizedBox(
                  height: 50,
                ),
              ]),
        ),
      ),
    )));
  }
}
