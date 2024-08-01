import 'package:flutter/material.dart';
import 'package:pro_kit_room_finder/home_screen_content/home_screen_section.dart';
import 'package:pro_kit_room_finder/home_screen_content/room_detail_screen.dart';

class RecentUpdatesViewAll extends StatefulWidget {
  const RecentUpdatesViewAll({super.key});

  @override
  State<RecentUpdatesViewAll> createState() => _RecentUpdatesViewAllState();
}

class _RecentUpdatesViewAllState extends State<RecentUpdatesViewAll> {String categoryName = 'Flat';
bool isRoomAvailable = true;
List<String> categoriesList = [
  'Flat',
  'Rooms',
  'Hall',
  'Rent',
  'House',
  'Mansion',
  'Flat',
  'Rooms',
  'Hall',
  'Rent',
  'House',
  'Mansion',
];
List<String> recentlyAddedList = [
  'Small Room',
  'Big Room',
  'Medium Room',
  'Student Room',
  'Teacher Room',
  'Living Room',
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
  'Faisalabad',
  'Bahawalpur',
  'Kharian',
  'Mardan',
  'Murree',
  'Karachi',
];
List<String> recentlyAddedListPrice = [
  'RS. 8000 /',
  'RS. 6000 /',
  'RS. 10000 /',
  'RS. 4000 /',
  'RS. 15000 /',
  'RS. 35000 /',
  'RS. 8000 /',
  'RS. 6000 /',
  'RS. 10000 /',
  'RS. 4000 /',
  'RS. 15000 /',
  'RS. 35000 /',
];
List<String> recentlyAddedListPriceDay = [
  'per day',
  'per month',
  'per week',
  'per day',
  'per month',
  'per year',
  'per day',
  'per month',
  'per week',
  'per day',
  'per month',
  'per year',
];
@override
Widget build(BuildContext context) {
  final height = MediaQuery.of(context).size.height;
  final width = MediaQuery.of(context).size.width;
  return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.blueAccent,
      title: Text('Recent Updates',style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 20,
      ),
      ),
      centerTitle: true,
      toolbarHeight: height * .13,
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
    ),
    body: CustomScrollView(
      slivers: [
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
            childCount: 12, // Adjust this to your list size
          ),
        ),
      ],
    ),
  );
}
}