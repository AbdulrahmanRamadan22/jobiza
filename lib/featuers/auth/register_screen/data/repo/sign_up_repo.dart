// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:jobes/core/networking/api_error_handler.dart';
import 'package:jobes/core/networking/api_result.dart';
import 'package:jobes/core/networking/api_services.dart';
import 'package:jobes/featuers/auth/register_screen/data/model/sign_up_requaste.dart';
import 'package:jobes/featuers/auth/register_screen/data/model/sign_up_response.dart';

class SignUpRepo {
  final ApisServices _apisServices;
  SignUpRepo(
    this._apisServices,
  );

  Future<ApiResult<SignUpResponse>> signUp(
    SignUpRequaste signUpRequaste,
  ) async {
    try {
      final response = await _apisServices.signUp(signUpRequaste);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }
}
