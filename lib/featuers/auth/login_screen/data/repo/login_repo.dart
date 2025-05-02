
import 'package:jobes/core/networking/api_error_handler.dart';
import 'package:jobes/core/networking/api_result.dart';
import 'package:jobes/core/networking/api_services.dart';
import 'package:jobes/featuers/auth/login_screen/data/model/login_request.dart';
import 'package:jobes/featuers/auth/login_screen/data/model/login_response.dart';

class LoginRepo {
  final ApisServices _apisServices;

  LoginRepo(this._apisServices);
  Future<ApiResult<LoginResponse>> login(
    LoginRequest loginRequest,
  ) async {
    try {
      final response = await _apisServices.login(loginRequest);

      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}
