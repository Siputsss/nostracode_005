part of '../_index.dart';

class LoginAppbar extends StatelessWidget {
  const LoginAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: AppBar(centerTitle: true, title: OnReactive(() => Text(_dt.rxTitle.st))));
  }
}
