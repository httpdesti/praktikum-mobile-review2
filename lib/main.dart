import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(title: 'first page',),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final titles = ['Bike', 'Boat', 'Bus'];
    final icons = [
      Icons.directions_bike,
      Icons.directions_boat,
      Icons.directions_bus
    ];
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: ListView.builder(
        itemCount: titles.length,
        itemBuilder: (context, nomor) {
          return Card(
              child: ListTile(
            leading: CircleAvatar(
              // icons[nomor],
              backgroundImage:
                  NetworkImage("https://picsum.photos/200/300?=$nomor"),
            ),
            title: Text(titles[nomor]),
          ));
        },
      ),
      // body: ListView(
      //   children: [
      //     ListTile(
      //       leading: CircleAvatar(
      //         backgroundImage: AssetImage("image.webp"),
      //       ),
      //     ),
      //   ],
      // ),
      //
      // body: GridView(
      //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //     crossAxisCount: 3
      //   ),
      //   children: [
      //     Container(
      //       width: 100,
      //       height: 100,
      //       decoration: BoxDecoration(
      //         image: DecorationImage(
      //           image: AssetImage("image.webp"),
      //         ),
      //       ),
      //     ),
      //     Container(
      //       width: 100,
      //       height: 100,
      //       decoration: BoxDecoration(
      //         image: DecorationImage(
      //           image: AssetImage("image.webp"),
      //         ),
      //       ),
      //     ),
      //     Container(
      //       width: 100,
      //       height: 100,
      //       decoration: BoxDecoration(
      //         image: DecorationImage(
      //           image: AssetImage("image.webp"),
      //         ),
      //       ),
      //     ),
      //   ],
      // ),
      // body: ListView(
      //   children: [
      //     Container(
      //       width: 100,
      //       height: 250,
      //       // margin: EdgeInsets.only(bottom: 10),
      //       // color: Colors.red,
      //       decoration: BoxDecoration(
      //         image: DecorationImage(
      //           image: AssetImage("Flutter.png"),
      //         ),
      //       ),
      //     ),
      //     Container(
      //       width: 100,
      //       height: 250,
      //       // margin: EdgeInsets.only(bottom: 10),
      //       // color: Colors.blue,
      //       decoration: BoxDecoration(
      //         image: DecorationImage(
      //           image: AssetImage("Flutter.png"),
      //         ),
      //       ),
      //     ),
      //     Container(
      //       width: 100,
      //       height: 250,
      //       // margin: EdgeInsets.only(bottom: 10),
      //       // color: Colors.green,
      //       decoration: BoxDecoration(
      //         image: DecorationImage(
      //           image: AssetImage("Flutter.png"),
      //         ),
      //       ),
      //     ),
      //   ],
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
