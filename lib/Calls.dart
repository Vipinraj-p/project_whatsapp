import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:project_whatsapp/settings.dart';
import 'package:project_whatsapp/updates.dart';

class Calls extends StatefulWidget {
  const Calls({super.key});

  @override
  State<Calls> createState() => _CallsState();
}

class _CallsState extends State<Calls> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 9, 27, 32),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 9, 27, 32),
        leading: Padding(
          padding: const EdgeInsets.only(left: 30, top: 10),
          child: Text(
            "Calls",
            style: TextStyle(
                color: Colors
                    .white, // Color.fromARGB(255, 18, 140, 126), // 37, 211, 102),
                fontWeight: FontWeight.w400,
                fontSize: 22),
          ),
        ),
        leadingWidth: 150,
        // backgroundColor: Color.fromARGB(200, 7, 94, 84), // Color.fromARGB(255, 37, 211, 102),

        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.qr_code_scanner_sharp,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.camera_alt_outlined,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.white,
              )),
          PopupMenuButton(
            onSelected: (value) {
              if (value == 1) {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SettingsPage(),
                    ));
              }
            },
            iconColor: Colors.white,
            color: Color.fromARGB(255, 22, 46, 53),
            offset: Offset(0, 50),
            constraints: BoxConstraints.expand(width: 200, height: 160),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            itemBuilder: (context) {
              return [
                PopupMenuItem<int>(
                    value: 0,
                    child: Text("Clear cal log",
                        style: TextStyle(
                          color: Colors.white,
                        ))),
                PopupMenuItem<int>(
                    value: 1,
                    child: Text("Settings",
                        style: TextStyle(
                          color: Colors.white,
                        ))),
                PopupMenuItem<int>(
                    value: 2,
                    child: Text("Switch accounts",
                        style: TextStyle(
                          color: Colors.white,
                        ))),
              ];
            },
          )
        ],
      ),
      bottomNavigationBar: BottomAppBar(
          height: 95,
          color: Color.fromARGB(255, 9, 27, 32),
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.chat,
                          color: Colors.white,
                        )),
                    Text("Chats",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 14))
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Updates(),
                              ));
                        },
                        icon: Image.asset(
                          "Images/Icons/updates/icons8-whatsapp-status-96.png",
                          scale: 3.5,
                        )),
                    Text("Updates",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 14))
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.people, color: Colors.white)),
                    Text("communities",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 14))
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.phone_outlined, color: Colors.white)),
                    Text("Calls",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 14))
                  ],
                ),
              ),
            ],
          )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color.fromARGB(255, 37, 211, 102),
        child: const Icon(Icons.add_ic_call),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            enabled: true,
            onTap: () {},
            leading: CircleAvatar(
              backgroundImage: AssetImage(
                DP[index],
              ),
              radius: 25,
            ),
            title: Text(
              Name[index],
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
            subtitle: Row(
              children: [
                Icon(
                  Icons.call_made_sharp,
                  color: Colors.green,
                  size: 16,
                ),
                Text(
                  ' ${dates[index]}',
                  style: TextStyle(color: Colors.white38, fontSize: 16),
                ),
              ],
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.call_outlined,
                color: Colors.green,
              ),
            ),
          );
        },
        itemCount: Name.length,
      ),
    );
  }
}

List DP = [
  "Images/DP/DP11.jpg",
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
  "Images/DP/DP11.jpg",
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
List dates = [
  "March 10,1:35pm",
  "March 9,11:55pm",
  "March 7,4:32pm",
  "March 7,1:35pm",
  "March 6,8:31am",
  "March 5,1:00am",
  "March 1,2:35pm",
  "February 27,5:35pm",
  "February 27,2:45am",
  "February 26,11:35pm",
  "February 20,12:35pm",
  "February 19,10:35pm",
  "February 15,9:35pm",
  "February 5,8:35pm",
  "February 5,4:35am",
  "February 5,1:35pm",
  "February 2,1:35pm",
  "February 1,1:35pm"
];
