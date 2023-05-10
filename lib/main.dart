import 'package:flutter/material.dart';
import 'package:dynamic_color/dynamic_color.dart';
import 'note/note.dart' as note;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
    const MyApp({super.key});

    // This widget is the root of your application.
    @override
    Widget build(BuildContext context) {
        return DynamicColorBuilder(
            builder: (
                ColorScheme? lightDynamic,
                ColorScheme? darkDynamic,
            ){
                return MaterialApp(
                    title: 'Notes',
                    theme: ThemeData(
                        colorScheme: lightDynamic,
                        useMaterial3: true,
                    ),
                    darkTheme: ThemeData(
                        colorScheme: darkDynamic,
                        useMaterial3: true,
                    ),
                    home: const MyHomePage(title: 'Notes Main'),
                );
            }
        );
    }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
                return const note.Note(title: 'New Note');
            }));
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
