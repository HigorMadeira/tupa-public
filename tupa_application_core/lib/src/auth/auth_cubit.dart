import 'package:tupa_dependencies_core/tupa_dependencies_core.dart';
import 'package:tupa_domain/tupa_domain.dart';
part 'auth_cubit.freezed.dart';
part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit(
    this._authFacade,
    this._localStorage,
  ) : super(const AuthState.initial());

  final IAuthRepository _authFacade;
  final ILocalStorage _localStorage;
  Future<void> checkLoggedUser() async {
    emit(const AuthState.loading());
    final userOption = await _authFacade.getSignedInUser();
    userOption.fold(
      () async {
        final isSaved = await checkIfIsSaved();
        if (isSaved) {
          loginIfSaved();
        } else {
          emit(const AuthState.unauthenticated());
        }
      },
      (a) => emit(AuthState.authenticated(a)),
    );
  }

  Future<void> signOut() async {
    emit(const AuthState.loading());

    await _authFacade.signOut();

    await _localStorage.remove('saveUser'); //Shared preferences tablet
    emit(const AuthState.unauthenticated());
  }

  Future<void> loginIfSaved() async {
    final isSaved = await checkIfIsSaved();
    if (isSaved) {
      emit(const AuthState.loading());
      final email = await _localStorage.read<String>('email') ?? '';
      final password = await _localStorage.read<String>('password') ?? '';

      await signIn(email, password, isSaved);
    }
  }

  Future<bool> checkIfIsSaved() async {
    final isSaved = await _localStorage.read<bool>('saveUser') ?? false;
    return isSaved;
  }

  Future<Either<AuthFailure, CustomUser>> signIn(
      String email, String password, bool savedUser) async {
    emit(const AuthState.loading());
    await _localStorage.write<bool>('saveUser', savedUser);
    if (savedUser) {
      await Future.wait([
        _localStorage.write<String>('email', email),
        _localStorage.write<String>('password', password),
      ]);
    } else {
      await _localStorage.remove('email');
      await _localStorage.remove('password');
    }

    final signIn = await _authFacade.signIn(email, password);

    signIn.fold(
      (l) => emit(AuthState.failed(l)),
      (r) => emit(AuthState.authenticated(r)),
    );

    return signIn;
  }

  Future<bool> signInWithGoogle(String email, String idToken) async {
    emit(const AuthState.loading());

    final signIn = await _authFacade.signInWithGoogle(email, idToken);
    return signIn.fold(
      (l) {
        // print('erro login' + l.toString());
        emit(AuthState.failed(l));
        return Future.value(false);
      },
      (r) {
        emit(AuthState.authenticatedUserAccount(r));
        return Future.value(true);
      },
    );
  }

  Future<Either<AuthFailure, CustomUser>> signUp(
      AllowedUser allowedUser, String password) async {
    emit(const AuthState.loading());

    final signIn = await _authFacade.signUp(allowedUser, password);
    signIn.fold(
      (l) => emit(
        AuthState.failed(l),
      ),
      (r) => emit(AuthState.authenticated(r)),
    );
    return signIn;
  }
}
