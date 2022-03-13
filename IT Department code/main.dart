import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final _key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'IT Department',
        home: Scaffold(
          appBar: AppBar(
            leading: Builder(
              builder: (context) => PopupMenuButton(
                icon: Icon(Icons.menu),
                color: Colors.black,
                itemBuilder: (context) => [
                  PopupMenuItem<int>(
                    value: 1,
                    child: Text(
                      "Vision and Mission",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  PopupMenuItem<int>(
                    value: 2,
                    child: Text(
                      "Vision and Mission",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
                onSelected: (value) => visionmission(context),
              ),
            ),
            title: Text('Welcome to IT Department'),
            backgroundColor: Colors.blue,
          ),
          body: Builder(
            builder: (context) => SingleChildScrollView(
              child: Center(
                child: Column(
                  children: [
                    Image.network(
                      'https://i1.wp.com/famt.ac.in/wp-content/uploads/2015/08/DSC_0050.jpg',
                      height: 300,
                    ),
                    Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Text(
                        'Recent advancements in the areas of computers, software, networks, internet, communication technology, Big Data, and cloud computing, etc. have made a huge amount of information available to us. In this high-tech era, information is something without which industry, individuals cannot survive, and their success depends on the ability to acquire accurate and timely information. Keeping this in mind FAMT started the Bachelor of Engineering program in Information Technology (IT) from academic session 2001-2002. The emphasis of B.E. in Information Technology curriculum is on Computer Science, Software Development, Networking, Communication, Web Engineering, Security, Multimedia processing, IoT, Cloud Computing, Data Analytics, and Soft Computing. Currently, the department’s infrastructure contains three classrooms, six laboratories, a staff room, and a seminar hall. Ole classroom is ICT enabled with a Wi-Fi projection facility. All floors of the IT department have Wi-Fi connectivity.',
                        //maxLines: 15,
                        softWrap: true,
                        overflow: TextOverflow.fade,
                        style: TextStyle(fontSize: 15),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    Column(
                      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ButtonTheme(
                          minWidth: 350.0,
                          child: RaisedButton(
                            child: Text('Intel Centre of Excellence Lab'),
                            color: Colors.blue,
                            textColor: Colors.white,
                            onPressed: () => iceLab(context),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        ButtonTheme(
                          minWidth: 350.0,
                          child: RaisedButton(
                            child: Text('Microsoft Virtual Academy Lab'),
                            color: Colors.blue,
                            textColor: Colors.white,
                            onPressed: () => mvaLab(context),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        ButtonTheme(
                          minWidth: 350,
                          child: RaisedButton(
                            child: Text('Apple iOS Developer Centre Lab'),
                            color: Colors.blue,
                            textColor: Colors.white,
                            onPressed: () => aidcLab(context),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        ButtonTheme(
                          minWidth: 350,
                          child: RaisedButton(
                            child: Text('Amazon AWS Academy Lab'),
                            color: Colors.blue,
                            textColor: Colors.white,
                            onPressed: () => aaaLab(context),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        ButtonTheme(
                          minWidth: 350,
                          child: RaisedButton(
                            child: Text('NVIDIA Developer Program Lab'),
                            color: Colors.blue,
                            textColor: Colors.white,
                            onPressed: () => ndpLab(context),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        ButtonTheme(
                          minWidth: 350,
                          child: RaisedButton(
                            child: Text('IBM Lab'),
                            color: Colors.blue,
                            textColor: Colors.white,
                            onPressed: () => ibmLab(context),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        ButtonTheme(
                          minWidth: 350,
                          child: RaisedButton(
                            child: Text(
                                'Palo Alto Network Cybersecurity Academy Lab'),
                            color: Colors.blue,
                            textColor: Colors.white,
                            onPressed: () => pancaLab(context),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ButtonTheme(
                          minWidth: 250.0,
                          height: 70.0,
                          child: RaisedButton(
                            child: Text('Contact Us',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                )),
                            color: Colors.black,
                            textColor: Colors.white,
                            onPressed: () => contactUs(context),
                          ),
                        ),
                        ButtonTheme(
                          minWidth: 250.0,
                          height: 70.0,
                          child: RaisedButton(
                            child: Text('Feedback Form',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                )),
                            color: Colors.black,
                            textColor: Colors.white,
                            onPressed: () => feedbackForm(context),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ));
  }

  void visionmission(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Vision and Mission'),
          content: Text(
              'VISION: \nTo provide excellent Information Technology education and aspire to nurture students as leaders who are in tune with global IT Trends \n\nMISSION: \nM1 - To Enrich students by rigorously implementing quality education \nM2 - To make students industry ready \nM3 - To imbibe professional ethics and social values in the students and make them responsible citizens'),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        );
      },
    );
  }

  void contactUs(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Contact Us'),
          content: Text(
              'Working Hours: \nMonday to Saturday - 09:00am to 05:30pm. \n\nMail us at hodit@famt.ac.in'),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        );
      },
    );
  }

  void feedbackForm(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
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
                            SnackBar(content: Text('Data is submitted')));
                        //print("Your data is submitted");
                      }
                    },
                    child: Text("Submit"),
                    color: Colors.blue,
                    textColor: Colors.white,
                  ),
                  FlatButton(
                    child: Text('Close'),
                    onPressed: () => Navigator.of(context).pop(),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  void iceLab(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Lab 2/1 - Intel Centre of Excellence'),
          content: Text(
              'Name of Industrial/Research partner: Intel INC\n\nNature of MOU/Support given by the industry: Laboratory Setup, Faculty Training \n\nOutcome of MOU/Program: IoE Mini Projects, TE IT Mini Projects, Intel Galileo Board Based Development Project'),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ],
        );
      },
    );
  }

  void mvaLab(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Lab 2/2 - Microsoft Virtual Academy Lab'),
          content: Text(
              'Name of Industrial/Research partner: Microsoft Virtual Academy \n\nNature of MOU/Support given by the industry: Microsoft Certification, Faculty and Student Training \n\nOutcome of MOU/Program: Total 85 Students and 12 Faculty certified in Microsoft Technology Associate (MTA)'),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ],
        );
      },
    );
  }

  void aidcLab(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Lab 1/3 - Apple iOS Developer Centre Lab'),
          content: Text(
              'Name of Industrial/Research partner: Apple Inc \n\nNature of MOU/Support given by the industry: Apple iOS Developer Framework provided for iOS app development \n\nOutcome of MOU/Program: Apple iOS App Development by Students as BE Projects'),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ],
        );
      },
    );
  }

  void aaaLab(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Lab 1/1 - Amazon AWS Academy Lab'),
          content: Text(
              'Name of Industrial/Research partner: Amazon AWS \n\nNature of MOU/Support given by the industry: Amazon AWS Training and Certification to Faculty \n\nOutcome of MOU/Program: AWS Certification by Students and Faculty'),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ],
        );
      },
    );
  }

  void ndpLab(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Lab 2/3 - NVIDIA Developer Program Lab'),
          content: Text(
              'Name of Industrial/Research partner: NVIDIA Developer Program \n\nNature of MOU/Support given by the industry: NVIDIA Titan X Pascal GPU, NVIDIA Developer Program Resources \n\nOutcome of MOU/Program: Deep Learning Research'),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ],
        );
      },
    );
  }

  void ibmLab(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Lab 1/2 - IBM Academic Alliance Lab'),
          content: Text(
              'Name of Industrial/Research partner: IBM Academic Alliance \n\nNature of MOU/Support given by the industry: IBM Academic Courses for Staff and Students \n\nOutcome of MOU/Program: Staff and Students Skill Upgradation'),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ],
        );
      },
    );
  }

  void pancaLab(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Lab 1/2 - Palo Alto Network Cybersecurity Academy Lab'),
          content: Text(
              'Name of Industrial/Research partner: Palo Alto Network Cybersecurity Academy \n\nNature of MOU/Support given by the industry: Palo Alto Network Cybersecurity Academy Certification Training to Staff and Students \n\nOutcome of MOU/Program: Total 2 faculty members have been trained and completed Certification. PANW has recognised Dr. V A Bharadi and Prof. A R Kazi as authorized Cybersecurity instructor'),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ],
        );
      },
    );
  }
}
