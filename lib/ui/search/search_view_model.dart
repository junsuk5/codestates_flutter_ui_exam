import 'package:hello_flutter2/data/model/photo.dart';
import 'package:hello_flutter2/data/repository/photo_repository.dart';

class SearchViewModel {
  final _photoRepository = PhotoRepository();

  List<Photo> photos = [];
  bool isLoading = false;

  Future<void> search(String query) async {
    photos = await _photoRepository.getPhotos(query);
  }
}
