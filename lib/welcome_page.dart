import 'package:flutter/material.dart';
import 'package:project_whatsapp/verify_phno.dart';
import 'package:language_picker/language_picker.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  String CurrentLang = "English";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 9, 27, 32),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: SafeArea(
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                Image.asset(
                  "Images/welcome/whatsappLoading.png",
                  width: 500,
                ),
                Text(
                  "Welcome to WhatsApp",
                  style: TextStyle(
                      fontSize: 24,
                      color: Colors.white, //.fromARGB(255, 37, 211, 102),
                      fontWeight: FontWeight.w500),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Read our ", style: TextStyle(color: Colors.white38)),
                    Text(
                      "Privacy Policy.",
                      style: TextStyle(color: Colors.blue[300]),
                    ),
                    Text(" Tap\"Agree and continue\" to ",
                        style: TextStyle(color: Colors.white38)),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(" accept the",
                        style: TextStyle(color: Colors.white38)),
                    Text("Terms of Service",
                        style: TextStyle(
                            color: Color.fromARGB(255, 10, 168, 241))),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () => showDialog(
                    context: context,
                    builder: (context) => LanguagePickerDialog(
                      isDividerEnabled: true,
                      onValuePicked: (language) => setState(() {
                        CurrentLang = language.name;
                      }),
                      isSearchable: true,
                      titlePadding: EdgeInsets.all(10),
                      itemBuilder: (language) => Text(language.name),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.language),
                      SizedBox(width: 10),
                      Text(CurrentLang),
                      SizedBox(width: 10),
                      Icon(Icons.keyboard_arrow_down)
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(169, 35, 39, 43),
                      foregroundColor: Color.fromARGB(255, 5, 163, 123),
                      fixedSize: Size(260, 30)),
                ),
                SizedBox(
                  height: 240,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Verify(),
                        ));
                  },
                  child: Text("Agree and continue"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 5, 163, 123),
                    foregroundColor: Colors.black,
                    fixedSize: Size(350, 30),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
