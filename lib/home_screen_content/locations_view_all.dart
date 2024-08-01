import 'package:flutter/material.dart';

class LocationsViewAll extends StatefulWidget {
  const LocationsViewAll({super.key});

  @override
  State<LocationsViewAll> createState() => _LocationsViewAllState();
}

class _LocationsViewAllState extends State<LocationsViewAll> {String categoryName = 'Flat';
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
  //final width = MediaQuery.of(context).size.width;
  return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.blueAccent,
      title: Text('Locations',style: TextStyle(
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
        SliverGrid(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1, // Number of columns
            crossAxisSpacing: .001, // Space between columns
            mainAxisSpacing: .001, // Space between rows
            childAspectRatio: 1.6, // Aspect ratio for the grid items
          ),
          delegate: SliverChildBuilderDelegate(
                (context, index) {
              return Padding(
                padding: EdgeInsets.all(10.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue,
                      image: DecorationImage(
                        image: AssetImage('images/location.jpg'),
                        fit: BoxFit.cover,
                      )
                  ),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.location_on,
                                size: 20,
                                color: Colors.white,
                              ),
                              Text(
                                recentlyAddedListLocation[index],
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                '12 Found', // Replace with your desired text
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
            childCount: recentlyAddedListLocation.length,
          ),
        ),
      ],
    ),
  );
}
}
