import 'dart:html';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:web_heylolTask/modules/home/trending_videos/video_tiles.dart';

class TrendingVideos extends StatefulWidget {
  VideoPlayerController videoController;
  @override
  _TrendingVideosState createState() => _TrendingVideosState();
}

class _TrendingVideosState extends State<TrendingVideos> {
  final videosRef = Firestore.instance.collection('videos');
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: videosRef
          .orderBy("likes", descending: true)
          .orderBy("timeAdded", descending: true)
          .limit(20)
          .getDocuments(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else {
          List<VideoTile> videoTiles = [];
          snapshot.data.documents.forEach((doc) {
            videoTiles.add(VideoTile.fromDocment(doc));
          });
          return Container(
            width: MediaQuery.of(context).size.width * 0.6,
            // height: 200,
            child: GridView.count(
              crossAxisCount: 4,
              childAspectRatio: 2 / 3.2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: videoTiles,
            ),
          );
        }
      },
    );
  }
}
