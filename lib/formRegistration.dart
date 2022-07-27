import 'package:flutter/material.dart';

class formRegistration extends StatefulWidget {
  const formRegistration({Key? key}) : super(key: key);

  @override
  State<formRegistration> createState() => _formRegistrationState();
}

class _formRegistrationState extends State<formRegistration> {
  TextEditingController ctrusername = new TextEditingController();
  TextEditingController ctrpassword = new TextEditingController();
  int id = 1;
  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar (title: Text("Form Rgistration"),),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Username',

              ),
            ),
          Container(height: 20,),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Password',
            ),
          ),
          SizedBox(height: 20,),
          Text("Jenis Kelamin", style: TextStyle(fontSize: 15),),
          SizedBox(height: 10,),
          Row(
            children: [
              Radio(value: 1, groupValue: id, onChanged: (val){
                setState(() {
                id = 1;       });

              }),
              Text("Male"),
            ],
          ),
          Row(
            children: [
              Radio(value: 2, groupValue: id, onChanged: (val){
                setState(() {
                  id = 2;       });
              }),
              Text("Female")
            ],
          ),
          Center(
            child: Container(
              width: 200,
              child: ElevatedButton(onPressed: (){}, child: Text('SUBMIT'),),
            )

          )


          ],
        ),
      ),
    );
  }
}