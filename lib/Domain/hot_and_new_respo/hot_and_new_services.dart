import 'package:dartz/dartz.dart';
import 'package:netflix_ui/Domain/core/failurs/main_failure.dart';
import 'package:netflix_ui/Domain/hot_and_new_respo/models/hot_and_new_respo.dart';

abstract class HotAndNewService {
  Future<Either<Mainfailure, HotAndNewRespo>> getHotAndNewMovieData();
  Future<Either<Mainfailure, HotAndNewRespo>> getHotAndNewTvData();
}
