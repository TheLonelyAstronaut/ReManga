import 'package:floor/floor.dart';
import 'package:remanga/core/model/title/preview/title_preview.dart';

@dao
abstract class TitlePreviewDao {
  @Query('SELECT * FROM TitlePreview')
  Future<List<TitlePreview>> findAllPersons();

  @Query('SELECT * FROM TitlePreview WHERE id = :id')
  Stream<TitlePreview?> findPersonById(int id);

  @insert
  Future<void> insertPerson(TitlePreview person);
}