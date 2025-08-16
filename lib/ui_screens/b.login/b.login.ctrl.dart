part of '_index.dart';

class LoginCtrl {
  init() => logxx.i(LoginCtrl, '...');

  increaseCounter() => _dt.rxCounter.setState((s) => s + 1);

  updateRandom() => Serv.sample.updateRandom();

  Future<UserCredential> signInAnonymous() async {
    final anon = await FirebaseAuth.instance.signInAnonymously();
    debugPrint(anon.user.toString());
    return anon;
  }

  Future<UserCredential?> signInByGoogle() async {
    UserCredential? google;
    try {
      GoogleAuthProvider provider = GoogleAuthProvider().setCustomParameters({});
      final google = await FirebaseAuth.instance.signInWithPopup(provider);
      debugPrint(google.user.toString());
    } catch (e) {
      debugPrint(e.toString());
    }
    return google;
  }

  Future<UserCredential> createEP() async {
    final create = await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: 'nostra@gmail.com',
      password: '1234567',
    );
    debugPrint(create.user.toString());
    return create;
  }

  Future<UserCredential> signInEP() async {
    final signInEP = await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: 'nostra@gmail.com',
      password: '1234567',
    );
    debugPrint(signInEP.user.toString());
    return signInEP;
  }

  Future<void> signOut() async {
    FirebaseAuth.instance.signOut();
    debugPrint('you already sign out');
  }
}
