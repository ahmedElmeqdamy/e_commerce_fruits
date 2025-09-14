import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/features/auth/presentation/views/widgets/sign_in_view_body.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

import '../../manager/cubits/signin_cubit/signin_cubit.dart';
import '../../manager/cubits/signin_cubit/signin_state.dart';

class SignInViewBodyBlocConsumer extends StatelessWidget {
  const SignInViewBodyBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInCubit, SignInState>(
      listener: (context, state) {
        if (state is SignInSuccess) {
          Navigator.pushNamed(context, 'homeView');
      log('ahmed');
        } else if (state is SignInFailure) {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: Text("Sign In Failed"),
              content: Text(state.errorMessage),
              actions: [
                TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: const Text("OK"),
                ),
              ],
            ),
          );
          //ScaffoldMessenger.of(
          //context,
          //).showSnackBar(SnackBar(content: Text(state.errorMessage)));
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
          //progressIndicator: to custom widget like CircularProgressIndicator(),
          inAsyncCall: state is SignInLoading ? true : false,
          child: SignInViewBody(),
        );
      },
    );
  }
}
