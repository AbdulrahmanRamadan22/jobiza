// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobes/featuers/auth/register_screen/data/model/sign_up_requaste.dart';
import 'package:jobes/featuers/auth/register_screen/data/repo/sign_up_repo.dart';
import 'package:jobes/featuers/auth/register_screen/logic/cubit/sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  final SignUpRepo _signUpRepo;
  SignUpCubit(this._signUpRepo) : super(const SignUpState.initial());
  final formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController fullNameController = TextEditingController();
  void emitSignUp() async {
    emit(const SignUpState.loading());
    final response = await _signUpRepo.signUp(SignUpRequaste(
      email: emailController.text,
      password: passwordController.text,
      passwordConfirmation: passwordController.text,
      fullName: fullNameController.text,
    ));
    response.when(
      success: (signUpResponse) {
        emit(SignUpState.success(signUpResponse));
      },
      failure: (error) {
        emit(SignUpState.failure(error));
      },
    );
  }
}
