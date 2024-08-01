import 'dart:async';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter/material.dart';
import 'package:pro_kit_room_finder/initial_screens/authentication_screen.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(const Duration(seconds: 4), ()
    {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const AuthenticationScreen()));
    }
    );
  }
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height * 1;
    final width = MediaQuery.sizeOf(context).width * 1;
    return Scaffold(
      body: Container(
        color: Colors.blueAccent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'images/ic_launcher.png',
              //fit: BoxFit.cover,
              width: width * .6,
              height: height * .4,
            ),
            SizedBox(height: height * .04,),
            Text(
              'Loading Room Finder',
              style: TextStyle(
                letterSpacing: .6,  
                color:Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: height * .04,),
            const SpinKitThreeInOut(
              color: Colors.white,
              size: 20,
            ),
          ],
        ),
      ),
    );
  }
}
