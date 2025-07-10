// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:logger/logger.dart' as _i974;
import 'package:rss_news_app/common/di/app_module.dart' as _i1070;
import 'package:rss_news_app/common/di/dio_interceptor.dart' as _i581;
import 'package:rss_news_app/common/di/network_module.dart' as _i321;
import 'package:rss_news_app/common/di/storage.dart' as _i206;
import 'package:rss_news_app/common/widgets/display/display.dart' as _i60;
import 'package:rss_news_app/common/widgets/display/display_impl.dart' as _i121;
import 'package:rss_news_app/data/main/main_api.dart' as _i356;
import 'package:rss_news_app/data/main/main_repo_impl.dart' as _i380;
import 'package:rss_news_app/data/user/user_api.dart' as _i700;
import 'package:rss_news_app/data/user/user_repo_impl.dart' as _i824;
import 'package:rss_news_app/domain/repo/main_repo.dart' as _i930;
import 'package:rss_news_app/domain/repo/user_repo.dart' as _i774;
import 'package:rss_news_app/domain/service/colors/theme_colors.dart' as _i977;
import 'package:rss_news_app/presentation/main/cubit/main_cubit.dart' as _i69;
import 'package:rss_news_app/presentation/splash/cubit/splash_cubit.dart'
    as _i9;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final appModule = _$AppModule();
    final networkModule = _$NetworkModule();
    gh.factory<_i9.SplashCubit>(() => _i9.SplashCubit());
    await gh.lazySingletonAsync<_i206.Storage>(
      () => _i206.Storage.create(),
      preResolve: true,
    );
    gh.lazySingleton<_i974.Logger>(() => appModule.logger);
    gh.lazySingleton<_i977.ThemeColors>(() => _i977.ThemeColors());
    gh.singleton<_i60.Display>(() => _i121.DisplayImpl());
    gh.lazySingleton<_i581.DioInterceptor>(
        () => _i581.DioInterceptor(gh<_i206.Storage>()));
    gh.factory<_i361.Dio>(() => networkModule.dio(gh<_i581.DioInterceptor>()));
    gh.factory<_i700.UserApi>(() => _i700.UserApi(gh<_i361.Dio>()));
    gh.factory<_i356.MainApi>(() => _i356.MainApi(gh<_i361.Dio>()));
    gh.factory<_i774.UserRepo>(() => _i824.UserRepoImpl(gh<_i700.UserApi>()));
    gh.factory<_i930.MainRepo>(() => _i380.MainRepoImpl(
          gh<_i206.Storage>(),
          gh<_i356.MainApi>(),
        ));
    gh.factory<_i69.MainCubit>(() => _i69.MainCubit(gh<_i930.MainRepo>()));
    return this;
  }
}

class _$AppModule extends _i1070.AppModule {}

class _$NetworkModule extends _i321.NetworkModule {}
