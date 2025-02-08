import 'package:e_commerce/features/signup/data/repo/signup_repo.dart';
import 'package:e_commerce/features/signup/data/webservice/signup_webservice.dart';
import 'package:e_commerce/features/signup/logic/cubit/sign_up_cubit.dart';

import '../../features/login/data/repo/login_rebo.dart';
import '../../features/login/data/webservice/login_webservice.dart';
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
   getIt.registerLazySingleton<SignupWebservice>(
    () => SignupWebservice(),
  );
  getIt.registerLazySingleton<SignupRepo>(
    () => SignupRepo(
      signupWebservice: getIt(),
    ),
  );

  getIt.registerFactory<SignUpCubit>(() => SignUpCubit(signupRepo: getIt() ));
}
