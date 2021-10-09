import 'package:injectable/injectable.dart';
import 'package:remanga/features/title/data/title_repository.dart';

@Singleton(as: TitleRepository)
class TitleRepositoryImpl extends TitleRepository {
  @override
  Future<String> getTopThirty() async {
    await Future.delayed(Duration(milliseconds: 100));

    return 'Meh';
  }
}
