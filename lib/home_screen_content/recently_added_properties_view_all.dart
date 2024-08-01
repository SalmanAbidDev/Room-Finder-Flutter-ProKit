import 'package:flutter/material.dart';
import 'package:pro_kit_room_finder/home_screen_content/room_detail_screen.dart';

class RecentlyAddedProperties extends StatefulWidget {
  const RecentlyAddedProperties({super.key});

  @override
  State<RecentlyAddedProperties> createState() => _RecentlyAddedPropertiesState();
}

class _RecentlyAddedPropertiesState extends State<RecentlyAddedProperties> {String categoryName = 'Flat';
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
        title: Text('Recently Added Properties',style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
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
                  padding: EdgeInsets.only(top: 12, right: width * .03, left: width * .03),
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
                          Row(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: Image.asset(
                                  'images/room.jpg', // replace with your image path
                                  width: 100, // specify width
                                  height: 100, // specify height
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(width: width * .03),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start, // Align to the top
                                  children: [
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
                                        SizedBox(width: width * .01), // space between the two text widgets
                                        Text(
                                          recentlyAddedListPriceDay[index],
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: height * .03), // space between the two text widgets
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
                            ],
                          ),
                          Positioned(
                            right: 0,
                            top: height * .015,
                            child: Row(
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
