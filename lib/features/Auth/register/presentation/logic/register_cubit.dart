import 'package:fatto/exports.dart';
import 'package:fatto/features/Auth/register/presentation/logic/register_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(RegisterInitial());
  static RegisterCubit get(context) => BlocProvider.of(context);
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  bool isObscure = false;
  void changeSuffixIcon({required bool isObscured}) {
    isObscure = !isObscured;
    emit(ChangeSuffixIcon());
  }
}
