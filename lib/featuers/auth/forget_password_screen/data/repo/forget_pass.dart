// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:jobes/core/networking/api_error_handler.dart';
import 'package:jobes/core/networking/api_result.dart';
import 'package:jobes/core/networking/api_services.dart';
import 'package:jobes/featuers/auth/forget_password_screen/data/models/forget_pass_requaset.dart';
import 'package:jobes/featuers/auth/forget_password_screen/data/models/forget_pass_response.dart';

class ForgetPasswordRepo {
  final ApisServices apisServices;
  ForgetPasswordRepo(
    this.apisServices,
  );

  Future<ApiResult<ForgetPasswordResponse>> forgetPassword(
    ForgetPassRequaset forgetPasswordRequaset,
  ) async {
    try {
      final response =
          await apisServices.forgetpassword(forgetPasswordRequaset);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }
}
