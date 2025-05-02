import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:jobes/core/cache/constants.dart';
import 'package:jobes/core/cache/shared_pref.dart';
import 'package:jobes/featuers/auth/login_screen/data/model/login_request.dart';
import 'package:jobes/featuers/auth/login_screen/data/model/login_response.dart';
import 'package:jobes/featuers/auth/login_screen/data/repo/login_repo.dart';
import 'package:jobes/featuers/auth/login_screen/logic/cubit/login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;

  LoginCubit(this._loginRepo) : super(const LoginState.initial());
  var formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  void emitLogin() async {
    emit(const LoginState.loading());

    final response = await _loginRepo.login(LoginRequest(
      email: emailController.text,
      password: passwordController.text,
    ));
    response.when(success: (loginResponse) async {
      await saveUserData(loginResponse);

      SharedPrefValues.token =
          await SharedPrefHelper.getSecuredString(key: SharedPrefKeys.token);
      SharedPrefValues.fullName =
          await SharedPrefHelper.getSecuredString(key: SharedPrefKeys.fullName);

      emit(LoginState.success(loginResponse));
    }, failure: (error) {
      emit(LoginState.failure(error));
    });
  }

  Future<void> saveUserData(LoginResponse loginResponse) async {
    SharedPrefHelper.saveSecuredString(
        key: SharedPrefKeys.token,
        value: loginResponse.data.token ?? "Not Found access ");

    SharedPrefHelper.saveData(
        key: SharedPrefKeys.email, value: loginResponse.data.email);
    SharedPrefHelper.saveData(
        key: SharedPrefKeys.fullName, value: loginResponse.data.fullName);
  }
}
