import 'package:flutter/material.dart';
import 'package:flutter_netflix_app/assets.dart';
import 'package:flutter_netflix_app/models/models.dart';

final Content sintelContent = Content.fromJson(sintelContentData);
final sintelContentData = {
  "name": 'Sintel',
  "imageUrl": Assets.sintel,
  "titleImageUrl": Assets.sintelTitle,
  "videoUrl": Assets.sintelVideoUrl,
  "description":
      'A lonely young woman, Sintel, helps and befriends a dragon,\nwhom she calls Scales. But when he is kidnapped by an adult\ndragon, Sintel decides to embark on a dangerous quest to find\nher lost friend Scales.',
};

final List<Content> previews =
    previewsData.map((data) => Content.fromJson(data)).toList();
final previewsData = [
  {
    "name": 'Avatar The Last Airbender',
    "imageUrl": Assets.atla,
    "color": Colors.orange,
    "titleImageUrl": Assets.atlaTitle,
  },
  {
    "name": 'The Crown',
    "imageUrl": Assets.crown,
    "color": Colors.red,
    "titleImageUrl": Assets.crownTitle,
  },
  {
    "name": 'The Umbrella Academy',
    "imageUrl": Assets.umbrellaAcademy,
    "color": Colors.yellow,
    "titleImageUrl": Assets.umbrellaAcademyTitle,
  },
  {
    "name": 'Carole and Tuesday',
    "imageUrl": Assets.caroleAndTuesday,
    "color": Colors.lightBlueAccent,
    "titleImageUrl": Assets.caroleAndTuesdayTitle,
  },
  {
    "name": 'Black Mirror',
    "imageUrl": Assets.blackMirror,
    "color": Colors.green,
    "titleImageUrl": Assets.blackMirrorTitle,
  },
  {
    "name": 'Avatar The Last Airbender',
    "imageUrl": Assets.atla,
    "color": Colors.orange,
    "titleImageUrl": Assets.atlaTitle,
  },
  {
    "name": 'The Crown',
    "imageUrl": Assets.crown,
    "color": Colors.red,
    "titleImageUrl": Assets.crownTitle,
  },
  {
    "name": 'The Umbrella Academy',
    "imageUrl": Assets.umbrellaAcademy,
    "color": Colors.yellow,
    "titleImageUrl": Assets.umbrellaAcademyTitle,
  },
  {
    "name": 'Carole and Tuesday',
    "imageUrl": Assets.caroleAndTuesday,
    "color": Colors.lightBlueAccent,
    "titleImageUrl": Assets.caroleAndTuesdayTitle,
  },
  {
    "name": 'Black Mirror',
    "imageUrl": Assets.blackMirror,
    "color": Colors.green,
    "titleImageUrl": Assets.blackMirrorTitle,
  },
];

final List<Content> myList =
    myListData.map((data) => Content.fromJson(data)).toList();
final myListData = [
  {"name": 'Violet Evergarden', "imageUrl": Assets.violetEvergarden},
  {"name": 'How to Sell Drugs Online (Fast)', "imageUrl": Assets.htsdof},
  {"name": 'Kakegurui', "imageUrl": Assets.kakegurui},
  {"name": 'Carole and Tuesday', "imageUrl": Assets.caroleAndTuesday},
  {"name": 'Black Mirror', "imageUrl": Assets.blackMirror},
  {"name": 'Violet Evergarden', "imageUrl": Assets.violetEvergarden},
  {"name": 'How to Sell Drugs Online (Fast)', "imageUrl": Assets.htsdof},
  {"name": 'Kakegurui', "imageUrl": Assets.kakegurui},
  {"name": 'Carole and Tuesday', "imageUrl": Assets.caroleAndTuesday},
  {"name": 'Black Mirror', "imageUrl": Assets.blackMirror},
];

final List<Content> originals =
    originalsData.map((data) => Content.fromJson(data)).toList();
final originalsData = [
  {"name": 'Stranger Things', "imageUrl": Assets.strangerThings},
  {"name": 'The Witcher', "imageUrl": Assets.witcher},
  {"name": 'The Umbrella Academy', "imageUrl": Assets.umbrellaAcademy},
  {"name": '13 Reasons Why', "imageUrl": Assets.thirteenReasonsWhy},
  {"name": 'The End of the F***ing World', "imageUrl": Assets.teotfw},
  {"name": 'Stranger Things', "imageUrl": Assets.strangerThings},
  {"name": 'The Witcher', "imageUrl": Assets.witcher},
  {"name": 'The Umbrella Academy', "imageUrl": Assets.umbrellaAcademy},
  {"name": '13 Reasons Why', "imageUrl": Assets.thirteenReasonsWhy},
  {"name": 'The End of the F***ing World', "imageUrl": Assets.teotfw},
];

final List<Content> trending =
    trendingData.map((data) => Content.fromJson(data)).toList();
final trendingData = [
  {"name": 'Explained', "imageUrl": Assets.explained},
  {"name": 'Avatar The Last Airbender', "imageUrl": Assets.atla},
  {"name": 'Tiger King', "imageUrl": Assets.tigerKing},
  {"name": 'The Crown', "imageUrl": Assets.crown},
  {"name": 'Dogs', "imageUrl": Assets.dogs},
  {"name": 'Explained', "imageUrl": Assets.explained},
  {"name": 'Avatar The Last Airbender', "imageUrl": Assets.atla},
  {"name": 'Tiger King', "imageUrl": Assets.tigerKing},
  {"name": 'The Crown', "imageUrl": Assets.crown},
  {"name": 'Dogs', "imageUrl": Assets.dogs},
];
