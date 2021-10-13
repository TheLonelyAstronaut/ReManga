import 'package:remanga/core/model/chapter_page/chapter_page.dart';

List<dynamic> toFlatList(dynamic value) {
  if(value is List) {
    if(value.length != 0) {
      if(value[0] is List) {
        List<dynamic> list = [];

        value.forEach((element) {
          if(element is List) {
            list += toFlatList(element);
          } else {
            list.add(element);
          }
        });

        return list;
      } else {
        return value;
      }
    }
  }

  return [];
}

List<ChapterPage> toFlatChapterList(dynamic value) {
  var data = toFlatList(value).map((e) => ChapterPage(
      id: e['id'],
      page: e['page'],
      link: e['link'],
      height: e['height'],
      width: e['width'],
      countComments: e['count_comments']
  )).toList();

  return data;
}