import 'package:flutter/material.dart';
import 'package:hello_flutter2/data/model/photo.dart';
import 'package:hello_flutter2/data/repository/photo_repository.dart';

class SearchViewModel extends ChangeNotifier {
  final _photoRepository = PhotoRepository();

  List<Photo> photos = [];
  bool isLoading = false;

  Future<void> search(String query) async {
    isLoading = true;
    notifyListeners();
    //

    photos = await _photoRepository.getPhotos(query);
    isLoading = false;
    //
    notifyListeners();
  }
}
