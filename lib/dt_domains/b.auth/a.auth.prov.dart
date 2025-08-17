part of '_index.dart';

class AuthProv {
  final rxRandom = RM.inject<int>(
    () => 0,
    autoDisposeWhenNotUsed: false,
    sideEffects: SideEffects(onSetState: (p0) => _sv.onSetState()),
  );

  final rxUser = RM.injectStream<User?>(
    () => FirebaseAuth.instance.authStateChanges(),
    sideEffects: SideEffects.onData((data) => _sv.responseAuthState(data)),
  );
}
