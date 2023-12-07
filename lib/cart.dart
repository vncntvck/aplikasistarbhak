import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class cart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 20,
                      left: 10,
                      bottom: 10,
                    ),
                    child: Text(
                      "List Order Anda",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 9),
                    child: Container(
                      width: 350,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 3,
                            blurRadius: 10,
                            offset: Offset(0, 3),
                          )
                        ],
                      ),
                      child: Row(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            child: Image.asset(
                              "images/pizza.png",
                              height: 80,
                              width: 150,
                            ),
                          ),
                          Container(
                            width: 140,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  "Pizza",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight:FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "Rasakan Pizza Kami",
                                  style: TextStyle(
                                    fontSize: 14,
                                    // fontWeight:FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "\Rp. 19.000",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight:FontWeight.bold,
                                    color: Colors.red,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: 8),
                              child: Container(
                            padding: EdgeInsets.all(5), 
                            decoration: BoxDecoration(
                              color: Colors.amber,
                            borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              mainAxisAlignment: 
                              MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                                  CupertinoIcons.minus,
                                  color: Colors.white,
                                  ),
                                  Text("2", style: TextStyle(
                                    fontSize: 18, 
                                    fontWeight: FontWeight.bold, 
                                    color: Colors.white),
                                    ),
                                  Icon(
                                  CupertinoIcons.minus,
                                  color: Colors.white,
                                  ),
                              ],
                            ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 9),
                    child: Container(
                      width: 350,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 3,
                            blurRadius: 10,
                            offset: Offset(0, 3),
                          )
                        ],
                      ),
                      child: Row(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            child: Image.asset(
                              "images/burger.jpeg",
                              height: 80,
                              width: 150,
                            ),
                          ),
                          Container(
                            width: 140,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  "Burger",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight:FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "Rasakan Burger Kami",
                                  style: TextStyle(
                                    fontSize: 14,
                                    // fontWeight:FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "\Rp. 19.000",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight:FontWeight.bold,
                                    color: Colors.red,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: 8),
                              child: Container(
                            padding: EdgeInsets.all(5), 
                            decoration: BoxDecoration(
                              color: Colors.amber,
                            borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              mainAxisAlignment: 
                              MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                                  CupertinoIcons.minus,
                                  color: Colors.white,
                                  ),
                                  Text("2", style: TextStyle(
                                    fontSize: 18, 
                                    fontWeight: FontWeight.bold, 
                                    color: Colors.white),
                                    ),
                                  Icon(
                                  CupertinoIcons.minus,
                                  color: Colors.white,
                                  ),
                              ],
                            ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white, 
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 10,
                          offset: Offset(0,3),
                        ),
                      ]
                    ),
                    child: Column(children: [
                      Padding(padding: EdgeInsets.symmetric(
                        vertical: 10,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Items:", 
                              style: TextStyle(fontSize: 20),
                            ),
                            Text(
                              "4", 
                              style: TextStyle(fontSize: 20),
                            ),
                          ],
                          ),
                        ),
                        Divider(
                          color: Colors.black,
                        ),
                        Padding(padding: EdgeInsets.symmetric(
                        vertical: 10,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "sub-total:", 
                              style: TextStyle(fontSize: 20),
                            ),
                            Text(
                              "\Rp. 74.000", 
                              style: TextStyle(fontSize: 20),
                            ),
                          ],
                          ),
                        ),
                        Divider(
                          color: Colors.black,
                        ),
                        Padding(padding: EdgeInsets.symmetric(
                        vertical: 10,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Ongkir:", 
                              style: TextStyle(fontSize: 20),
                            ),
                            Text(
                              "\Rp. 5.000", 
                              style: TextStyle(fontSize: 20),
                            ),
                          ],
                          ),
                        ),
                        Divider(
                          color: Colors.black,
                        ),
                        Padding(padding: EdgeInsets.symmetric(
                        vertical: 10,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Total:", 
                              style: TextStyle(fontSize: 20, 
                              fontWeight: FontWeight.bold,  
                              ),
                            ),
                            Text(
                              "79.000", 
                              style: TextStyle(fontSize: 20, 
                              fontWeight: FontWeight.bold,
                              color: Colors.red,
                              ),
                            ),
                          ],
                          ),
                        ),
                        Divider(
                          color: Colors.black,
                        ),
                    ],
                    ),
                  ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
