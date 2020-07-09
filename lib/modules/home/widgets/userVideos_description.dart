import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:web_heylolTask/modules/home/home_page/controller.dart';
import 'package:web_heylolTask/modules/home/widgets/socialMediaLogo.dart';

class UserVideoDescription extends StatelessWidget {
  HomeController controller = Modular.get<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundImage: NetworkImage(
                      "https://image.freepik.com/free-vector/gamer-mascot-geek-boy-esports-logo-avatar-with-headphones-glasses-cartoon-character_8169-228.jpg"),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Harry",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        "This is harry aka Haroon",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Container(
              width: 100,
              height: 40,
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Color(0xFF00FFFF))),
              child: Center(
                child: Text(
                  "Follow",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF04dddd)),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
        Text("This is a video desscription\n\n"
            "Can be a multiple liner description"),
        SizedBox(height: 10),
        Text("♫  The Song used in the Video  -  Artist Name",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            )),
        SizedBox(height: 40),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Observer(
              builder: (_) => Container(
                child: Row(children: [
                  Icon(
                    Icons.favorite_border,
                    size: 25,
                  ),
                  Text(
                    controller.likes > 1000 ? "${(controller.likes / 1000).toStringAsFixed(2)}K" : controller.likes.toString(),
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w600)),
                  SizedBox(width: 20),
                  Icon(Icons.chat_bubble_outline, size: 25),
                  Text("3.2K",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w600))
                ]),
              ),
            ),
            Row(
              children: [
                SocialMediaLogo("facebook"),
                SocialMediaLogo("twitter"),
                SocialMediaLogo("google+"),
                SocialMediaLogo("instagram"),
              ],
            )
          ],
        ),
      ],
    );
  }
}
