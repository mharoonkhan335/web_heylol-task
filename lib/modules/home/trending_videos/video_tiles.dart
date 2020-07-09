import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:web_heylolTask/modules/home/home_page/controller.dart';

class VideoTile extends StatelessWidget {
  final videoLikes;
  final videoURL;
  final thumbnailURL;
  final timeAdded;
  final category;

  VideoTile({
    this.videoLikes,
    this.videoURL,
    this.thumbnailURL,
    this.timeAdded,
    this.category,
  });

  factory VideoTile.fromDocment(doc) {
    return VideoTile(
      videoLikes: doc['likes'],
      videoURL: doc['videoURL'],
      thumbnailURL: doc['thumbnailURL'],
      timeAdded: doc['timeAdded'],
      category: doc['category'],
    );
  }

  HomeController controller = Modular.get<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        RaisedButton(
          elevation: 0,
          padding: EdgeInsets.all(0),
          splashColor: Colors.transparent,
          color: Colors.transparent,
          onPressed: () {
            controller.playAnother(videoURL);
            controller.setLikes(videoLikes);
          },
          child: Container(
            height: 300,
            width: 200,
            child: Image(
              image: NetworkImage(thumbnailURL),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          bottom: 25,
          right: 12,
          child: Container(
//            width: 30,
//            height: 30,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(
                  Icons.favorite,
                  size: 17,
                  color: Colors.white,
                ),
                SizedBox(width: 3),
                Text(
                  videoLikes > 1000
                      ? "${(videoLikes / 1000).toStringAsFixed(2)}K"
                      : videoLikes.toString(),
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: Colors.white),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
