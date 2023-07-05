import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Image.asset(
          'assets/images/1.jpg',
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
        ),
        Positioned(
            left: 110,
            top: 120,
            child: Column(
              children: [
                Text(
                  "PROFILE",
                  style: TextStyle(
                      fontSize: 40,
                      color: Colors.deepOrangeAccent,
                      fontWeight: FontWeight.bold),
                ),
                CircleAvatar(
                  radius: 110, // Adjust the radius as needed
                  backgroundImage: AssetImage('assets/images/3.jpeg'),
                ),
              ],
            )),
        Positioned(
            top: 435,
            left: 25,
            child: Column(
              children: [
                Container(
                  width: 375,
                  child: Card(
                    // Customize the card appearance using the shape, elevation, and color properties
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 4,
                    color: Colors.white,
                    // Add content inside the card using the child property
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.email_outlined,
                            size: 35,
                          ),
                          SizedBox(width: 15),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,


                            children: [

                              Text(
                                'Email',
                                style: TextStyle(fontSize: 16),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text('pranjaldahal222@gmail.com')
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  width: 375,
                  child: Card(
                    // Customize the card appearance using the shape, elevation, and color properties
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 4,
                    color: Colors.white,
                    // Add content inside the card using the child property
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.phone_android_outlined,
                            size: 35,
                          ),
                          SizedBox(width: 15),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,


                            children: [

                              Text(
                                'Phone',
                                style: TextStyle(fontSize: 16),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text('9808074955'),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  width: 375,
                  child: Card(
                    // Customize the card appearance using the shape, elevation, and color properties
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 4,
                    color: Colors.white,
                    // Add content inside the card using the child property
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.location_city_rounded,
                            size: 35,
                          ),
                          SizedBox(width: 15),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,


                            children: [

                              Text(
                                'Address',
                                style: TextStyle(fontSize: 16),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text('Kalanki, Kathmandu, Nepal')
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ))
      ],
    ));
  }
}
