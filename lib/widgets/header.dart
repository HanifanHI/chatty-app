import 'package:bwa_chatty/theme.dart';
import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 115,
      decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(30),
          )),
      padding: EdgeInsets.all(30),
      child: Row(
        children: [
          Image.asset(
            'assets/images/group1.png',
            width: 55,
            height: 55,
          ),
          SizedBox(
            width: 12,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Jakarta Fair',
                style: titleTextStyle,
              ),
              Text(
                '14,209 members',
                style: subTitleTextStyle,
              )
            ],
          ),
          Spacer(),
          Image.asset(
            'assets/images/btn_call.png',
          ),
        ],
      ),
    );
  }
}
