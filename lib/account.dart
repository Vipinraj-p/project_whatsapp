import 'package:flutter/material.dart';

class AccountPg extends StatelessWidget {
  const AccountPg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 9, 27, 32),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 9, 27, 32),
          title: Text(
            'Account',
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
            ListTile(
              leading: const Icon(
                Icons.security,
                color: Colors.white54,
              ),
              minLeadingWidth: 30,
              title: const Text(
                "Security notifications",
                style: TextStyle(
                    color: Colors
                        .white, // Color.fromARGB(255, 18, 140, 126), // 37, 211, 102),
                    fontWeight: FontWeight.w400,
                    fontSize: 16),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Image.asset(
                'Images/Icons/Settings/Passkey.png',
                scale: 2.3,
              ),
              minLeadingWidth: 30,
              title: const Text(
                "Passkeys",
                style: TextStyle(
                    color: Colors
                        .white, // Color.fromARGB(255, 18, 140, 126), // 37, 211, 102),
                    fontWeight: FontWeight.w400,
                    fontSize: 16),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(
                Icons.email_outlined,
                color: Colors.white54,
              ),
              minLeadingWidth: 30,
              title: const Text(
                "Email address",
                style: TextStyle(
                    color: Colors
                        .white, // Color.fromARGB(255, 18, 140, 126), // 37, 211, 102),
                    fontWeight: FontWeight.w400,
                    fontSize: 16),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(
                Icons.password_rounded,
                color: Colors.white54,
              ),
              minLeadingWidth: 30,
              title: const Text(
                "Two-step verification",
                style: TextStyle(
                    color: Colors
                        .white, // Color.fromARGB(255, 18, 140, 126), // 37, 211, 102),
                    fontWeight: FontWeight.w400,
                    fontSize: 16),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(
                Icons.send_to_mobile_outlined,
                color: Colors.white54,
              ),
              minLeadingWidth: 30,
              title: const Text(
                "Change number",
                style: TextStyle(
                    color: Colors
                        .white, // Color.fromARGB(255, 18, 140, 126), // 37, 211, 102),
                    fontWeight: FontWeight.w400,
                    fontSize: 16),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(
                Icons.insert_drive_file_outlined,
                color: Colors.white54,
              ),
              minLeadingWidth: 30,
              title: const Text(
                "Request account info",
                style: TextStyle(
                    color: Colors
                        .white, // Color.fromARGB(255, 18, 140, 126), // 37, 211, 102),
                    fontWeight: FontWeight.w400,
                    fontSize: 16),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(
                Icons.person_remove_alt_1_outlined,
                color: Colors.white54,
              ),
              minLeadingWidth: 30,
              title: const Text(
                "Remove account",
                style: TextStyle(
                    color: Colors
                        .white, // Color.fromARGB(255, 18, 140, 126), // 37, 211, 102),
                    fontWeight: FontWeight.w400,
                    fontSize: 16),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(
                Icons.delete_outline_outlined,
                color: Colors.white54,
              ),
              minLeadingWidth: 30,
              title: const Text(
                "Delete account",
                style: TextStyle(
                    color: Colors
                        .white, // Color.fromARGB(255, 18, 140, 126), // 37, 211, 102),
                    fontWeight: FontWeight.w400,
                    fontSize: 16),
              ),
              onTap: () {},
            )
          ],
        ));
  }
}
