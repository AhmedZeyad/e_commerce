import 'package:e_commerce/features/signup/logic/cubit/sign_up_cubit.dart';

import '../../features/login/data/repo/login_rebo.dart';
import '../../features/login/data/webservice/login_webService.dart';
import '../../features/login/logic/cubit/login_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
setUpGetIt() {
  //? auth
  getIt.registerLazySingleton<LoginWebservice>(
    () => LoginWebservice(),
  );
  getIt.registerLazySingleton<LoginRebo>(
    () => LoginRebo(
      authWebservice: getIt(),
    ),
  );

  getIt.registerFactory<LoginCubit>(() => LoginCubit(authRebo: getIt()));


  // sign up
  //  getIt.registerLazySingleton<LoginWebservice>(
  //   () => LoginWebservice(),
  // );
  // getIt.registerLazySingleton<LoginRebo>(
  //   () => LoginRebo(
  //     authWebservice: getIt(),
  //   ),
  // );

  getIt.registerFactory<SignUpCubit>(() => SignUpCubit());
}
