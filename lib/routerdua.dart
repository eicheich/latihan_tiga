import 'package:flutter/material.dart';

class routerdua extends StatefulWidget {
  const routerdua({Key? key}) : super(key: key);

  @override
  State<routerdua> createState() => _routerduaState();

}
TextEditingController _phone = new TextEditingController();

class _routerduaState extends State<routerdua> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("damn"),),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: _phone,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'input phone number',

              ),
            ),
            Center(
                child: Container(
                  width: 200,

                  child: ElevatedButton(onPressed: (){
                    Navigator.pop(context, _phone.text);
                  }, child: Text('submit'),),
                )

            ),
          ],
        ),
      ),
    );
  }}
