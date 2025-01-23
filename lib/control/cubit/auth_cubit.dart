import 'package:bloc/bloc.dart';
import 'package:chatapp/control/states/auth_state.dart';
import 'package:firebase_auth/firebase_auth.dart';

class authCubit extends Cubit<AuthState> {
  authCubit() : super(InitialAuthState());

  //for login method

  void Loginmethod({required String userEmail, required String userPassword}) {
    emit(LoadingAuthState());
    try {
      FirebaseAuth.instance
          .signInWithEmailAndPassword(email: userEmail, password: userPassword);
      emit(SuccessAuthState());
      print('user login successfuly, welcom back ');
    } catch (e) {
      emit(FailurAuthState(error: e.toString()));
      print(e);
    }
  }
}
