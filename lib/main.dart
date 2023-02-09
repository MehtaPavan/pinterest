import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(243, 243, 243, 10),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.black87,
          ),
          onPressed: () {},
        ),
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))
              ),
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: const [
                      Image(
                        image: AssetImage('assets/images/pinterest.jpg'),
                        height: 40,
                        width: 35,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text('Pinterest', style: TextStyle(color: Colors.black87, fontSize: 30,fontWeight: FontWeight.w500),),
                      ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                          padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                              color: Color.fromRGBO(244, 243, 243, 1),
                              borderRadius: BorderRadius.circular(15)
                              ),
                                child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              prefixIcon: Icon(Icons.search, color: Colors.black87,),
                              hintText: "Search here",
                              hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
                            ),
                        ),
                      ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Browse',style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),),
                    SizedBox(height: 15,),
                    Container(
                      height: 200,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          promoCard('assets/images/1.jpg'),
                          promoCard('assets/images/2.jpg'),
                          // promoCard('assets/images/1.jpg'),
                          // promoCard('assets/images/1.jpg'),
                          // promoCard('assets/images/1.jpg'),
                        ],
                      ),
                    ),
                    SizedBox(height: 15,),
                    Container(
                      height: 180,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/3.jpg')
                        ),
                        color: Colors.orange,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: 200,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          promoCard('assets/images/5.jpg'),
                          promoCard('assets/images/6.jpg'),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 18,
                    ),
                  ],
                ),
            ),
          ],
        ),
      ),
    );
  }

  Widget promoCard(image){
    return AspectRatio(aspectRatio: 2.8 / 3,
      child: Container(
        margin: EdgeInsets.only(right: 15),
        decoration: BoxDecoration(
          color: Colors.cyan,
              borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              fit: BoxFit.cover,
                image: AssetImage(image)),
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              stops: [0.1,0.3],
              colors: [
              ],
            ),
          ),
        ),
      ),
    );
  }
}

