import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobes/featuers/auth/forget_password_screen/data/models/forget_pass_requaset.dart';
import 'package:jobes/featuers/auth/forget_password_screen/data/repo/forget_pass.dart';
import 'package:jobes/featuers/auth/forget_password_screen/logic/cubit/forget_pass_state.dart';

class ForgetPassCubit extends Cubit<ForgetPassState> {
  final ForgetPasswordRepo _forgetPasswordRepo;
  ForgetPassCubit(this._forgetPasswordRepo)
      : super(const ForgetPassState.initial());
  final formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();

  void emitForgetPassword() async {
    emit(const ForgetPassState.loading());
    final response =
        await _forgetPasswordRepo.forgetPassword(ForgetPassRequaset(
      email: emailController.text,
    ));
    response.when(
      success: (forgetPassResponse) {
        emit(ForgetPassState.success(forgetPassResponse, emailController.text));
      },
      failure: (error) {
        emit(ForgetPassState.failure(error));
      },
    );
  }
}
