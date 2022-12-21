// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget 
{ 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        leading : const Icon(
          Icons.menu
        ),
        title: const Text("First app"),
        actions: const [
          IconButton(
            icon: Icon(Icons.notification_important),
            onPressed: onNotification
            ),
          
          Icon(Icons.search)
        ],
      ),
    ); 
  }
}



void onNotification()
{
  print('notifiaction clicked');
}