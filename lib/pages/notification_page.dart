import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  final ReceivedAction receivedAction;
  const NotificationPage({required this.receivedAction, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (receivedAction.title != null) Text("Action title: ${receivedAction.title!}"),
            Text("ActionType: ${receivedAction.actionType.toString()}"),
            if (receivedAction.body != null) Text("Action body: ${receivedAction.body!}"),
          ],
        ),
      ),
    );
  }
}
