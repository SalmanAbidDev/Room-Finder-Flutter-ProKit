import 'package:flutter/material.dart';
import 'package:pro_kit_room_finder/initial_screens/authentication_screen.dart';
class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool _obscureText = true;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        //height: height * 1,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.blueAccent,
                  Colors.white,
                ]
            )
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: height * .15), // Adjust the height as needed
              Center(
                child: Column(
                  children: [
                    Text(
                      'Room Finder',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      'Ultimate Property Finder',
                      style: TextStyle(
                        color: Colors.white,
                        letterSpacing: .6,
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: height * 0.05), // Adjust the height as needed
              Container(
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.symmetric(horizontal: width * 0.07),
                decoration: BoxDecoration(
                  color: Colors.white70,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Text(
                      'Create an Account',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: height * 0.02),
                    Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          TextFormField(
                          keyboardType: TextInputType.name, // Set keyboard type for email
                          decoration: InputDecoration(
                            hintText: 'Full Name',
                            border: OutlineInputBorder(), // Add a border
                            prefixIcon: Icon(Icons.person),
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: width * .01,
                                vertical: height * .01,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: height * .02,
                          ),
                          TextFormField(
                            keyboardType: TextInputType.emailAddress, // Set keyboard type for email
                            decoration: InputDecoration(
                              hintText: 'Email Address',
                              border: OutlineInputBorder(), // Add a border
                              prefixIcon: Icon(Icons.email_outlined),
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: width * .01,
                                vertical: height * .01,
                              ),
                            ),
                            validator: (value) { // Add email validation
                              if (value == null || value.isEmpty) {
                                return 'Please enter your email';
                              }
                              if (!value.contains('@') || !value.contains('.')) {
                                return 'Please enter a valid email';
                              }
                              return null; // Return null if the input is valid
                            },
                          ),
                          SizedBox(
                            height: height * .02,
                          ),
                          TextFormField(
                            obscureText: _obscureText, // Controls password visibility
                            keyboardType: TextInputType.visiblePassword,
                            decoration: InputDecoration(
                              hintText: 'Password',
                              border: OutlineInputBorder(),
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: width * .05,
                                vertical: height * .01,
                              ),
                              suffixIcon: IconButton( // Add a suffix icon
                                icon: Icon(
                                  _obscureText ? Icons.visibility : Icons.visibility_off,
                                ),
                                onPressed: () {
                                  setState(() {
                                    _obscureText = !_obscureText; // Toggle visibility
                                  });
                                },
                              ),
                            ),
                            /*validator: (value) {
                              // Add your password validation logic here
                            },*/
                          ),
                          SizedBox(
                            height: height * .02,
                          ),
                          TextFormField(
                            obscureText: _obscureText, // Controls password visibility
                            keyboardType: TextInputType.visiblePassword,
                            decoration: InputDecoration(
                              hintText: 'Confirm Password',
                              border: OutlineInputBorder(),
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: width * .05,
                                vertical: height * .01,
                              ),
                              suffixIcon: IconButton( // Add a suffix icon
                                icon: Icon(
                                  _obscureText ? Icons.visibility : Icons.visibility_off,
                                ),
                                onPressed: () {
                                  setState(() {
                                    _obscureText = !_obscureText; // Toggle visibility
                                  });
                                },
                              ),
                            ),
                            /*validator: (value) {
                              // Add your password validation logic here
                            },*/
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: height * 0.03),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          PageRouteBuilder(
                            pageBuilder: (context, animation, secondaryAnimation) => AuthenticationScreen(),
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
                        backgroundColor: Colors.blue,
                        padding: EdgeInsets.symmetric(
                          horizontal: width * 0.16,
                          vertical: height * 0.015,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        elevation: 5,
                      ),
                      child: Text(
                        'Create Account',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: height * .020), // Adjust the height as needed
              Column(
                children: [
                  SizedBox(height: height * 0.040),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Have an Account?',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(width: width * .02,),
                      InkWell(
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            PageRouteBuilder(
                              pageBuilder: (context, animation, secondaryAnimation) => AuthenticationScreen(),
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
                        child: Text(
                          'Sign In here',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.blue,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                  //SizedBox(height: height * .15),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
