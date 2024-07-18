import 'package:e_commerce/features/auth/data/repo/auth_rebo.dart';
import 'package:e_commerce/features/auth/data/webservice/auth_webService.dart';
import 'package:e_commerce/features/auth/logic/cubit/auth_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
setUpGetIt() {
  //? auth
  getIt.registerLazySingleton<AuthWebservice>(
    () => AuthWebservice(),
  );
  getIt.registerLazySingleton<AuthRebo>(
    () => AuthRebo(
      authWebservice: getIt(),
    ),
  );

  getIt.registerFactory<AuthCubit>(() => AuthCubit(authRebo: getIt()));
}
