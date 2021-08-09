import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'login_cubit.dart';

class LoginView extends StatelessWidget {
  final GlobalKey<FormState> formKey = GlobalKey();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(
        formKey,
        emailController,
        passwordController,
      ),
      child: BlocConsumer<LoginCubit, LoginState>(
        listener: (context, state) {

        },
        builder: (context, state) {
          return buildScaffold(context, state);
        },
      ),
    );
  }

  Widget buildScaffold(BuildContext context, LoginState state) {
    return Scaffold(
      appBar: AppBar(),
    );
  }
}