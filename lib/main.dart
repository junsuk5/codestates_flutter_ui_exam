import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('UI 연습'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(
              'https://digitalchosun.dizzo.com/site/data/img_dir/2022/06/10/2022061080123_0.jpg',
              width: double.infinity,
              height: 300,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: _titleWidget(),
            ),
            _iconsWidget(),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text('asdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdf'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _titleWidget() {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '제목!!!!!',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 10),
              Text('부 제목!!!!!'),
            ],
          ),
        ),
        Row(
          children: [
            Icon(Icons.star, color: Colors.red),
            Text('41'),
          ],
        ),
      ],
    );
  }

  Widget _iconsWidget() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Icon(Icons.call, color: Colors.cyan),
              Text('CALL', style: TextStyle(color: Colors.cyan)),
            ],
          ),
          Column(
            children: [
              Icon(Icons.call, color: Colors.cyan),
              Text('CALL', style: TextStyle(color: Colors.cyan)),
            ],
          ),
          Column(
            children: [
              Icon(Icons.call, color: Colors.cyan),
              Text('CALL', style: TextStyle(color: Colors.cyan)),
            ],
          ),
        ],
      ),
    );
  }
}
