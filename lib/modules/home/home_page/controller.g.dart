// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeController, Store {
  final _$videoControllerAtom = Atom(name: '_HomeController.videoController');

  @override
  VideoPlayerController get videoController {
    _$videoControllerAtom.reportRead();
    return super.videoController;
  }

  @override
  set videoController(VideoPlayerController value) {
    _$videoControllerAtom.reportWrite(value, super.videoController, () {
      super.videoController = value;
    });
  }

  final _$likesAtom = Atom(name: '_HomeController.likes');

  @override
  int get likes {
    _$likesAtom.reportRead();
    return super.likes;
  }

  @override
  set likes(int value) {
    _$likesAtom.reportWrite(value, super.likes, () {
      super.likes = value;
    });
  }

  final _$_HomeControllerActionController =
      ActionController(name: '_HomeController');

  @override
  void setLikes(dynamic videoLikes) {
    final _$actionInfo = _$_HomeControllerActionController.startAction(
        name: '_HomeController.setLikes');
    try {
      return super.setLikes(videoLikes);
    } finally {
      _$_HomeControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setController(String videoPath) {
    final _$actionInfo = _$_HomeControllerActionController.startAction(
        name: '_HomeController.setController');
    try {
      return super.setController(videoPath);
    } finally {
      _$_HomeControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void playAnother(dynamic videoPath) {
    final _$actionInfo = _$_HomeControllerActionController.startAction(
        name: '_HomeController.playAnother');
    try {
      return super.playAnother(videoPath);
    } finally {
      _$_HomeControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
videoController: ${videoController},
likes: ${likes}
    ''';
  }
}
