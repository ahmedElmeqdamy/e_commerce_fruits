import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/features/auth/presentation/manager/cubits/signin_cubit/signin_state.dart';

import '../../../../domain/repo/auth_repo.dart';

class SignInCubit extends Cubit<SignInState>{
  SignInCubit(this.authRepo) : super(SignInInitial());
  final AuthRepo authRepo;

  Future<void> signInUser({
    required String email,
    required String password,
  }) async {
    emit(SignInLoading());
    final result = await authRepo.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    result.fold(
      (error) => emit(SignInFailure(errorMessage: error.message)),
      (userEntity) => emit(SignInSuccess(userEntity: userEntity)),
    );
  }

Future<void> signInWithFacebook() async {
    emit(SignInLoading());
    final result = await authRepo.signInWithFacebook();
    result.fold(
      (error) => emit(SignInFailure(errorMessage: error.message)),
      (userEntity) => emit(SignInSuccess(userEntity: userEntity)),
    );

    print('facebook error is $result');
  }


  Future<void> signInWithGoogle() async {
    emit(SignInLoading());
    final result = await authRepo.signInWithGoogle();
    result.fold(
          (error) => emit(SignInFailure(errorMessage: error.message)),
          (userEntity) => emit(SignInSuccess(userEntity: userEntity)),
    );

    print('google error is $result');
  }

}