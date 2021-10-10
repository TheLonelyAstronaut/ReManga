import 'dart:async';
import 'package:floor/floor.dart';
import 'package:remanga/core/data/dao/title_preview/title_preview_dao.dart';
import 'package:remanga/core/model/title/preview/title_preview.dart';
import 'package:sqflite/sqflite.dart' as sqflite;

//part 'database.g.dart'; // the generated code will be there

//@Database(version: 1, entities: [TitlePreview])
abstract class AppDatabase extends FloorDatabase {
  TitlePreviewDao get titlePreviewDao;
}