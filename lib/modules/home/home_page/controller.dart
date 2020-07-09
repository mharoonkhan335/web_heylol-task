import 'package:mobx/mobx.dart';
import 'package:video_player/video_player.dart';
part 'controller.g.dart';

class HomeController extends _HomeController with _$HomeController {}

abstract class _HomeController with Store {
  @observable
  VideoPlayerController videoController;

  @observable
  int likes = 2464;

  @action
  void setLikes (videoLikes) {
    print(videoLikes);
    likes = videoLikes;
    print(likes);
  }

  @action
  void setController(String videoPath) {
    videoController = VideoPlayerController.network(videoPath);
    videoController.initialize().then((_) {});
    videoController.play();
  }

  @action
  void playAnother(videoPath) {
    videoController = null;
    videoController = VideoPlayerController.network(videoPath);
    videoController.initialize().then((_) {
      videoController.play();
    });
  }
}
