import 'package:flutter/material.dart';
import 'package:country_picker/country_picker.dart';
import 'package:project_whatsapp/otp_pg.dart';

class Verify extends StatefulWidget {
  const Verify({super.key});

  @override
  State<Verify> createState() => _VerifyState();
}

class _VerifyState extends State<Verify> {
  String? fullPhNo;
  Country country = CountryParser.parseCountryCode('IN');
  TextEditingController phoneNoController = TextEditingController();
  void showPicker() {
    showCountryPicker(
        favorite: ['IN'],
        context: context,
        countryListTheme: CountryListThemeData(
          backgroundColor: Color.fromARGB(255, 22, 46, 53),
          textStyle: TextStyle(color: Colors.white),
          bottomSheetHeight: 700,
        ),
        onSelect: (country) {
          setState(() {
            this.country = country;
          });
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 9, 27, 32),
        body: SafeArea(
            child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 399,
                    child: Text("Enter your phone number",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w500)),
                  ),
                  PopupMenuButton(
                      color: Color.fromARGB(255, 22, 46, 53),
                      itemBuilder: (context) {
                        return [
                          PopupMenuItem<int>(
                              value: 0,
                              child: Text("Linked as companion device",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ))),
                          PopupMenuItem<int>(
                              value: 1,
                              child: Text("Help",
                                  style: TextStyle(
                                    color: Colors.white,
                                  )))
                        ];
                      },
                      child: Icon(
                        Icons.more_vert,
                        color: Colors.white,
                      )),
                ],
              ),

              Text(
                "WhatsApp will need to verify your phone number.Carrier",
                style: TextStyle(
                  fontSize: 14,
                  color: Color.fromARGB(
                      239, 255, 255, 255), //.fromARGB(255, 37, 211, 102),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("charges may apply.",
                      style: TextStyle(
                          fontSize: 14,
                          color: Color.fromARGB(239, 255, 255, 255))),
                  Text("What's my number",
                      style:
                          TextStyle(color: Color.fromARGB(255, 10, 168, 241)))
                ],
              ),
              SizedBox(
                height: 30,
              ),

              //CountryListPick(),
              GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: showPicker,
                  child: Container(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 250,
                        child: Text(
                          "${country.name}",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      Icon(
                        Icons.arrow_drop_down_sharp,
                        color: Color.fromARGB(255, 5, 163, 123),
                      )
                    ],
                  ))),
              Divider(
                color: Color.fromARGB(255, 5, 163, 123),
                endIndent: 80,
                indent: 80,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 25),
                    child: SizedBox(
                      width: 60,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text("+",
                                  style: TextStyle(
                                      color: Colors.white54, fontSize: 16)),
                              SizedBox(
                                width: 10,
                              ),
                              Text('${country.phoneCode}',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16)),
                            ],
                          ),
                          Divider(
                            color: Color.fromARGB(255, 5, 163, 123),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    width: 200,
                    child: TextField(
                      keyboardType: TextInputType.phone,
                      controller: phoneNoController,
                      onChanged: (value) {},
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        hintStyle: TextStyle(
                            color: Colors.white54, fontWeight: FontWeight.w300),
                        hintText: "phone number",
                        errorBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.red,
                          ),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 5, 163, 123),
                          ),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 5, 163, 123),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 600),
                child: ElevatedButton(
                  onPressed: () {
                    if (phoneNoController.text.length ==
                        country.example.length) {
                      fullPhNo =
                          country.phoneCode + ' ' + phoneNoController.text;
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => OTPpg(),
                              settings: RouteSettings(arguments: fullPhNo)));
                    } else if (phoneNoController.text.length <=
                        country.example.length) {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          backgroundColor: Color.fromARGB(178, 22, 46, 53),
                          shape: BeveledRectangleBorder(
                              borderRadius: BorderRadius.circular(0)),
                          actions: [
                            TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text(
                                  'OK',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 5, 163, 123),
                                  ),
                                ))
                          ],
                          content: Text(
                            'The phone number you entered is too shot for the country: ${country.name}.\n\nInclude your area code if you haven\'t',
                            style: TextStyle(color: Colors.white54),
                          ),
                        ),
                      );
                    } else if (phoneNoController.text.length >=
                        country.example.length) {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          backgroundColor: Color.fromARGB(178, 22, 46, 53),
                          shape: BeveledRectangleBorder(
                              borderRadius: BorderRadius.circular(0)),
                          actions: [
                            TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text(
                                  'OK',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 5, 163, 123),
                                  ),
                                ))
                          ],
                          content: Text(
                            'The phone number you entered is too long for the country: ${country.name}',
                            style: TextStyle(color: Colors.white54),
                          ),
                        ),
                      );
                    }
                  },
                  child: Text("Next"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 5, 163, 123),
                    foregroundColor: Colors.black,
                    fixedSize: Size(80, 30),
                  ),
                ),
              )
            ],
          ),
        )));
  }
}
