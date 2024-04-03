import 'package:flutter/material.dart';
import 'package:project_whatsapp/Calls.dart';
import 'package:project_whatsapp/settings.dart';

class Updates extends StatefulWidget {
  const Updates({super.key});

  @override
  State<Updates> createState() => _UpdatesState();
}

class _UpdatesState extends State<Updates> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 9, 27, 32),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 9, 27, 32),
          leading: Padding(
            padding: const EdgeInsets.only(left: 30, top: 10),
            child: Text(
              "Updates",
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
                if (value == 0) {
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
              constraints: BoxConstraints.expand(width: 200, height: 115),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              itemBuilder: (context) {
                return [
                  PopupMenuItem<int>(
                      value: 0,
                      child: Text("Settings",
                          style: TextStyle(
                            color: Colors.white,
                          ))),
                  PopupMenuItem<int>(
                      value: 1,
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
                          onPressed: () {},
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
                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Calls(),
                                ));
                          },
                          icon:
                              Icon(Icons.phone_outlined, color: Colors.white)),
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
          child: const Icon(Icons.camera_alt),
        ),
        body: ListView.builder(
          itemCount: Name.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(
                radius: 27,
                backgroundColor: Colors.green,
                child: CircleAvatar(
                  radius: 25,
                  backgroundColor: Color.fromARGB(255, 9, 27, 32),
                  child: CircleAvatar(
                    backgroundImage: AssetImage(DP[index]),
                    radius: 23,
                  ),
                ),
              ),
              title: Text(
                Name[index],
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
              subtitle: Text(
                LastUpdated[index],
                style: TextStyle(color: Colors.white38, fontSize: 16),
              ),
              enabled: true,
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) => Dialog.fullscreen(
                      backgroundColor: Color.fromARGB(255, 9, 27, 32),
                      child: Image.asset(DP[index])),
                );
              },
            );
          },
        ));
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

List LastUpdated = [
  "5 minutes ago",
  "11 minutes ago",
  "23 minutes ago",
  "5:35Pm",
  "4:31Pm",
  "3:00Pm",
  "2:35Pm",
  "1:35Pm",
  "11:45Am",
  "11:05Apm",
  "10:39Apm",
  "10:03Apm",
  "9:35Am",
  "7:20Am",
  "4:35Am",
  "3:37Am",
  "1:58Am",
  "1:35Am"
];
