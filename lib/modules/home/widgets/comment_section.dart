import 'package:flutter/material.dart';

class CommentSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.1,),
          Text(
            "Login to see comments",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 8),
          Text("Login to be able to see comments and like the video",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w200,
              )),
          SizedBox(
            height: 25,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.2,
            height: 40,
            decoration: BoxDecoration(
              color: Color(0xFF1eeded),
              borderRadius: BorderRadius.circular(100),
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
                "Log in",
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      ),
    );
  }
}
