import 'package:dartz/dartz.dart';
import 'package:netflix_ui/Domain/core/failurs/main_failure.dart';
import 'package:netflix_ui/Domain/search/models/search_respo/search_respo.dart';

abstract class SearchService {
  Future<Either<Mainfailure, SearchRespo>> searchMovies({
    required String movieQuery,
  });
}
