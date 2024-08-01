//Setting Section Class
import 'package:flutter/material.dart';
import 'package:pro_kit_room_finder/login_signup_passwords/signin_screen.dart';

class SettingsSection extends StatefulWidget {
  const SettingsSection({super.key});

  @override
  State<SettingsSection> createState() => _SettingsSectionState();
}

class _SettingsSectionState extends State<SettingsSection> {
  void _showBookingConfirmationDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          contentPadding: EdgeInsets.zero,
          content: Container(
            height: 270,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.blue.shade200,
                    borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10)),
                  ),
                    child: Center(
                        child: Image.asset('images/signout.png',width: 50,height: 50,),
                    ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text('Are you sure you want to logout?',textAlign: TextAlign.center,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15,left: 23),
                  child: Row(
                    children: [
                      ElevatedButton(
                        onPressed: (){
                          Navigator.pop(context);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.not_interested,color: Colors.red,size: 15,),
                            SizedBox(width: 5,),
                            Text('Cancel',style: TextStyle(color: Colors.black,fontSize: 17),),
                          ],
                        ),
                      ),
                      SizedBox(width: 20,),
                      ElevatedButton(
                        onPressed: (){
                          Navigator.pushReplacement(
                            context,
                            PageRouteBuilder(
                              pageBuilder: (context, animation, secondaryAnimation) => SignInScreen(),
                              transitionsBuilder: (context, animation, secondaryAnimation, child) {
                                const begin = Offset(1.0, 0.0); // Slide in from right
                                const end = Offset.zero;
                                const curve = Curves.easeInOut;

                                var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
                                var offsetAnimation = animation.drive(tween);

                                return SlideTransition(
                                  position: offsetAnimation,
                                  child: child,
                                );
                              },
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.check,color: Colors.green,size: 15,),
                            SizedBox(width: 5,),
                            Text('Yes',style: TextStyle(color: Colors.black,fontSize: 17),),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.blueAccent,
                      Colors.white,
                    ],
                  ),
                ),
                height: height*.15,
                child: Center(
                  child: Stack(
                    children: [
                      CircleAvatar(
                        radius: 55,
                        backgroundImage: AssetImage('images/pfp.jpg'),
                      ),
                      Positioned(
                        bottom: height*.01,
                        right: width*.01,
                        child: Material(
                          color: Colors.transparent,
                          elevation: 4.0,
                          shape: CircleBorder(),
                          child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white, // Background color of the icon
                            ),
                            padding: EdgeInsets.all(4), // Padding around the icon
                            child: Icon(
                              Icons.add, // Add icon
                              color: Colors.blue, // Icon color
                              size: 18, // Icon size
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: width * 1,
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: height*.04),
                      child: Text(
                          'Salman Abid',
                        style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.w500
                        ),
                      ),
                    ),
                    Text(
                        '10 Applied  |  Islamabad',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  height: height*.23,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: width*.04,top: height*.025),
                        child: Column(
                          children: [
                            Icon(Icons.person_2_outlined,color: Colors.blue,)
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: width*.04,top: height*.025),
                        child: Stack(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Edit Profile',
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18
                                  ),
                                ),
                                SizedBox(
                                  height: height*.01,
                                ),
                                Container(
                                  width: width*.7, // Adjust the width as needed
                                  child: Text(
                                    'Edit all the basic profile information associated with your profile',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 18,
                                    ),
                                    softWrap: true,
                                    overflow: TextOverflow.visible,
                                  ),
                                ),

                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: width*.1,top: height*.02),
                child: Container(
                  height: height*.4,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.notifications_active_outlined,color: Colors.blue,),
                          SizedBox(width: width*.04,),
                          Text(
                              'Notifications',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: height*.03,),
                      Row(
                        children: [
                          Icon(Icons.image_outlined,color: Colors.blue,),
                          SizedBox(width: width*.04,),
                          Text(
                              'Recent Viewed',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: height*.03,),
                      Row(
                        children: [
                          Icon(Icons.event_note_outlined,color: Colors.blue,),
                          SizedBox(width: width*.04,),
                          Text(
                              'Get Help',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: height*.03,),
                      Row(
                        children: [
                          Icon(Icons.info_outline_rounded,color: Colors.blue,),
                          SizedBox(width: width*.04,),
                          Text(
                              'About Us',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: height*.03,),
                      Row(
                        children: [
                          Icon(Icons.exit_to_app_outlined,color: Colors.blue,),
                          SizedBox(width: width*.04,),
                          InkWell(
                            onTap: () => _showBookingConfirmationDialog(context),
                            child: Text(
                                'Sign Out',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.blueAccent,
      automaticallyImplyLeading: false,
      centerTitle: true,
      title: Padding(
        padding: const EdgeInsets.only(top: 35),
        child: Text(
            'Account',
          style: TextStyle(
            fontSize: 25,
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(90.0); // Set the height you want
}

