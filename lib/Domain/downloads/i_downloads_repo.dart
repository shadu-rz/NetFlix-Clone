import 'package:netflix_ui/Domain/core/failurs/main_failure.dart';
import 'package:netflix_ui/Domain/downloads/models/downloads.dart';
import 'package:dartz/dartz.dart';

abstract class IDownloadRepo {
  Future<Either<Mainfailure, List<Downloads>>> getdownloadsImages();
}
