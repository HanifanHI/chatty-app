import 'package:bwa_chatty/theme.dart';
import 'package:flutter/material.dart';

class ReceiverBubble extends StatelessWidget {
  // * ATRIBUTTE
  final String imageUrl;
  final String message;
  final String time;

  // * CONSTRUCTOR
  ReceiverBubble({
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
        children: [
          Image.asset(
            imageUrl,
            width: 40,
            height: 40,
          ),
          SizedBox(
            width: 12,
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 12,
            ),
            decoration: BoxDecoration(
              color: greySecond,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
          )
        ],
      ),
    );
  }
}
