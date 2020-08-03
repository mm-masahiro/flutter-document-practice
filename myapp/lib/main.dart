import 'package:flutter/material.dart';
import 'package:myapp/counter.dart';
import 'package:myapp/count.dart';
import 'package:myapp/countreset.dart';
import 'package:provider/provider.dart';

// void main() {
//   runApp(MyApp());
// }

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Counter())
      ],
      child: MyHomepage(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomepage(),
    );
  }
}

class MyHomepage extends StatelessWidget {
const MyHomepage({Key key}) : super(key : key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Example",
            style: TextStyle(
              color: Colors.black
            ),
          ),
          backgroundColor: Colors.yellow,
        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text('You have ~~~'),
              const Count(),
              RaisedButton(
                // onPressed: const CountReset(),
                onPressed: () {
                  int count = 0;
                },
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => context.read<Counter>().increment(),
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}