import 'package:flutter/material.dart';

class Privacypg extends StatelessWidget {
  const Privacypg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 9, 27, 32),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 9, 27, 32),
          title: const Text(
            'Profile',
            style: TextStyle(
                color: Colors
                    .white, // Color.fromARGB(255, 18, 140, 126), // 37, 211, 102),
                fontWeight: FontWeight.w400,
                fontSize: 24),
          ),
          leading: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: const Icon(
                Icons.arrow_back_sharp,
                color: Colors.white,
              )),
          leadingWidth: 30,
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 18),
              child: Text('Who can see my personal info',
                  style: TextStyle(
                    color: Colors.white60,
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  )),
            ),
            ListTile(
              //minVerticalPadding: 10,
              title: const Text(
                "Privacy",
                style: TextStyle(
                    color: Colors
                        .white, // Color.fromARGB(255, 18, 140, 126), // 37, 211, 102),
                    fontWeight: FontWeight.w400,
                    fontSize: 16),
              ),
              subtitle: const Text(
                "Block contacts,disappearing messages",
                style: TextStyle(
                    color: Colors
                        .white54, // Color.fromARGB(255, 18, 140, 126), // 37, 211, 102),
                    fontWeight: FontWeight.w400,
                    fontSize: 14),
              ),
              onTap: () {},
            ),
            ListTile(
              //minVerticalPadding: 10,
              title: const Text(
                "Last seen and online",
                style: TextStyle(
                    color: Colors
                        .white, // Color.fromARGB(255, 18, 140, 126), // 37, 211, 102),
                    fontWeight: FontWeight.w400,
                    fontSize: 16),
              ),
              subtitle: const Text(
                "Nobody",
                style: TextStyle(
                    color: Colors
                        .white54, // Color.fromARGB(255, 18, 140, 126), // 37, 211, 102),
                    fontWeight: FontWeight.w400,
                    fontSize: 14),
              ),
              onTap: () {},
            ),
            ListTile(
              //minVerticalPadding: 10,
              title: const Text(
                "Profile photo",
                style: TextStyle(
                    color: Colors
                        .white, // Color.fromARGB(255, 18, 140, 126), // 37, 211, 102),
                    fontWeight: FontWeight.w400,
                    fontSize: 16),
              ),
              subtitle: const Text(
                "My contacts",
                style: TextStyle(
                    color: Colors
                        .white54, // Color.fromARGB(255, 18, 140, 126), // 37, 211, 102),
                    fontWeight: FontWeight.w400,
                    fontSize: 14),
              ),
              onTap: () {},
            ),
            ListTile(
              //minVerticalPadding: 10,
              title: const Text(
                "About",
                style: TextStyle(
                    color: Colors
                        .white, // Color.fromARGB(255, 18, 140, 126), // 37, 211, 102),
                    fontWeight: FontWeight.w400,
                    fontSize: 16),
              ),
              subtitle: const Text(
                "Nobody",
                style: TextStyle(
                    color: Colors
                        .white54, // Color.fromARGB(255, 18, 140, 126), // 37, 211, 102),
                    fontWeight: FontWeight.w400,
                    fontSize: 14),
              ),
              onTap: () {},
            ),
            ListTile(
              //minVerticalPadding: 10,
              title: const Text(
                "Status",
                style: TextStyle(
                    color: Colors
                        .white, // Color.fromARGB(255, 18, 140, 126), // 37, 211, 102),
                    fontWeight: FontWeight.w400,
                    fontSize: 16),
              ),
              subtitle: const Text(
                "No contacts selected",
                style: TextStyle(
                    color: Colors
                        .white54, // Color.fromARGB(255, 18, 140, 126), // 37, 211, 102),
                    fontWeight: FontWeight.w400,
                    fontSize: 14),
              ),
              onTap: () {},
            ),
            ListTile(
              //minVerticalPadding: 10,
              title: const Text(
                "Read receipts",
                style: TextStyle(
                    color: Colors
                        .white, // Color.fromARGB(255, 18, 140, 126), // 37, 211, 102),
                    fontWeight: FontWeight.w400,
                    fontSize: 16),
              ),
              subtitle: const Text(
                "If turned off, you won't sent or receive Read receipts. Read receipts are always sent for group chats.",
                style: TextStyle(
                    color: Colors
                        .white54, // Color.fromARGB(255, 18, 140, 126), // 37, 211, 102),
                    fontWeight: FontWeight.w400,
                    fontSize: 14),
              ),
              trailing: Icon(
                Icons.toggle_on,
                color: Color.fromARGB(255, 37, 211, 102),
                size: 40,
              ),
              onTap: () {},
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 18, bottom: 10),
              child: Text('Disappearing messages',
                  style: TextStyle(
                    color: Colors.white60,
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  )),
            ),
            ListTile(
              //minVerticalPadding: 10,
              title: const Text(
                "Default message timer",
                style: TextStyle(
                    color: Colors
                        .white, // Color.fromARGB(255, 18, 140, 126), // 37, 211, 102),
                    fontWeight: FontWeight.w400,
                    fontSize: 16),
              ),
              subtitle: const Text(
                "Start new chat with disappearing messages set to your timer",
                style: TextStyle(
                    color: Colors
                        .white54, // Color.fromARGB(255, 18, 140, 126), // 37, 211, 102),
                    fontWeight: FontWeight.w400,
                    fontSize: 14),
              ),
              trailing: const Text(
                "Off",
                style: TextStyle(
                    color: Colors
                        .white54, // Color.fromARGB(255, 18, 140, 126), // 37, 211, 102),
                    fontWeight: FontWeight.w400,
                    fontSize: 16),
              ),
              onTap: () {},
            ),
            ListTile(
              //minVerticalPadding: 10,
              title: const Text(
                "Groups",
                style: TextStyle(
                    color: Colors
                        .white, // Color.fromARGB(255, 18, 140, 126), // 37, 211, 102),
                    fontWeight: FontWeight.w400,
                    fontSize: 16),
              ),
              subtitle: const Text(
                "Everyone",
                style: TextStyle(
                    color: Colors
                        .white54, // Color.fromARGB(255, 18, 140, 126), // 37, 211, 102),
                    fontWeight: FontWeight.w400,
                    fontSize: 14),
              ),

              onTap: () {},
            ),
            ListTile(
              //minVerticalPadding: 10,
              title: const Text(
                "Live location",
                style: TextStyle(
                    color: Colors
                        .white, // Color.fromARGB(255, 18, 140, 126), // 37, 211, 102),
                    fontWeight: FontWeight.w400,
                    fontSize: 16),
              ),
              subtitle: const Text(
                "None",
                style: TextStyle(
                    color: Colors
                        .white54, // Color.fromARGB(255, 18, 140, 126), // 37, 211, 102),
                    fontWeight: FontWeight.w400,
                    fontSize: 14),
              ),

              onTap: () {},
            ),
            ListTile(
              //minVerticalPadding: 10,
              title: const Text(
                "Calls",
                style: TextStyle(
                    color: Colors
                        .white, // Color.fromARGB(255, 18, 140, 126), // 37, 211, 102),
                    fontWeight: FontWeight.w400,
                    fontSize: 16),
              ),
              subtitle: const Text(
                "Silence unknown callers",
                style: TextStyle(
                    color: Colors
                        .white54, // Color.fromARGB(255, 18, 140, 126), // 37, 211, 102),
                    fontWeight: FontWeight.w400,
                    fontSize: 14),
              ),

              onTap: () {},
            ),
            ListTile(
              //minVerticalPadding: 10,
              title: const Text(
                "Blocked contacts",
                style: TextStyle(
                    color: Colors
                        .white, // Color.fromARGB(255, 18, 140, 126), // 37, 211, 102),
                    fontWeight: FontWeight.w400,
                    fontSize: 16),
              ),
              subtitle: const Text(
                "11",
                style: TextStyle(
                    color: Colors
                        .white54, // Color.fromARGB(255, 18, 140, 126), // 37, 211, 102),
                    fontWeight: FontWeight.w400,
                    fontSize: 14),
              ),

              onTap: () {},
            ),
            ListTile(
              //minVerticalPadding: 10,
              title: const Text(
                "Applock",
                style: TextStyle(
                    color: Colors
                        .white, // Color.fromARGB(255, 18, 140, 126), // 37, 211, 102),
                    fontWeight: FontWeight.w400,
                    fontSize: 16),
              ),
              subtitle: const Text(
                "Disabled",
                style: TextStyle(
                    color: Colors
                        .white54, // Color.fromARGB(255, 18, 140, 126), // 37, 211, 102),
                    fontWeight: FontWeight.w400,
                    fontSize: 14),
              ),

              onTap: () {},
            ),
            ListTile(
              //minVerticalPadding: 10,
              title: const Text(
                "Chatlock",
                style: TextStyle(
                    color: Colors
                        .white, // Color.fromARGB(255, 18, 140, 126), // 37, 211, 102),
                    fontWeight: FontWeight.w400,
                    fontSize: 16),
              ),

              onTap: () {},
            ),
            ListTile(
              //minVerticalPadding: 10,
              title: const Text(
                "Advanced",
                style: TextStyle(
                    color: Colors
                        .white, // Color.fromARGB(255, 18, 140, 126), // 37, 211, 102),
                    fontWeight: FontWeight.w400,
                    fontSize: 16),
              ),
              subtitle: const Text(
                "Protect IP address in calls",
                style: TextStyle(
                    color: Colors
                        .white54, // Color.fromARGB(255, 18, 140, 126), // 37, 211, 102),
                    fontWeight: FontWeight.w400,
                    fontSize: 14),
              ),

              onTap: () {},
            ),
          ],
        ));
  }
}
