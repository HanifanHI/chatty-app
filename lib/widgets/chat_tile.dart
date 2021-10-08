import 'package:bwa_chatty/pages/message_page.dart';
import 'package:flutter/material.dart';

import '../theme.dart';

class ChatTile extends StatelessWidget {
  // * DECLERATION ATRIBUTTE
  final String imageUrl;
  final String name;
  final String text;
  final String time;
  final bool unRead;

  // * CREATE CONSTRUCTOR
  ChatTile({
    required this.imageUrl,
    required this.name,
    required this.text,
    required this.time,
    required this.unRead,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(MessagePage.routeNameMessagePage);
      },
      child: Padding(
        padding: EdgeInsets.only(
          top: 16,
        ),
        child: Row(
          children: [
            Image.asset(
              imageUrl,
              width: 55,
              height: 55,
            ),
            SizedBox(
              width: 12,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: titleTextStyle,
                ),
                Text(
                  text,
                  style: unRead
                      ? subTitleTextStyle.copyWith(
                          color: blackColor,
                        )
                      : subTitleTextStyle,
                ),
              ],
            ),
            Spacer(),
            Text(
              time,
              style: subTitleTextStyle,
            ),
          ],
        ),
      ),
    );
  }
}
