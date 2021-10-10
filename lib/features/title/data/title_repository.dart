import 'package:remanga/core/model/title/preview/title_preview.dart';
import 'package:rxdart/rxdart.dart';

abstract class TitleRepository {
  Stream<List<TitlePreview>> getTopThirty();
}
