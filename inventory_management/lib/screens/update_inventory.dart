import 'package:flutter/material.dart';
import 'package:inventory_management/shared%20widgets/custom_counter.dart';

class UpdatePage extends StatelessWidget {
  const UpdatePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
            width: 375,
            color: Colors.cyan.withOpacity(0.1),
            child: AspectRatio(
              aspectRatio: 6 / 4,
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                Padding(
                    padding: EdgeInsets.all(20),
                    child: Text(
                      "Add to Inventory ",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 35,
                          color: Colors.cyan,
                          fontWeight: FontWeight.bold),
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Flexible(
                        child: SizedBox(
                      width: 500,
                      child: TextFormField(
                        style: TextStyle(fontSize: 18),
                        decoration: InputDecoration(
                            hintText: "Enter Item Name",
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.blue),
                                borderRadius: BorderRadius.circular(5))),
                      ),
                    )),
                    Flexible(
                        child: SizedBox(width: 125, child: CustomCounter())),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      height: 40,
                      width: 100,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "Add",
                          style: TextStyle(fontSize: 25),
                        ),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.cyan,
                            shadowColor: Colors.blueGrey),
                      ),
                    ),

                    //ElevatedButton(onPressed: () {}, child: Text("Add")),
                    Text(
                      "or",
                      style: TextStyle(fontSize: 30),
                    ),
                    Icon(
                      Icons.qr_code_scanner,
                      size: 40,
                    )
                  ],
                )
              ]),
            )),
        Container(
            width: 375,
            color: Colors.green.withOpacity(0.1),
            child: AspectRatio(
              aspectRatio: 6 / 4,
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                Padding(
                    padding: EdgeInsets.all(20),
                    child: Text(
                      "Add to Required ",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 35,
                          color: Colors.green,
                          fontWeight: FontWeight.bold),
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Flexible(
                        child: SizedBox(
                      width: 500,
                      child: TextFormField(
                        style: TextStyle(fontSize: 18),
                        decoration: InputDecoration(
                            hintText: "Enter Item Name",
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.green),
                                borderRadius: BorderRadius.circular(5))),
                      ),
                    )),
                    Flexible(
                        child: SizedBox(width: 125, child: CustomCounter())),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      height: 40,
                      width: 100,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "Add",
                          style: TextStyle(fontSize: 25),
                        ),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,
                            shadowColor: Colors.blueGrey),
                      ),
                    ),

                    //ElevatedButton(onPressed: () {}, child: Text("Add")),
                    Text(
                      "or",
                      style: TextStyle(fontSize: 30),
                    ),
                    Icon(
                      Icons.qr_code_scanner,
                      size: 40,
                    )
                  ],
                )
              ]),
            )),
      ],
    )));
  }
}
