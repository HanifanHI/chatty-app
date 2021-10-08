import 'package:flutter/material.dart';

import 'receiver_bubble.dart';
import 'sender_bubble.dart';

class BodyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            ReceiverBubble(
              imageUrl: 'assets/images/friend1.png',
              message: 'How are ya guys?',
              time: '2:30',
            ),
            ReceiverBubble(
              imageUrl: 'assets/images/friend3.png',
              message: 'Find here :P',
              time: '3:11',
            ),
            SenderBubble(
              imageUrl: 'assets/images/profile.png',
              message:
                  'Thinking about how to deal\nwith this client from hell...',
              time: '22:08',
            ),
            ReceiverBubble(
              imageUrl: 'assets/images/friend2.png',
              message: 'Love them',
              time: '23:11',
            ),
          ],
        ),
      ),
    );
  }
}
