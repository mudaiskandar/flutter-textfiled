import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan Text Field"),
        ),
        body: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              TextField(
                decoration: InputDecoration(
                    fillColor: Colors.lightBlue[50],
                    filled: true,
                    icon: Icon(Icons.add_alarm),
                    prefixIcon: Icon(Icons.person),
                    //prefixText: "Name is",
                    //prefixStyle: TextStyle(
                    //    color: Colors.blue, fontWeight: FontWeight.w600),
                    labelText: "Username",
                    // hintText: "Nama Lengkapnya Lo",
                    //hintStyle: TextStyle(fontSize: 12),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
                //maxLength: 5,
                // obscureText: true, ---- password
                onChanged: (value) {
                  setState(() {});
                },
                controller: controller,
              ),
              Text(controller.text),
              TextField(
                decoration: InputDecoration(
                    fillColor: Colors.lightBlue[50],
                    filled: true,
                    icon: Icon(Icons.add_alarm),
                    prefixIcon: Icon(Icons.password),
                    // prefixText: "Name is",
                    prefixStyle: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.w600),
                    labelText: "Password",
                    // hintText: "Nama Lengkapnya Loo",
                    hintStyle: TextStyle(fontSize: 12),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
                //maxLength: 5,
                obscureText: true,
                onChanged: (value) {
                  setState(() {});
                },
                controller: controller,
              ),
              Text(controller.text),
              RaisedButton(
                color: Colors.amber,
                shape: StadiumBorder(),
                child: Text("Masuk"),
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
