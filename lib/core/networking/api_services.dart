//
import 'package:dio/dio.dart';
import 'package:jobes/core/networking/api_consttants.dart';
import 'package:jobes/featuers/auth/forget_password_screen/data/models/forget_pass_requaset.dart';
import 'package:jobes/featuers/auth/forget_password_screen/data/models/forget_pass_response.dart';
import 'package:jobes/featuers/auth/login_screen/data/model/login_request.dart';
import 'package:jobes/featuers/auth/login_screen/data/model/login_response.dart';
import 'package:jobes/featuers/auth/otp_screen/data/model/otp_requast.dart';
import 'package:jobes/featuers/auth/otp_screen/data/model/otp_response.dart';
import 'package:jobes/featuers/auth/register_screen/data/model/sign_up_requaste.dart';
import 'package:jobes/featuers/auth/register_screen/data/model/sign_up_response.dart';
import 'package:jobes/featuers/auth/reset_password_screen/data/model/reset_passwoed_response.dart';
import 'package:jobes/featuers/auth/reset_password_screen/data/model/reset_password_requast.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/error_logger.dart';

part 'api_services.g.dart';

@RestApi(baseUrl: ApiConstan.apiBaseUrl)
abstract class ApisServices {
  factory ApisServices(Dio dio, {String baseUrl}) = _ApisServices;
// sign up service
  @POST(ApiConstan.register)
  Future<SignUpResponse> signUp(
    @Body() SignUpRequaste signUpRequaste,
  );
  // login service
  @POST(ApiConstan.login)
  Future<LoginResponse> login(
    @Body() LoginRequest loginRequest,
  );
  // forgot password service

  @POST(ApiConstan.forgetPassword)
  Future<ForgetPasswordResponse> forgetpassword(
    @Body() ForgetPassRequaset forgetPassRequaset,
  );
  // otp valid service
  @POST(ApiConstan.otpCode)
  Future<OtpResponse> otpValid(
    @Body() OtpRequestCode otpRequestCode,
  );
  // reset password service otp
  @POST(ApiConstan.resetPassword)
  Future<ResetPasswordResponse> resetPasswordValied(
    @Header("Authorization") String token,
    @Body() ResetPasswordRequest resetPasswordRequest,
  );
// get company info
  // @GET(ApiConstan.getCompanyInfo)
  // Future<dynamic> getCompanyInfo(
  //   @Header("Authorization") String token,
  // );
}
