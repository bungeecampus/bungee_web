import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(initialState, TextEditingController emailController, TextEditingController passwordController) : super(initialState);




}
abstract class LoginState {}

class LoginInitialState extends LoginState {

}

class LoginProgressState extends LoginState {

}

class LoginCompletedState extends LoginState {

}

class LoginErrorState extends LoginState {
  
}