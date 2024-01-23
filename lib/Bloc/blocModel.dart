import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dataClass.dart';

class PhotoBloc extends Cubit<List<Photo>> {
  PhotoBloc() : super([]);

  void fetchPhotos() async {
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));

    if (response.statusCode == 200) {
      final List<dynamic> data = jsonDecode(response.body);
      final List<Photo> photos = data
          .map((item) => Photo(
        id: item['id'],
        title: item['title'],
        thumbnailUrl: item['thumbnailUrl'],
      ))
          .toList();

      emit(photos);
    } else {
      // Handle error
    }
  }
}