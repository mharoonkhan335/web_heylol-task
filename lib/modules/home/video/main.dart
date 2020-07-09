import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:video_player/video_player.dart';
import 'package:web_heylolTask/modules/home/home_page/controller.dart';

class Video extends StatefulWidget {
  final String videoURL;
  Video({this.videoURL});

  @override
  _VideoState createState() => _VideoState();
}

class _VideoState extends State<Video> {
  HomeController controller = Modular.get<HomeController>();
  @override
  void initState() {
    controller.setController(widget.videoURL);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => Column(
        children: [
          Stack(
            children: [
              Container(
                height: 600,
                width: 450,
                color: Colors.black,
                // width: MediaQuery.of(context).size.width,
                child: AspectRatio(
                  aspectRatio: controller?.videoController?.value?.aspectRatio,
                  child: VideoPlayer(controller?.videoController),
                ),
              ),
              Container(
                height: 600,
                width: 450,
                child: RaisedButton(
                  hoverElevation: 1,
                  highlightColor: Colors.transparent,
                  highlightElevation: 0,
                  hoverColor: Colors.transparent,
                  color: Colors.transparent,
                  elevation: 0,
                  splashColor: Colors.transparent,
                  padding: EdgeInsets.all(0),
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  onPressed: () {
                    print("TAPPED");
                    if (controller.videoController.value.isPlaying) {
                      controller.videoController.pause();
                    } else {
                      controller.videoController.play();
                    }
                  },
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

//
