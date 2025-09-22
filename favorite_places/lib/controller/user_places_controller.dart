
import 'dart:io';

import 'package:favorite_places/models/place.dart';
import 'package:get/get.dart';

class UserPlacesController extends GetxController {
  final places = List<Place>.empty().obs;

  void addPlace(String title, File image, PlaceLocation location){
    places.add(Place(title: title, image: image, location: location));
  }
}