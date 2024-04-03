import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:project_whatsapp/Chat.dart';

class OTPpg extends StatefulWidget {
  const OTPpg({super.key});

  @override
  State<OTPpg> createState() => _OTPpgState();
}

class _OTPpgState extends State<OTPpg> {
  Duration _duration = Duration(seconds: 60);
  Timer? _timer;
  int _countdownValue = 0;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
    Text('timeout');
  }

  void startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (_duration.inSeconds <= 0) {
        _timer?.cancel();
      } else {
        setState(() {
          _countdownValue = _duration.inSeconds;
          _duration = _duration - Duration(seconds: 1);
        });
      }
    });
  }

  String? phoneNumber;
  @override
  Widget build(BuildContext context) {
    phoneNumber = ModalRoute.of(context)?.settings.arguments as String;
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 9, 27, 32),
        body: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: Text(
                      "Verify +$phoneNumber",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              CircleAvatar(
                radius: 40,
                backgroundColor: Color.fromARGB(55, 5, 163, 123),
                backgroundImage: AssetImage(
                  "Images/verify/verify.png",
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Text(
                  "Use your other phone to confirm moving WhatsApp to this one",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Text(
                "Open WhatsApp on your other phone to get the 6-digit code.",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                    fontWeight: FontWeight.w400),
              ),
              OtpTextField(
                numberOfFields: 6,
                borderWidth: 2,
                enabledBorderColor: Colors.white38,
                textStyle: TextStyle(color: Colors.white),
                cursorColor: Colors.white,
                fieldWidth: 20,
                onSubmit: (String code) {
                  if (code == '000000') {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ChatPg(),
                        ));
                  } else {
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
                          "Invalid OTP",
                          style: TextStyle(color: Colors.white54),
                        ),
                      ),
                    );
                  }
                },
                focusedBorderColor: Color.fromARGB(255, 5, 163, 123),
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                "Enter 6-digit code",
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.white54,
                    fontWeight: FontWeight.w300),
              ),
              Text(
                "Need help getting a code?",
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.white54,
                    fontWeight: FontWeight.w500),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "You can request a new code in ",
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.white54,
                        fontWeight: FontWeight.w300),
                  ),
                  Text(
                    '0:${_countdownValue}',
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.white54,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
