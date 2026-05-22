import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 22,
                          backgroundImage: AssetImage("asset/images/"),
                        ),
                        SizedBox(width: 10),
                          Column(
                            children: [
                              Text(
                                "admin1",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        Container(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            "Follow",
                            style: TextStyle(color: Colors.cyan, fontSize: 15),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 12),
                    Text(
                      "England is beauty!!",
                      style: TextStyle(fontSize: 14),
                    ),
                    SizedBox(height: 10),
                    Container(
                      width: double.infinity,
                      height: 250,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage("asset/immage/"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(height: 14),
                    Row(
                      children: [
                        Icon(Icons.thumb_up_alt_outlined, size: 20),
                        SizedBox(width: 8),
                        Text("4.2K"),
                        SizedBox(width: 16),
                        Icon(Icons.mode_comment_outlined, size: 20),
                        SizedBox(width: 8),
                        Text("178"),
                        SizedBox(width: 16),
                        Icon(Icons.bookmark_outline),
                        SizedBox(width: 16),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
  }
}
