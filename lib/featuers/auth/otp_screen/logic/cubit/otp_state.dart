import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jobes/core/networking/api_error_model.dart';
import 'package:jobes/featuers/auth/otp_screen/data/model/otp_response.dart';

part 'otp_state.freezed.dart';

@freezed
class OtpState<T> with _$OtpState<T> {
  const factory OtpState.initial() = _Initial;

  /// start state
  const factory OtpState.loading() = Loading;
  const factory OtpState.success(OtpResponse otpResponse) = Success<T>;
  const factory OtpState.error(ApiErrorModel apiErrorModel) = Error;

  // sent new otp to email
  const factory OtpState.resendOtpLoading() = ResendOtpLoading;
  const factory OtpState.resendOtpSuccess(T data) = ResendOtpSuccess<T>;
  const factory OtpState.resendOtpError(ApiErrorModel apiErrorModel) =
      ResendOtpError;
}
