// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:nutri_mind/application/injections/foundation.module.dart'
    as _i1039;
import 'package:nutri_mind/application/routing/app_router.dart' as _i969;
import 'package:nutri_mind/domain/services/navigation_service.dart' as _i348;
import 'package:nutri_mind/foundation/theme/colors.dart' as _i767;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final foundationModule = _$FoundationModule();
    gh.singleton<_i969.AppRouter>(() => foundationModule.appRouter());
    gh.lazySingleton<_i767.AppColors>(() => foundationModule.appColors());
    gh.singleton<_i348.NavigationService>(
      () => foundationModule.navigationService(gh<_i969.AppRouter>()),
    );
    return this;
  }
}

class _$FoundationModule extends _i1039.FoundationModule {}
