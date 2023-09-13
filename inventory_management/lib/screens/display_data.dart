import 'package:flutter/material.dart';

import '../shared widgets/display_data.dart';
import 'package:fluttertoast/fluttertoast.dart';

class DisplayPage extends StatelessWidget {
  const DisplayPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: SizedBox(
      height: 800,
      child: AspectRatio(
        aspectRatio: 3 / 2,
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          SizedBox(
              height: 600,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: DataTable(
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
                    DataColumn(
                      label: Text(
                        'Date ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ),
                  ],
                  rows: data
                      .map(
                        (item) => DataRow(cells: [
                          DataCell(Text(item['Item Name'])),
                          DataCell(Text(item['Qty'].toString())),
                          DataCell(Text(item['Date'])),
                        ]),
                      )
                      .toList(),
                ),
              )),
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: 40,
                width: 100,
                child: ElevatedButton(
                  onPressed: () async {
                    //when click we have to show the datepicker
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.cyan,
                      shadowColor: Colors.blueGrey),
                  child: const Text(
                    "Filter",
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
                width: 175,
                child: ElevatedButton(
                  onPressed: () {
                    Fluttertoast.showToast(
                        msg: "Report Has been sent to your email address",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.CENTER,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.red,
                        textColor: Colors.white,
                        fontSize: 16.0);
                  },
                  child: const Text(
                    "Get Report ",
                    style: TextStyle(fontSize: 25),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.cyan,
                      shadowColor: Colors.blueGrey),
                ),
              ),
            ],
          )
        ]),
      ),
    )));
  }
}
