import 'package:bwa_chatty/theme.dart';
import 'package:flutter/material.dart';

class ChatInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      height: 54,
      width: MediaQuery.of(context).size.width - (2 * 30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(75),
        color: whiteColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Type message ...',
            style: subTitleTextStyle.copyWith(
              color: Color(
                0XFF999999,
              ),
              fontSize: 16,
            ),
          ),
          Image.asset(
            'assets/images/btn_send.png',
          ),
        ],
      ),
    );
  }
}
