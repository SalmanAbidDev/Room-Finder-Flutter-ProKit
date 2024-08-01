
//Account Section CLass
import 'package:flutter/material.dart';

class AccountSection extends StatefulWidget {
  const AccountSection({super.key});

  @override
  State<AccountSection> createState() => _AccountSectionState();
}

class _AccountSectionState extends State<AccountSection> {
  String categoryName = 'Applied (5)';
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
  List<String> categoriesListNew = [
    'Applied (5)',
    'Liked',
  ];
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
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
            SizedBox(height: height*.02,),
            Container(
              child: Row(
                children: [
                  SizedBox(width: width*.05,),
                  Container(
                    height: height * .08,
                    width: width * .42,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: Colors.grey.shade300,
                        width: 1,
                      )
                    ),
                    child: Center(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.call_outlined,color: Colors.blue,),
                          SizedBox(width: width*.02,),
                          Text(
                              'Call Me',
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: width*.06,),
                  Container(
                    height: height * .08,
                    width: width * .42,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          color: Colors.blue,
                          width: 1,
                        )
                    ),
                    child: Center(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.message_outlined,color: Colors.white,),
                          SizedBox(width: width*.02,),
                          Text(
                              'Message Me',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: height*.24,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey.shade400,
                  ),
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: width*.045,top: height*.02),
                      child: Row(
                        children: [
                          Text(
                            'Email',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                            ),
                          ),
                          SizedBox(width: width * 0.15),
                          Expanded(
                            child: Text(
                              'enytsalmanabid@gmail.com',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                              ),
                              overflow: TextOverflow.ellipsis, // Handle long text gracefully
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10), // Add some space before the divider
                    Divider(
                      color: Colors.grey.shade400,
                      thickness: 1,
                      height: 1,
                      endIndent: 0,
                      indent: 0,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: width*.045,top: height*.02,bottom: height*.02),
                      child: Row(
                        children: [
                          Text(
                            'Location',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                            ),
                          ),
                          SizedBox(width: width * 0.18),
                          Expanded(
                            child: Text(
                              'Ghori Town, Islamabad',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                              ),
                              overflow: TextOverflow.ellipsis, // Handle long text gracefully
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      color: Colors.grey.shade400,
                      thickness: 1,
                      height: 1,
                      endIndent: 0,
                      indent: 0,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: width*.045,top: height*.02,bottom: height*.02),
                      child: Row(
                        children: [
                          Text(
                            'Phone No',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                            ),
                          ),
                          SizedBox(width: width * 0.22),
                          Expanded(
                            child: Text(
                              '(+92) 3309533315',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                              ),
                              overflow: TextOverflow.ellipsis, // Handle long text gracefully
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: width*.04),
              child: Container(
                height: height*.07,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categoriesListNew.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 12),
                      child: ElevatedButton(
                        style: TextButton.styleFrom(
                          backgroundColor: categoryName == categoriesListNew[index]
                              ? Colors.blue.shade100
                              : Colors.white,
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            categoryName = categoriesListNew[index];
                          });
                        },
                        child: Center(
                          child: Text(
                            categoriesListNew[index],
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: categoryName == categoriesListNew[index]
                                  ? Colors.blue
                                  : Colors.grey,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: width*.02,top: height*.04,right: width*.02),
              child: Container(
                height: height*.7,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: categoriesList.length,
                  itemBuilder: (context, index) {
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
                ),
              ),
            )
          ],
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