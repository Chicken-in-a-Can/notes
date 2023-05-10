library note;

import 'package:flutter/material.dart';

class Note extends StatefulWidget{
    const Note({Key? key, required this.title}) : super(key: key);
    final String title;
    @override
    _NoteState createState() => _NoteState();
}

class _NoteState extends State<Note>{
    Widget build(BuildContext context){
        return Scaffold(
            appBar: AppBar(
                title: Text(widget.title),
            ),
            body: Center(
                child: TextButton(
                    onPressed: () {},
                    child: const Text('It\'s a Note'),
                ),
            ),
        );
    }
}
