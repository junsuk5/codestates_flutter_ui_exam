import 'dart:convert';

import 'package:hello_flutter2/data/dto/photo_result.dart';
import 'package:hello_flutter2/data/model/photo.dart';
import 'package:http/http.dart' as http;

class PhotoRepository {
  Future<List<Photo>> getPhotos(String query) async {
    final response = await http.get(Uri.parse(
        'https://pixabay.com/api/?key=10711147-dc41758b93b263957026bdadb&q=$query&image_type=photo&pretty=true'));

    if (response.statusCode == 200) {
      final json = jsonDecode(response.body);
      final photoResult = PhotoResult.fromJson(json);

      if (photoResult.hits == null) {
        return [];
      } else {
        return photoResult.hits!
            .where((e) => e.webformatURL != null)
            .map((e) => Photo(url: e.webformatURL!, description: e.tags ?? ''))
            .toList();
      }
    } else {
      throw Exception('die : ${response.statusCode}');
    }
  }
}
