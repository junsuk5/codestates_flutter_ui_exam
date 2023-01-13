import 'package:flutter/material.dart';
import 'package:hello_flutter2/ui/search/search_screen.dart';
import 'package:hello_flutter2/ui/search/search_view_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => SearchViewModel(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const SearchScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UI 연습'),
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
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                  'asdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdf'),
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
              const Text(
                '제목!!!!!',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 10),
              const Text('부 제목!!!!!'),
            ],
          ),
        ),
        Row(
          children: [
            const Icon(Icons.star, color: Colors.red),
            const Text('41'),
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
              const Icon(Icons.call, color: Colors.cyan),
              const Text('CALL', style: TextStyle(color: Colors.cyan)),
            ],
          ),
          Column(
            children: [
              const Icon(Icons.call, color: Colors.cyan),
              const Text('CALL', style: TextStyle(color: Colors.cyan)),
            ],
          ),
          Column(
            children: [
              const Icon(Icons.call, color: Colors.cyan),
              const Text('CALL', style: TextStyle(color: Colors.cyan)),
            ],
          ),
        ],
      ),
    );
  }
}
