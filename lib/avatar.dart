import 'package:flutter/material.dart';

class AvatarPg extends StatelessWidget {
  const AvatarPg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 9, 27, 32),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 9, 27, 32),
          title: const Text(
            'Avatar',
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
        body: Column(
          children: [
            Stack(
              children: [
                Image.asset('Images/avatar/Avatar.jpg'),
                Padding(
                  padding: const EdgeInsets.only(left: 370, top: 330),
                  child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromARGB(255, 58, 81, 88),
                      ),
                      child: Icon(
                        Icons.mode_edit_outlined,
                        color: Colors.white70,
                        size: 30,
                      )),
                )
              ],
            ),
            ListTile(
              //minVerticalPadding: 10,
              title: const Text(
                "Browse stickers",
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
                "Create profile photo",
                style: TextStyle(
                    color: Colors
                        .white, // Color.fromARGB(255, 18, 140, 126), // 37, 211, 102),
                    fontWeight: FontWeight.w400,
                    fontSize: 16),
              ),

              onTap: () {},
            ),
            Divider(
              color: Colors.white10,
              thickness: 0.5,
            ),
            ListTile(
              //minVerticalPadding: 10,
              title: const Text(
                "Learn more",
                style: TextStyle(
                    color: Color.fromARGB(255, 10, 168, 241),
                    fontWeight: FontWeight.w400,
                    fontSize: 16),
              ),

              onTap: () {},
            ),
            ListTile(
              //minVerticalPadding: 10,
              title: const Text(
                "Delete avatar",
                style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.w400,
                    fontSize: 16),
              ),

              onTap: () {},
            ),
          ],
        ));
  }
}
