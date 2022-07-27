import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class BangunDatar extends StatefulWidget {
  const BangunDatar({Key? key}) : super(key: key);

  @override
  State<BangunDatar> createState() => _BangunDatarState();
}

class _BangunDatarState extends State<BangunDatar> {
  String result = '';

  TextEditingController ctrpanjang = new TextEditingController();
  TextEditingController ctrlebar = new TextEditingController();

  String resulttext = "0";
  final _text = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Form Rgistration"),),
        body: Container(
            margin: EdgeInsets.all(10),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextField(
                    decoration: new InputDecoration(
                        labelText: "Masukkan Panjang "),
                    controller: ctrpanjang,
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.digitsOnly
                    ], // Only numbers can be entered
                  ),
                  TextField(
                    decoration: new InputDecoration(
                        labelText: "Masukkan Lebar "),
                    controller: ctrlebar,
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.digitsOnly
                    ], // Only numbers can be entered
                  ),

                  ElevatedButton(
                    child: Text("Calculate"),
                    onPressed: () {
                      setState(() {
                        int result = int.parse(ctrpanjang.text) *
                            int.parse(ctrlebar.text);
                        resulttext = result.toString();
                      });
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(" ",
                        style: TextStyle(
                          fontSize: 20,
                        ),),
                      new Text(resulttext,
                        style: TextStyle(
                          fontSize: 20,
                        ),),
                    ],
                  ),
                ]

            )

        ));
  }

  // void submit(BuildContext context, String ctrlebar, String ctrpanjang) {
  //   if (ctrlebar.isEmpty || ctrpanjang.isEmpty) {
  //     final snackBar = SnackBar(
  //       duration: const Duration(seconds: 5),
  //       content: Text("Email dan password harus diisi"),
  //       backgroundColor: Colors.red,
  //     );
  //
  //     ScaffoldMessenger.of(context).showSnackBar(snackBar);
  //     return;
    }
