// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:jobes/core/networking/api_error_handler.dart';
import 'package:jobes/core/networking/api_result.dart';
import 'package:jobes/core/networking/api_services.dart';
import 'package:jobes/featuers/auth/reset_password_screen/data/model/reset_passwoed_response.dart';
import 'package:jobes/featuers/auth/reset_password_screen/data/model/reset_password_requast.dart';

class ResetPasswordRepo {
  final ApisServices _apisServices;

  ResetPasswordRepo(
    this._apisServices,
  );

  Future<ApiResult<ResetPasswordResponse>> resetPasswordValied(
      ResetPasswordRequest resetPasswordRequest,
      {required String token}) async {
    try {
      final response = await _apisServices.resetPasswordValied(
        token,
        resetPasswordRequest,
      );

      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}
