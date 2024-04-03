import 'package:flutter/material.dart';
import 'package:project_whatsapp/account.dart';
import 'package:project_whatsapp/avatar.dart';
import 'package:project_whatsapp/privacy.dart';
import 'package:project_whatsapp/profile.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 9, 27, 32),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 9, 27, 32),
        leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(
              Icons.arrow_back_sharp,
              color: Colors.white,
            )),
        title: const Text(
          'Settings',
          style: TextStyle(
              color: Colors
                  .white, // Color.fromARGB(255, 18, 140, 126), // 37, 211, 102),
              fontWeight: FontWeight.w400,
              fontSize: 24),
        ),
        leadingWidth: 30,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.white,
              ))
        ],
      ),
      body: ListView(
        children: [
          const Divider(
            color: Colors.white24,
            thickness: 0.5,
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Profilepg()));
              },
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage("Images/DP/DP10.jpg"),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'VP',
                          style: TextStyle(
                              color: Colors
                                  .white, // Color.fromARGB(255, 18, 140, 126), // 37, 211, 102),
                              fontWeight: FontWeight.w400,
                              fontSize: 18),
                        ),
                        Text(
                          '+91 98765 43210',
                          style: TextStyle(
                              color: Colors
                                  .white60, // Color.fromARGB(255, 18, 140, 126), // 37, 211, 102),
                              fontWeight: FontWeight.w400,
                              fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 104),
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.qr_code,
                            color: Color.fromARGB(255, 37, 211, 102))),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.arrow_drop_down_circle_outlined,
                          color: Color.fromARGB(255, 37, 211, 102))),
                ],
              ),
            ),
          ),
          const Divider(
            color: Colors.white24,
            thickness: 0.5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                ListTile(
                  leading: const Icon(
                    Icons.key_outlined,
                    color: Colors.white54,
                  ),
                  minLeadingWidth: 30,
                  title: const Text(
                    "Account",
                    style: TextStyle(
                        color: Colors
                            .white, // Color.fromARGB(255, 18, 140, 126), // 37, 211, 102),
                        fontWeight: FontWeight.w400,
                        fontSize: 16),
                  ),
                  subtitle: const Text(
                    "Security notification change number",
                    style: TextStyle(
                        color: Colors
                            .white54, // Color.fromARGB(255, 18, 140, 126), // 37, 211, 102),
                        fontWeight: FontWeight.w400,
                        fontSize: 14),
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => AccountPg()));
                  },
                ),
                ListTile(
                  leading: const Icon(
                    Icons.lock_outline_sharp,
                    color: Colors.white54,
                  ),
                  minLeadingWidth: 30,
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
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Privacypg()));
                  },
                ),
                ListTile(
                  leading: const Icon(
                    Icons.face,
                    color: Colors.white54,
                  ),
                  minLeadingWidth: 30,
                  title: const Text(
                    "Avatar",
                    style: TextStyle(
                        color: Colors
                            .white, // Color.fromARGB(255, 18, 140, 126), // 37, 211, 102),
                        fontWeight: FontWeight.w400,
                        fontSize: 16),
                  ),
                  subtitle: const Text(
                    "Create,edit,profile photo",
                    style: TextStyle(
                        color: Colors
                            .white54, // Color.fromARGB(255, 18, 140, 126), // 37, 211, 102),
                        fontWeight: FontWeight.w400,
                        fontSize: 14),
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => AvatarPg()));
                  },
                ),
                ListTile(
                  leading: const Icon(
                    Icons.chat_outlined,
                    color: Colors.white54,
                  ),
                  minLeadingWidth: 30,
                  title: const Text(
                    "Chats",
                    style: TextStyle(
                        color: Colors
                            .white, // Color.fromARGB(255, 18, 140, 126), // 37, 211, 102),
                        fontWeight: FontWeight.w400,
                        fontSize: 16),
                  ),
                  subtitle: const Text(
                    "Theme, wallpapers, chat history",
                    style: TextStyle(
                        color: Colors
                            .white54, // Color.fromARGB(255, 18, 140, 126), // 37, 211, 102),
                        fontWeight: FontWeight.w400,
                        fontSize: 14),
                  ),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Icon(
                    Icons.notifications_none_outlined,
                    color: Colors.white54,
                  ),
                  minLeadingWidth: 30,
                  title: const Text(
                    "Notifications",
                    style: TextStyle(
                        color: Colors
                            .white, // Color.fromARGB(255, 18, 140, 126), // 37, 211, 102),
                        fontWeight: FontWeight.w400,
                        fontSize: 16),
                  ),
                  subtitle: const Text(
                    "Message, group & call tones",
                    style: TextStyle(
                        color: Colors
                            .white54, // Color.fromARGB(255, 18, 140, 126), // 37, 211, 102),
                        fontWeight: FontWeight.w400,
                        fontSize: 14),
                  ),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Icon(
                    Icons.data_saver_off_outlined,
                    color: Colors.white54,
                  ),
                  minLeadingWidth: 30,
                  title: const Text(
                    "Storage and data",
                    style: TextStyle(
                        color: Colors
                            .white, // Color.fromARGB(255, 18, 140, 126), // 37, 211, 102),
                        fontWeight: FontWeight.w400,
                        fontSize: 16),
                  ),
                  subtitle: const Text(
                    "Network usage, auto-download",
                    style: TextStyle(
                        color: Colors
                            .white54, // Color.fromARGB(255, 18, 140, 126), // 37, 211, 102),
                        fontWeight: FontWeight.w400,
                        fontSize: 14),
                  ),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Icon(
                    Icons.language,
                    color: Colors.white54,
                  ),
                  minLeadingWidth: 30,
                  title: const Text(
                    "App language",
                    style: TextStyle(
                        color: Colors
                            .white, // Color.fromARGB(255, 18, 140, 126), // 37, 211, 102),
                        fontWeight: FontWeight.w400,
                        fontSize: 16),
                  ),
                  subtitle: const Text(
                    "English(device's language)",
                    style: TextStyle(
                        color: Colors
                            .white54, // Color.fromARGB(255, 18, 140, 126), // 37, 211, 102),
                        fontWeight: FontWeight.w400,
                        fontSize: 14),
                  ),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Icon(
                    Icons.help_outline_outlined,
                    color: Colors.white54,
                  ),
                  minLeadingWidth: 30,
                  title: const Text(
                    "Help",
                    style: TextStyle(
                        color: Colors
                            .white, // Color.fromARGB(255, 18, 140, 126), // 37, 211, 102),
                        fontWeight: FontWeight.w400,
                        fontSize: 16),
                  ),
                  subtitle: const Text(
                    "Help center, contact us, privacy policy",
                    style: TextStyle(
                        color: Colors
                            .white54, // Color.fromARGB(255, 18, 140, 126), // 37, 211, 102),
                        fontWeight: FontWeight.w400,
                        fontSize: 14),
                  ),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Icon(
                    Icons.people_alt_outlined,
                    color: Colors.white54,
                  ),
                  minLeadingWidth: 30,
                  title: const Text(
                    "Invite a friend",
                    style: TextStyle(
                        color: Colors
                            .white, // Color.fromARGB(255, 18, 140, 126), // 37, 211, 102),
                        fontWeight: FontWeight.w400,
                        fontSize: 16),
                  ),
                  onTap: () {},
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'from',
                  style: TextStyle(
                      color: Colors
                          .white54, // Color.fromARGB(255, 18, 140, 126), // 37, 211, 102),
                      fontWeight: FontWeight.w400,
                      fontSize: 14),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "Images/meta/icons8-meta-250.png",
                      scale: 15,
                    ),
                    Text(
                      ' Meta',
                      style: TextStyle(
                          color: Colors
                              .white, // Color.fromARGB(255, 18, 140, 126), // 37, 211, 102),
                          fontWeight: FontWeight.w400,
                          fontSize: 14),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
