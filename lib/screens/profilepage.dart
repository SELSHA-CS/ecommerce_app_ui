import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage("assets/images/pfp.jpg"),
                  //backgroundColor: Colors.red,
                ),
                Text("Edit")
              ],
            ),
            SizedBox(height: 20,),
            Text("Profile", style: TextStyle(fontWeight: FontWeight.bold),),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("View Profile"),
                Icon(Icons.arrow_forward),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Orders"),
                Icon(Icons.arrow_forward),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Whishlist"),
                Icon(Icons.arrow_forward),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Gift Cards"),
                Icon(Icons.arrow_forward),
              ],
            ),
            SizedBox(height: 20,),
            Text("Settings", style: TextStyle(fontWeight: FontWeight.bold),),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Shipping & Returns"),
                Icon(Icons.arrow_forward),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Help"),
                Icon(Icons.arrow_forward),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Contact Us"),
                Icon(Icons.arrow_forward),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("About Us"),
                Icon(Icons.arrow_forward),
              ],
            ),
            SizedBox(height: 20,),
            MaterialButton(
                onPressed: (){},
              minWidth: 500,
              height: 50,
              color: Colors.grey,
              child: Text("Log Out"),
            ),
          ],
        ),
      ),
    );
  }
}
