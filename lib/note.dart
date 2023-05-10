library note;

import 'package:flutter/material.dart';

class Note extends StatefulWidget{
    const Note({super.key, required this.title});
    final String title;
    Widget build(BuildContext context){
        return Scaffold(
            appBar: AppBar(
                title: Text(title),
            ),
            body: Center(
                child: TextButton(
                    onPressed: () {},
                    child: const Text('Go Back'),
                ),
            ),
        );
    }
}
