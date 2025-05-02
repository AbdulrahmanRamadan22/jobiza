// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:jobes/core/networking/api_error_handler.dart';
import 'package:jobes/core/networking/api_result.dart';
import 'package:jobes/core/networking/api_services.dart';
import 'package:jobes/featuers/auth/otp_screen/data/model/otp_requast.dart';
import 'package:jobes/featuers/auth/otp_screen/data/model/otp_response.dart';

import '../../../forget_password_screen/data/models/forget_pass_requaset.dart';
import '../../../forget_password_screen/data/models/forget_pass_response.dart';

class OtpRepo {
  final ApisServices _apiServices;
  OtpRepo(
    this._apiServices,
  );

  Future<ApiResult<OtpResponse>> otpValid(
    OtpRequestCode otpRequestCode,
  ) async {
    try {
      final response = await _apiServices.otpValid(otpRequestCode);

      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
  

  /// send new otp to email
   Future<ApiResult<ForgetPasswordResponse>> resetSentOpt(
    ForgetPassRequaset forgetPasswordRequaset,
  ) async {
    try {
      final response =
          await _apiServices.forgetpassword(forgetPasswordRequaset);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }


}
