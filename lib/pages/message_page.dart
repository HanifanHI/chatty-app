import 'package:bwa_chatty/widgets/chat_input.dart';
import 'package:flutter/material.dart';

import '/theme.dart';
import '/widgets/body.dart';
import '/widgets/header.dart';

class MessagePage extends StatelessWidget {
  static const routeNameMessagePage = '/message-page';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greyBackground,
      floatingActionButton: ChatInput(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
        child: Column(
          children: [
            HeaderWidget(),
            BodyWidget(),
          ],
        ),
      ),
    );
  }
}
