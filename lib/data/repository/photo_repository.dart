import 'package:hello_flutter2/data/model/photo.dart';

class PhotoRepository {
  final List<Photo> photos = [
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

  Future<List<Photo>> getPhotos(String query) async {
    await Future.delayed(const Duration(seconds: 2));
    return photos;
  }
}