import 'package:fatto/exports.dart';
import 'package:fatto/features/Auth/login/presentation/logic/login_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());
  static LoginCubit get(context) => BlocProvider.of(context);
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey formKey = GlobalKey<FormState>();
  bool isObscure = false;
  void changeSuffixIcon({required bool isObscured}) {
    isObscure = !isObscured;
    emit(ChangeSuffixIcon());
  }
}
