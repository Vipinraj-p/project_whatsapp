import 'package:flutter/material.dart';

class PersonalInfo extends StatefulWidget {
  const PersonalInfo({super.key});

  @override
  State<PersonalInfo> createState() => _PersonalInfoState();
}

class _PersonalInfoState extends State<PersonalInfo> {
  int indexData = 0;
  @override
  Widget build(BuildContext context) {
    indexData = ModalRoute.of(context)?.settings.arguments as int;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 11, 21, 24),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 11, 21, 24),
        leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(
              Icons.arrow_back_sharp,
              color: Colors.white,
            )),
        actions: [
          PopupMenuButton(
            iconColor: Colors.white,
            color: Color.fromARGB(255, 22, 46, 53),
            offset: Offset(0, 50),
            constraints: BoxConstraints.expand(width: 200, height: 210),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            itemBuilder: (context) => [
              PopupMenuItem<int>(
                  value: 0,
                  child: Text("Share",
                      style: TextStyle(
                        color: Colors.white,
                      ))),
              PopupMenuItem<int>(
                  value: 1,
                  child: Text("Edit",
                      style: TextStyle(
                        color: Colors.white,
                      ))),
              PopupMenuItem<int>(
                  value: 2,
                  child: Text("View in address book",
                      style: TextStyle(
                        color: Colors.white,
                      ))),
              PopupMenuItem<int>(
                  value: 2,
                  child: Text("Verify security code",
                      style: TextStyle(
                        color: Colors.white,
                      ))),
            ],
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 60,
            backgroundImage: AssetImage(DP[indexData]),
          ),
          SizedBox(
            height: 30,
            width: double.infinity,
            child: Text(
              Name[indexData],
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.w500),
            ),
          )
        ],
      ),
    );
  }
}

List DP = [
  "Images/DP/DP1.jpg",
  "Images/DP/DP2.jpg",
  "Images/DP/DP3.jpg",
  "Images/DP/DP4.jpg",
  "Images/DP/DP5.jpg",
  "Images/DP/DP6.jpg",
  "Images/DP/DP7.jpg",
  'Images/DP/DP8.jpg',
  "Images/DP/DP9.jpg",
  "Images/DP/DP10.jpg",
  "Images/DP/DP11.jpg",
  "Images/DP/DP16.jpg",
  "Images/DP/DP12.jpg",
  "Images/DP/DP13.jpg",
  "Images/DP/DP14.jpg",
  "Images/DP/DP15.jpg",
  "Images/DP/DP16.jpg",
  "Images/DP/DP17.jpg",
];

List Name = [
  "Sharon",
  "Shihab",
  "Amal",
  "Sreya",
  "Sneha",
  "Athira",
  "Adhisree",
  "Akshra",
  "Joseph",
  "Gokul",
  "Shinoy",
  "Avinash",
  "Fathima",
  "Albert",
  "Sunila",
  "Muneer",
  "Hari",
];
