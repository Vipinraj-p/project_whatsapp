import 'package:flutter/material.dart';

class Profilepg extends StatelessWidget {
  const Profilepg({super.key});

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
          const Center(
            child: Stack(
              children: [
                CircleAvatar(
                  radius: 80,
                  backgroundImage: AssetImage("Images/DP/DP10.jpg"),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 115, left: 115),
                  child: CircleAvatar(
                    child: Icon(Icons.camera_alt_outlined),
                    backgroundColor: Color.fromARGB(255, 37, 211, 102),
                  ),
                )
              ],
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.person_outline_rounded,
              color: Colors.white54,
            ),
            minLeadingWidth: 30,
            title: const Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Name",
                      style: TextStyle(
                          color: Colors
                              .white54, // Color.fromARGB(255, 18, 140, 126), // 37, 211, 102),
                          fontWeight: FontWeight.w400,
                          fontSize: 14),
                    ),
                    Text(
                      "VP",
                      style: TextStyle(
                          color: Colors
                              .white, // Color.fromARGB(255, 18, 140, 126), // 37, 211, 102),
                          fontWeight: FontWeight.w400,
                          fontSize: 16),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(left: 274),
                  child: Icon(
                    Icons.mode_edit_outline_outlined,
                    color: Color.fromARGB(255, 37, 211, 102),
                  ),
                ),
              ],
            ),
            subtitle: const Text(
              "This is not your username or pin. This name will be visible to your WhatsApp contacts.",
              style: TextStyle(
                  color: Colors
                      .white54, // Color.fromARGB(255, 18, 140, 126), // 37, 211, 102),
                  fontWeight: FontWeight.w400,
                  fontSize: 12),
            ),
            onTap: () {},
          ),
          Divider(
            color: Colors.white24,
            thickness: 0.5,
            indent: 60,
          ),
          ListTile(
            leading: const Icon(
              Icons.info_outline,
              color: Colors.white54,
            ),
            minLeadingWidth: 30,
            title: Text(
              "About",
              style: TextStyle(
                  color: Colors
                      .white54, // Color.fromARGB(255, 18, 140, 126), // 37, 211, 102),
                  fontWeight: FontWeight.w400,
                  fontSize: 14),
            ),
            trailing: Icon(
              Icons.mode_edit_outline_outlined,
              color: Color.fromARGB(255, 37, 211, 102),
            ),
            subtitle: const Text(
              "",
            ),
            onTap: () {},
          ),
          Divider(
            color: Colors.white24,
            thickness: 0.5,
            indent: 60,
          ),
          ListTile(
            leading: const Icon(
              Icons.call_outlined,
              color: Colors.white54,
            ),
            minLeadingWidth: 30,
            title: Text(
              "Phone",
              style: TextStyle(
                  color: Colors
                      .white54, // Color.fromARGB(255, 18, 140, 126), // 37, 211, 102),
                  fontWeight: FontWeight.w400,
                  fontSize: 14),
            ),
            subtitle: const Text(
              "+91 98765 43210",
              style: TextStyle(
                  color: Colors
                      .white, // Color.fromARGB(255, 18, 140, 126), // 37, 211, 102),
                  fontWeight: FontWeight.w400,
                  fontSize: 16),
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
