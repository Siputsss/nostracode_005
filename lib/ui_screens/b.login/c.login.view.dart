part of '_index.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(preferredSize: Size.fromHeight(56), child: LoginAppbar()),
      // floatingActionButton: LoginFab(),
      body: Center(
        child: SizedBox(
          width: 450,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              OnFormBuilder(
                listenTo: _dt.rxForm,
                builder: () => TextField(
                  controller: _dt.rxEmail.controller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
                    labelText: 'Email',
                    hintText: 'name@gmail.com',
                    errorText: _dt.rxEmail.error,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              OnFormBuilder(
                listenTo: _dt.rxForm,
                builder: () => TextField(
                  obscureText: true,
                  controller: _dt.rxPassword.controller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
                    labelText: 'Password',
                    hintText: 'password',
                    errorText: _dt.rxPassword.error,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              OnFormSubmissionBuilder(
                listenTo: _dt.rxForm,
                onSubmitting: () => CircularProgressIndicator(),
                child: ElevatedButton(
                  onPressed: () {
                    _ct.submit();
                  },
                  child: Text("Submit"),
                ),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  _ct.signInAnonymous();
                },
                child: Text("Sign In Anonymous"),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  _ct.signInByGoogle();
                },
                child: Text("Sign In by Google"),
              ),
              const SizedBox(height: 10),
              TextButton(
                onPressed: () => nav.toReplacement(Routes.register),
                child: Text("Don't have account? Sign Up"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
