part of '_index.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(preferredSize: Size.fromHeight(56), child: LoginAppbar()),
      floatingActionButton: LoginFab(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                _ct.signInAnonymous();
              },
              child: Text("Sign In Anonymous"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(onPressed: () {}, child: Text("Sign In by Google")),
            const SizedBox(height: 20),
            ElevatedButton(onPressed: () {}, child: Text("Create Email & Password")),
            const SizedBox(height: 20),
            ElevatedButton(onPressed: () {}, child: Text("Sign In with Email & Password")),
            const SizedBox(height: 20),
            ElevatedButton(onPressed: () {}, child: Text("Sign Out")),
            const SizedBox(height: 20),
            ElevatedButton(onPressed: () {}, child: Text("Delete Account")),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
