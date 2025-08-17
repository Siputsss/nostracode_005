part of '_index.dart';

class AuthRepo {
  int giveNewRandom() {
    final x = Random().nextInt(100);
    logz.s('random value coming from AuthRepo');
    return x;
  }

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

  Future<UserCredential> createEP(String email, String password) async {
    final create = await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password);
    debugPrint(create.user.toString());
    return create;
  }

  Future<UserCredential> signInEP(String email, String password) async {
    final signInEP = await FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password);
    debugPrint(signInEP.user.toString());
    return signInEP;
  }

  Future<void> signOut() async {
    FirebaseAuth.instance.signOut();
    debugPrint('you already sign out');
  }

  Future<void> deleteAccount() async {
    FirebaseAuth.instance.currentUser?.delete();
    debugPrint('account already deleted');
  }
}
