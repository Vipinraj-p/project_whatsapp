import 'package:flutter/material.dart';
import 'package:project_whatsapp/personal_info.dart';

class PersonalChat extends StatefulWidget {
  const PersonalChat({super.key});

  @override
  State<PersonalChat> createState() => _PersonalChatState();
}

class _PersonalChatState extends State<PersonalChat> {
  int indexData = 0;
  @override
  Widget build(BuildContext context) {
    indexData = ModalRoute.of(context)?.settings.arguments as int;
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 11, 21, 24),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 9, 27, 32),
          leadingWidth: 20,
          leading: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: Icon(
                Icons.arrow_back_sharp,
                color: Colors.white,
              )),
          title: Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(DP[indexData]),
              ),
              TextButton(
                  onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PersonalInfo(),
                          settings: RouteSettings(arguments: indexData))),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          Name[indexData],
                          style: TextStyle(color: Colors.white),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.lock_outline,
                              size: 10,
                              color: Colors.white,
                            ),
                            Text(
                              " End-to-end encrypted",
                              style:
                                  TextStyle(fontSize: 10, color: Colors.white),
                            ),
                          ],
                        )
                      ],
                    ),
                  ))
            ],
          ),
        ),
        body: Text("sukj"));
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
