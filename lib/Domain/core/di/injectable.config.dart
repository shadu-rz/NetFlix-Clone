// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:netflix_ui/Application/downloads/downloads_bloc.dart' as _i9;
import 'package:netflix_ui/Application/fast_laugh/fast_laugh_bloc.dart' as _i10;
import 'package:netflix_ui/Application/Home/home_bloc.dart' as _i11;
import 'package:netflix_ui/Application/hot_and%20_new/hot_and_new_bloc.dart' as _i12;
import 'package:netflix_ui/Application/search/search_bloc.dart' as _i13;
import 'package:netflix_ui/Domain/downloads/i_downloads_repo.dart' as _i5;
import 'package:netflix_ui/Domain/hot_and_new_respo/hot_and_new_services.dart' as _i3;
import 'package:netflix_ui/Domain/search/search_service.dart' as _i7;
import 'package:netflix_ui/Infracture/downloads/downloads_repo.dart' as _i6;
import 'package:netflix_ui/Infracture/hot%20_and_new/hot_and_new_impleme.dart' as _i4;
import 'package:netflix_ui/Infracture/search/search_implem.dart' as _i8; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars

// initializes the registration of main-scope dependencies inside of GetIt
_i1.GetIt init(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  gh.lazySingleton<_i3.HotAndNewService>(() => _i4.HotAndNewImplemention());
  gh.lazySingleton<_i5.IDownloadRepo>(() => _i6.DownloadRepository());
  gh.lazySingleton<_i7.SearchService>(() => _i8.SearchImplementaion());
  gh.factory<_i9.DownloadsBloc>(() => _i9.DownloadsBloc(gh<_i5.IDownloadRepo>()));
  gh.factory<_i10.FastLaughBloc>(() => _i10.FastLaughBloc(gh<_i5.IDownloadRepo>()));
  gh.factory<_i11.HomeBloc>(() => _i11.HomeBloc(gh<_i3.HotAndNewService>()));
  gh.factory<_i12.HotAndNewBloc>(() => _i12.HotAndNewBloc(gh<_i3.HotAndNewService>()));
  gh.factory<_i13.SearchBloc>(() => _i13.SearchBloc(
        gh<_i5.IDownloadRepo>(),
        gh<_i7.SearchService>(),
      ));
  return get;
}
