import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/profile.dart';

class appbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 60, left: 16),
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 10,
                            offset: Offset(0, 3),
                          )
                        ],
                      ),
                      child: Icon(CupertinoIcons.bars),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 60, right: 16),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => profile()),
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 10,
                            offset: Offset(0, 3),
                          )
                        ],
                      ),
                      child: Icon(CupertinoIcons.person),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildImageWithText("images/burger.jpeg", "All"),
                buildImageWithText("images/burger.jpeg", "Makanan"),
                buildImageWithText("images/tehbotol.jpeg", "Minuman"),
              ],
            ),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'All Food',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),

            // First row of food containers
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildFoodContainer(
                  "images/burger.jpeg",
                  "Burger King Medium",
                  "Rp 50.000,00",
                ),
                SizedBox(width: 10),
                buildFoodContainer(
                  "images/burger.jpeg",
                  "Burger King Medium",
                  "Rp 50.000,00",
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildFoodContainer(
                  "images/tehbotol.jpeg",
                  "Teh botol",
                  "Rp 15.000,00",
                ),
                SizedBox(width: 10),
                buildFoodContainer(
                  "images/pizza.png",
                  "pizza",
                  "xxxxxxxxxx",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildFoodContainer(
      String imagePath, String foodName, String description) {
    return Container(
      width: 169,
      height: 230,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 10,
            offset: Offset(0, 3),
          )
        ],
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Image.asset(
                imagePath,
                height: 130,
              ),
            ),
            SizedBox(height: 2),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                foodName,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(height: 10),
            Align(
              alignment: Alignment.topLeft,
              child: Row(
                children: [
                  Text(
                    'Rp ',
                    style: TextStyle(fontSize: 12, color: Colors.black),
                  ),
                  Text(
                    '50.000,00',
                    style: TextStyle(fontSize: 12, color: Colors.black),
                  ),
                  SizedBox(width: 50),
                  Icon(
                    Icons.attach_money,
                    size: 20,
                    color: Color.fromARGB(255, 62, 255, 3),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildImageWithText(String imagePath, String text) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(8),
          margin: EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 10,
                offset: Offset(0, 3),
              )
            ],
          ),
          child: Image.asset(
            imagePath,
            width: 80,
            height: 80,
          ),
        ),
        SizedBox(height: 8),
        Text(text, style: TextStyle(fontSize: 15)),
      ],
    );
  }
}
