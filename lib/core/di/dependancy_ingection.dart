import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:jobes/core/networking/api_factory.dart';
import 'package:jobes/core/networking/api_services.dart';
import 'package:jobes/featuers/auth/forget_password_screen/data/repo/forget_pass.dart';
import 'package:jobes/featuers/auth/login_screen/data/repo/login_repo.dart';
import 'package:jobes/featuers/auth/otp_screen/data/repo/otp_repo.dart';
import 'package:jobes/featuers/auth/register_screen/data/repo/sign_up_repo.dart';
import 'package:jobes/featuers/auth/reset_password_screen/data/repo/reset_password_repo.dart';

final getIt = GetIt.instance;
Future<void> setupGetIt() async {
  // dio and ApiServices
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApisServices>(() => ApisServices(dio));
  // sign up
  getIt.registerLazySingleton<SignUpRepo>(() => SignUpRepo(getIt()));
  // login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  // forget password
  getIt.registerLazySingleton<ForgetPasswordRepo>(
      () => ForgetPasswordRepo(getIt()));
  // otp
  getIt.registerLazySingleton<OtpRepo>(() => OtpRepo(getIt()));
  // reset password
  getIt.registerLazySingleton<ResetPasswordRepo>(
      () => ResetPasswordRepo(getIt()));
}
