import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyForm(),
    );
  }
}

class MyForm extends StatelessWidget {
  final _key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(32),
        child: Form(
          key: _key,
          child: Column(
            children: [
              Text(
                'IT Department Student Feedback Form',
                style: (TextStyle(
                    fontSize: 25,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold)),
              ),
              SizedBox(
                height: 30,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  icon: const Icon(Icons.person),
                ),
                initialValue: "Student Name",
                validator: (value) {
                  if (value!.isEmpty) {
                    return "This field cannot be empty";
                  } else if (value.length <= 5) {
                    return "This field should be greater than length 5";
                  } else {
                    return null;
                  }
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                  icon: const Icon(Icons.email),
                ),
                initialValue: "Email Address",
                validator: (value) {
                  if (value!.isEmpty) {
                    return "This field cannot be empty";
                  } else if (value.length <= 5) {
                    return "This field should be greater than length 5";
                  } else {
                    return null;
                  }
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                  icon: const Icon(Icons.numbers),
                ),
                initialValue: "Registration Number",
                validator: (value) {
                  if (value!.isEmpty) {
                    return "This field cannot be empty";
                  } else if (value.length <= 5) {
                    return "This field should be greater than length 5";
                  } else {
                    return null;
                  }
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                  icon: const Icon(Icons.phone),
                ),
                initialValue: "Contact Number",
                validator: (value) {
                  if (value!.isEmpty) {
                    return "This field cannot be empty";
                  } else if (value.length <= 9) {
                    return "This field should be of length 9";
                  } else {
                    return null;
                  }
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                  icon: const Icon(Icons.home_work),
                ),
                initialValue: 'Class and Branch',
                validator: (value) {
                  if (value!.isEmpty) {
                    return "This field cannot be empty";
                  } else if (value.length <= 2) {
                    return "This field should be greater than length 2";
                  } else {
                    return null;
                  }
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                  icon: const Icon(Icons.feedback),
                ),
                initialValue: 'Give your feedback',
                validator: (value) {
                  if (value!.isEmpty) {
                    return "This field cannot be empty";
                  } else if (value.length <= 15) {
                    return "This field should be greater than length 15";
                  } else {
                    return null;
                  }
                },
              ),
              SizedBox(
                height: 30,
              ),
              FlatButton(
                onPressed: () {
                  if (_key.currentState!.validate()) {
                    Scaffold.of(context).showSnackBar(
                        SnackBar(content: Text('data is submitted')));
                    //print("Your data is submitted");
                  }
                },
                child: Text("Submit"),
                color: Colors.blue,
                textColor: Colors.white,
              )
            ],
          ),
        ),
      ),
    );
  }
}
