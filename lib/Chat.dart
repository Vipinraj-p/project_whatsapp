import 'package:flutter/material.dart';
import 'package:project_whatsapp/Calls.dart';
import 'package:project_whatsapp/personalChat.dart';
import 'package:project_whatsapp/personal_info.dart';
import 'package:project_whatsapp/settings.dart';
import 'package:project_whatsapp/updates.dart';

class ChatPg extends StatefulWidget {
  const ChatPg({super.key});

  @override
  State<ChatPg> createState() => _ChatPgState();
}

class _ChatPgState extends State<ChatPg> {
  List dropDownContent = [
    "New group",
    "New broadcast",
    "Linked devices",
    "Starred messages",
    "Payments",
    "Settings",
    "Switch accounts",
  ];

  int? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 9, 27, 32),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 9, 27, 32),
        leading: const Padding(
          padding: EdgeInsets.only(left: 30, top: 10),
          child: Text(
            "WhatsApp",
            style: TextStyle(
                color: Colors
                    .white, // Color.fromARGB(255, 18, 140, 126), // 37, 211, 102),
                fontWeight: FontWeight.w500,
                fontSize: 24),
          ),
        ),
        leadingWidth: 150,
        // backgroundColor: Color.fromARGB(200, 7, 94, 84), // Color.fromARGB(255, 37, 211, 102),

        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.qr_code_scanner_sharp,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.camera_alt_outlined,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.white,
              )),
          PopupMenuButton(
            onSelected: (value) {
              selectedValue = value.toInt();
              if (selectedValue == 5) {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SettingsPage(),
                    ));
              }
            },
            iconColor: Colors.white,
            color: const Color.fromARGB(255, 22, 46, 53),
            offset: const Offset(0, 50),
            constraints: const BoxConstraints.expand(width: 200, height: 350),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            itemBuilder: (context) {
              return [
                const PopupMenuItem<int>(
                    value: 0,
                    child: Text("New group",
                        style: TextStyle(
                          color: Colors.white,
                        ))),
                const PopupMenuItem<int>(
                    value: 1,
                    child: Text("New broadcast",
                        style: TextStyle(
                          color: Colors.white,
                        ))),
                const PopupMenuItem<int>(
                    value: 2,
                    child: Text("Linked devices",
                        style: TextStyle(
                          color: Colors.white,
                        ))),
                const PopupMenuItem<int>(
                    value: 3,
                    child: Text("Starred messages",
                        style: TextStyle(
                          color: Colors.white,
                        ))),
                const PopupMenuItem<int>(
                    value: 4,
                    child: Text("Payments",
                        style: TextStyle(
                          color: Colors.white,
                        ))),
                const PopupMenuItem<int>(
                    value: 5,
                    child: Text("Settings",
                        style: TextStyle(
                          color: Colors.white,
                        ))),
                const PopupMenuItem<int>(
                    value: 6,
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
          color: const Color.fromARGB(255, 9, 27, 32),
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.chat,
                          color: Colors.white,
                        )),
                    const Text("Chats",
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
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Updates(),
                              ));
                        },
                        icon: Image.asset(
                          "Images/Icons/updates/icons8-whatsapp-status-96.png",
                          scale: 3.5,
                        )),
                    const Text("Updates",
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
                        icon: const Icon(Icons.people, color: Colors.white)),
                    const Text("communities",
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
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Calls(),
                              ));
                        },
                        icon: const Icon(Icons.phone_outlined,
                            color: Colors.white)),
                    const Text("Calls",
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
        child: const Icon(Icons.add_comment),
      ),
      body: ListView.builder(
        itemExtent: 80,
        itemCount: Name.length,
        itemBuilder: (context, index) => ListTile(
          onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const PersonalChat(),
                  settings: RouteSettings(arguments: index))),
          enabled: true,
          leading: InkWell(
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return Padding(
                    padding:
                        const EdgeInsets.only(left: 30, right: 30, bottom: 300),
                    child: AlertDialog(
                      content: Stack(
                        children: [
                          Image.asset(
                            DP[index],
                          ),
                          Container(
                              height: 30,
                              color: Colors.black12,
                              width: double.infinity,
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(top: 5, left: 10),
                                child: Text(
                                  Name[index],
                                  style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white),
                                ),
                              )),
                        ],
                      ),
                      actionsPadding:
                          const EdgeInsets.only(left: 30, right: 30),
                      backgroundColor: const Color.fromARGB(255, 22, 46, 53),
                      contentPadding: const EdgeInsets.all(0),
                      actions: [
                        IconButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const PersonalChat(),
                                      settings:
                                          RouteSettings(arguments: index)));
                            },
                            icon: const Icon(
                              Icons.chat_outlined,
                              color: Color.fromARGB(255, 5, 163, 123),
                            )),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.call_outlined,
                              color: Color.fromARGB(255, 5, 163, 123),
                            )),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.videocam_outlined,
                              color: Color.fromARGB(255, 5, 163, 123),
                            )),
                        IconButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const PersonalInfo(),
                                      settings:
                                          RouteSettings(arguments: index)));
                            },
                            icon: const Icon(
                              Icons.info_outline,
                              color: Color.fromARGB(255, 5, 163, 123),
                            )),
                      ],
                    ),
                  );
                },
              );
            },
            child: CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage(DP[index]),
            ),
          ),
          title: Text(
            Name[index],
            style: const TextStyle(
                fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white),
          ),
          subtitle: const Text(
            "hi",
            style: TextStyle(color: Colors.white38, fontSize: 16),
          ),
          trailing: const Text("2:01AM",
              style: TextStyle(color: Color.fromARGB(255, 37, 211, 102))),
        ),
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
