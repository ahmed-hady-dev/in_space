import 'package:flutter/cupertino.dart';

class PlanetModel extends ChangeNotifier {
  String name;
  String planetData;
  String imagePath;
  String planetLink;
  double mulNumber;

  PlanetModel({
    this.name,
    this.imagePath,
    this.mulNumber,
    this.planetData,
    this.planetLink,
  });
}

List<PlanetModel> planetList = [PlanetModel()];
