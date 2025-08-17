part of '../_index.dart';

class RegisterAppbar extends StatelessWidget {
  const RegisterAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: AppBar(centerTitle: true, title: OnReactive(() => Text(_dt.rxTitle.st))));
  }
}
