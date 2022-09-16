import 'package:firebase_auth/firebase_auth.dart';
import 'package:weather_app/core/data/error/exceptions/firebase_auth_exception.dart';
import 'package:weather_app/features/auth/core/data/models/user_data.dart';
import 'package:weather_app/generated/l10n.dart';
import 'package:injectable/injectable.dart';

// typedef
abstract class AuthServices {
  Future<User?> login(String email, String password);

  Future<User?> register(UserData userData);

  User? get currentUser;

  Stream<User?> authStateChanges();

  Future<void> logout();
}

typedef SignInMethod = Future<UserCredential> Function();

@LazySingleton(as: AuthServices)
class AuthServicesImpl extends AuthServices {
  final FirebaseAuth _auth;

  AuthServicesImpl(this._auth);

  @override
  Future<User?> login(String email, String password) async {
    try {
      final userAuth = await _auth.signInWithEmailAndPassword(email: email, password: password);
      return userAuth.user;
    } on FirebaseAuthException catch (e) {
      throw _firebaseAuthExceptionHandler(e);
    } catch (e) {
      throw const FirebaseServicesException.unknown(message: "unknown error");
    }
  }

  @override
  Future<User?> register(UserData userData) async {
    try {
      final userAuth = await _auth.createUserWithEmailAndPassword(email: userData.email, password: userData.password);
      return userAuth.user;
    } on FirebaseAuthException catch (e) {
      throw _firebaseAuthExceptionHandler(e);
    } catch (e) {
      throw const FirebaseServicesException.unknown(message: "unknown error");
    }
  }

  @override
  Stream<User?> authStateChanges() => _auth.authStateChanges();

  @override
  User? get currentUser => _auth.currentUser;

  @override
  Future<void> logout() async => await _auth.signOut();

  // internal-error
  // invalid-phone-number
  // phone-number-already-exists
  // user-not-found
  FirebaseServicesException _firebaseAuthExceptionHandler(FirebaseAuthException e) {
    if(e.code == "invalid-phone-number") {
      return FirebaseServicesException.invalidEmail(message: S.current.mobileNumberValidation);
    } else if (e.code == "phone-number-already-exists") {
      return FirebaseServicesException.userAlreadyExists(message: S.current.theEmailIsUsedBefore);
    } else if(e.code == "internal-error") {
      return FirebaseServicesException.internalError(message: e.message ?? "Internal error");
    } else if(e.code == "user-not-found") {
      return FirebaseServicesException.userNotFound(message: S.current.userNotFound);
    } else {
      return FirebaseServicesException.unknown(message: e.message ?? "unknown error");
    }
  }
}
