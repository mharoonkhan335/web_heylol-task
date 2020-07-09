import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:web_heylolTask/modules/home/trending_videos/main.dart';
import 'package:web_heylolTask/modules/home/video/main.dart';
import 'package:web_heylolTask/modules/home/widgets/comment_section.dart';
import 'package:web_heylolTask/modules/home/widgets/userVideos_description.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String videoURL =
      "https://img-9gag-fun.9cache.com/photo/aYyyOmq_460svvp9.webm";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
//        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.9,
            height: 80,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 60,
                  child: Image(
                    image: AssetImage("assets/heylol-logo.png"),
                    fit: BoxFit.fitHeight,
                  ),
                ),
                Container(
                  height: 40,
                  width: 90,
                  decoration: BoxDecoration(
                    color: Color(0xFF1eeded),
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 3,
                        offset: Offset(1, 1),
                      )
                    ],
                  ),
                  child: Center(
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 30, vertical: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 40),
                              Row(
                                children: [
                                  Icon(Icons.home,
                                      color: Color(0xFF0EEFEF), size: 34),
                                  SizedBox(width: 15),
                                  Text(
                                    "Home",
                                    style: TextStyle(
                                        fontSize: 32,
                                        color: Color(0xFF0EEFEF),
                                        fontWeight: FontWeight.w100),
                                  ),
                                ],
                              ),
                              SizedBox(height: 30),
                              Row(
                                children: [
                                  Icon(Icons.trending_up,
                                      color: Color(0xFF0EEFEF), size: 34),
                                  SizedBox(width: 15),
                                  Text(
                                    "Trends",
                                    style: TextStyle(
                                        fontSize: 32,
                                        color: Color(0xFF0EEFEF),
                                        fontWeight: FontWeight.w100),
                                  ),
                                ],
                              ),
                              SizedBox(height: 30),
                              Row(
                                children: [
                                  Icon(Icons.category,
                                      color: Color(0xFF0EEFEF), size: 34),
                                  SizedBox(width: 15),
                                  Text(
                                    "Categories",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w100,
                                      fontSize: 32,
                                      color: Color(0xFF0EEFEF),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 4,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(25),
                          child: Padding(
                            padding: const EdgeInsets.only(right: 25),
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 1,
                                  color: Colors.grey,
                                ),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Video(
                                    videoURL: videoURL,
                                  ),
                                  Expanded(
                                    child: Container(
                                      padding:
                                          EdgeInsets.fromLTRB(20, 60, 30, 10),
                                      child: Column(
                                        // mainAxisAlignment:
                                        //     MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          UserVideoDescription(),
                                          SizedBox(
                                            height: 40,
                                          ),
                                          Container(
                                            height: 1,
                                            color: Colors.grey[300],
                                          ),
                                          CommentSection(),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 60),
                  Container(
                    child: Row(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.2,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 30,
                            ),
                            Container(
                              padding: EdgeInsets.only(bottom: 6),
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    width: 5,
                                    color: Color(0xFF1eeded),
                                  )
                                )
                              ),
                              child: Text(
                                "Trending Videos",
                                style: TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black87,
                                ),
                              ),
                            ),
                            SizedBox(height: 25),
                            TrendingVideos(),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
