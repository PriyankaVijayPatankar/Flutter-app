import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
                  value: 0,
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
          backgroundColor: Colors.green,
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
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      '\n\nRecent advancements in the areas of computers, software, networks, internet, communication technology, Big Data, and cloud computing, etc. have made a huge amount of information available to us. In this high-tech era, information is something without which industry, individuals cannot survive, and their success depends on the ability to acquire accurate and timely information. Keeping this in mind FAMT started the Bachelor of Engineering program in Information Technology (IT) from academic session 2001-2002. The emphasis of B.E. in Information Technology curriculum is on Computer Science, Software Development, Networking, Communication, Web Engineering, Security, Multimedia processing, IoT, Cloud Computing, Data Analytics, and Soft Computing. Currently, the department’s infrastructure contains three classrooms, six laboratories, a staff room, and a seminar hall. Ole classroom is ICT enabled with a Wi-Fi projection facility. All floors of the IT department have Wi-Fi connectivity.\n\nThe computing facility in the department includes 155 computers with the latest configuration, and other ICT equipment such as LCD projectors, printers and scanners, and UPS backup. Dr. Vinayak A Bharadi and Prof. Santosh V Jadhav got an NVIDIA GPU Research Grant of Rs. 1.5 Lacs in the form of Titan X Pascal GPU (Graphics Processing Unit) to support research. The Information Technology department also has academic collaboration with NVIDIA for three subjects namely Soft Computing, Big Data Analytics, and Robotics. They will provide course material and hardware support for the conduction of these courses as well as bridge courses under the NVIDIA Developer Center. It Department has conducted Bridge courses in Mobile Cloud Computing, MongoDB Connectivity, Online Payments for E-Biz to make students industry-ready. Besides this IT Department has done a tie-up with Microsoft for conducting Training and Certification under Microsoft Virtual Academy (MVA) for students as well as staff in the domain of IoT and Cyber Security. Department has MoU with Amazon AWS to setup Amazon AWS Academy for the professional training and Certification of the staff and the students, AWS will be giving 50% discount for all the certification and free training for the faculty member under this MoU.\n\nStudents undergo on-field projects so that they can be prepared to face professional challenges. Faculty members and students have published more than 500 papers are in national and international conferences and UGC Approved Journals. Research areas of published works are Cloud Computing, Ubiquitous Computing, Pervasive Computing, Soft computing, etc. Besides this, students are given in house training of GATE examination, aptitude, and other competitive examinations. To make students eligible for international placements and skills required in the MNCs IT Department has signed MoU with Apple Inc. to sept up Apple iOS Developer University Program (iDUP), Apple has provided the Programming platform and training under the same. The department has also set up an Intel Intelligent Systems lab in collaboration with Intel Inc. This lab has hardware and software setup to carry out application development for Smart City Projects, in the domain of the Internet of Things. \n\n',
                      //maxLines: 15,
                      softWrap: true,
                      overflow: TextOverflow.fade,
                      style: TextStyle(fontSize: 15),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      RaisedButton(
                        child: Text('Intel Centre of Excellence Lab'),
                        color: Colors.lightBlueAccent,
                        onPressed: () => iceLab(context),
                      ),
                      RaisedButton(
                        child: Text('Microsoft Virtual Academy Lab'),
                        onPressed: () => mvaLab(context),
                      ),
                      RaisedButton(
                        child: Text('Apple iOS Developer Centre Lab'),
                        color: Colors.lightBlueAccent,
                        onPressed: () => aidcLab(context),
                      ),
                      RaisedButton(
                        child: Text('Amazon AWS Academy Lab'),
                        onPressed: () => aaaLab(context),
                      ),
                      RaisedButton(
                        child: Text('NVIDIA Developer Program Lab'),
                        color: Colors.lightBlueAccent,
                        onPressed: () => ndpLab(context),
                      ),
                      RaisedButton(
                        child: Text('IBM Lab'),
                        onPressed: () => ibmLab(context),
                      ),
                      RaisedButton(
                        child:
                            Text('Palo Alto Network Cybersecurity Academy Lab'),
                        color: Colors.lightBlueAccent,
                        onPressed: () => pancaLab(context),
                      ),
                    ],
                  ),
                  //Spacer(
                  //  flex: 2,
                  //),
                  RaisedButton(
                    child: Text('Contact Us'),
                    onPressed: () => contactUs(context),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void visionmission(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Vision and Mission'),
          content: Text(
              'VISION: \nTo provide excellent Information Technology education and aspire to nurture students as leaders who are in tune with global IT Trends \n\nMISSION: \nM1 -	To Enrich students by rigorously implementing quality education \nM2 - To make students industry ready \nM3 -	To imbibe professional ethics and social values in the students and make them responsible citizens'),
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

  void iceLab(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Lab 2/1 - Intel Centre of Excellence'),
          content: Text(
              ' Name of Industrial/Research partner: Intel Inc \n\n Nature of MOU/Support given by the industry: Laboratory Setup, Faculty Training \n\n Outcome of MOU/Program: IoE Mini Projects, TE IT Mini Projects, Intel Galileo Board Based Development Project'),
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
              ' Name of Industrial/Research partner: Microsoft Virtual Academy \n\n Nature of MOU/Support given by the industry: Microsoft Certification, Faculty and Student Training \n\n Outcome of MOU/Program: Total 85 Students and 12 Faculty certified in Microsoft Technology Associate (MTA)'),
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
              ' Name of Industrial/Research partner: Apple Inc \n\n Nature of MOU/Support given by the industry: Apple iOS Developer Framework provided for iOS app development \n\n Outcome of MOU/Program: Apple iOS App Development by Students as BE Projects'),
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
              ' Name of Industrial/Research partner: Amazon AWS \n\n Nature of MOU/Support given by the industry: Amazon AWS Training and Certification to Faculty \n\n Outcome of MOU/Program: AWS Certification by Students and Faculty'),
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
              ' Name of Industrial/Research partner: NVIDIA Developer Program \n\n Nature of MOU/Support given by the industry: NVIDIA Titan X Pascal GPU, NVIDIA Developer Program Resources \n\n Outcome of MOU/Program: Deep Learning Research'),
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
              ' Name of Industrial/Research partner: IBM Academic Alliance \n\n Nature of MOU/Support given by the industry: IBM Academic Courses for Staff and Students \n\n Outcome of MOU/Program: Staff and Students Skill Upgradation'),
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
              ' Name of Industrial/Research partner: Palo Alto Network Cybersecurity Academy \n\n Nature of MOU/Support given by the industry: Palo Alto Network Cybersecurity Academy Certification Training to Staff and Students \n\n Outcome of MOU/Program: Total 2 faculty members have been trained and completed Certification. PANW has recognised Dr. V A Bharadi and Prof. A R Kazi as authorized Cybersecurity instructor'),
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

