import 'package:bwa_chatty/theme.dart';
import 'package:flutter/material.dart';

class SenderBubble extends StatelessWidget {
  // * ATTRIBUTE
  final String imageUrl;
  final String message;
  final String time;

  // * CONSTRUCTOR
  SenderBubble({
    required this.imageUrl,
    required this.message,
    required this.time,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.only(
        bottom: 30,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 12,
            ),
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  message,
                  style: titleMessageTextStyle,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  time,
                  style: subTitleTextStyle.copyWith(
                    color: blackSecondColor,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            width: 12,
          ),
          Image.asset(
            imageUrl,
            width: 40,
            height: 40,
          ),
        ],
      ),
    );
  }
}
