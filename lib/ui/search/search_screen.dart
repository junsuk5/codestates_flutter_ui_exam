import 'package:flutter/material.dart';
import 'package:hello_flutter2/data/model/photo.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  List<Photo> photos = [
    Photo(
      url:
          'https://pbs.twimg.com/profile_images/1374979417915547648/vKspl9Et_400x400.jpg',
      description: '아이유',
    ),
    Photo(
      url:
      'https://dimg.donga.com/wps/NEWS/IMAGE/2022/11/11/116428366.2.jpg',
      description: '아이유 2',
    ),
    Photo(
      url:
      'https://assets.repress.co.kr/photos/2009ea104d2c842fed5461308d9f92d7/original.jpg',
      description: '아이유 3',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('이미지 검색'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.teal),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                hintText: 'Search',
                suffixIcon: const Icon(Icons.search),
                suffixStyle: const TextStyle(color: Colors.green),
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                ),
                itemCount: photos.length,
                itemBuilder: (BuildContext context, int index) {
                  final photo = photos[index];
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(16.0),
                    child: Image.network(
                      photo.url,
                      fit: BoxFit.cover,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
