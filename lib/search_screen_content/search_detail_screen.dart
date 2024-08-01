import 'package:flutter/material.dart';
import 'package:pro_kit_room_finder/home_screen_content/room_detail_screen.dart';

class SearchDetailScreen extends StatefulWidget {
  const SearchDetailScreen({super.key});

  @override
  State<SearchDetailScreen> createState() => _SearchDetailScreenState();
}

class _SearchDetailScreenState extends State<SearchDetailScreen> {
  String categoryName = 'Flat';
  bool isRoomAvailable = true;
  List<String> categoriesList = [
    'Flat',
    'Rooms',
    'Hall',
    'Rent',
    'House',
  ];
  List<String> recentlyAddedList = [
    'Small Room',
    'Big Room',
    'Medium Room',
    'Student Room',
    'Teacher Room',
    'Living Room',
  ];
  List<String> recentlyAddedListLocation = [
    'Islamabad',
    'Rawalpindi',
    'Lahore',
    'Faisalabad',
    'Multan',
    'Peshawar',
  ];
  List<String> recentlyAddedListPrice = [
    'RS. 8000 /',
    'RS. 6000 /',
    'RS. 10000 /',
    'RS. 4000 /',
    'RS. 15000 /',
  ];
  List<String> recentlyAddedListPriceDay = [
    'per day',
    'per month',
    'per week',
    'per day',
    'per month',
  ];

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final _formKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
        title: Text('Search Detail',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.blueAccent,
                    Colors.blueAccent,
                  ],
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(left: width* .04),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: height * .02),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Search for Property',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: height * 0.025),
                    Padding(
                      padding: EdgeInsets.only(left: width * 0,right: width*.04,bottom: height*.04),
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          labelText: 'Enter an address or city...',
                          labelStyle: TextStyle(fontSize: 15, color: Colors.black),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
                              width: 1,
                            ),

                          ),
                          prefixIcon: Icon(Icons.location_on),
                          prefixIconColor: Colors.blue,
                          prefixText: 'Lahore',
                          prefixStyle: TextStyle(fontWeight: FontWeight.bold),
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: width * .01,
                            vertical: height * .01,
                          ),
                          filled: true,
                          fillColor: Colors.blue.shade100,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.only(top: height * .03, left: width * .03),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: width * .32),
                    child: Text(
                      'Showing Results',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: (){},
                      child: Text(
                        '3 Results',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (context, index) {
                return Padding(
                  padding: EdgeInsets.only(top: height * .01, right: width * .03, left: width * .03, bottom: height * .02),
                  child: ElevatedButton(
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder: (context, animation, secondaryAnimation) => RoomDetailScreen(),
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
                    child: Container(
                      padding: EdgeInsets.only(top: 8, left: 0, right: 2, bottom: 8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Stack(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: .5), // Horizontal padding
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10.0),
                                  child: Image.asset(
                                    'images/bedroom.jpg', // replace with your image path
                                    width: double.infinity, // Image spans the full width
                                    height: height * .25, // specify height
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(height: 10), // Space between image and text
                                Text(
                                  recentlyAddedList[index],
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(height: 5), // space between title and subtitle
                                Row(
                                  children: [
                                    Text(
                                      recentlyAddedListPrice[index],
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.blueAccent,
                                      ),
                                    ),
                                    SizedBox(width: 10), // space between the two text widgets
                                    Text(
                                      recentlyAddedListPriceDay[index],
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10), // space between the rows
                                Row(
                                  children: [
                                    Icon(
                                      Icons.location_on, // choose your icon
                                      color: Colors.blue, // set the color of the icon
                                      size: 14, // set the size of the icon
                                    ),
                                    SizedBox(width: 4), // add some space between the icon and text
                                    Text(
                                      recentlyAddedListLocation[index],
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            right: 10,
                            top: height * .26,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    CircleAvatar(
                                      radius: 3,
                                      backgroundColor: isRoomAvailable ? Colors.green : Colors.red,
                                    ),
                                    SizedBox(width: width * .01), // space between the dot and text
                                    Text(
                                      isRoomAvailable ? 'Available' : 'Unavailable',
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: height * .01), // space between the rows
                                Text(
                                  '9 Applied | 20 Views',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
              childCount: 3, // Adjust this to your list size
            ),
          ),
        ],
      ),
    );
  }
}
