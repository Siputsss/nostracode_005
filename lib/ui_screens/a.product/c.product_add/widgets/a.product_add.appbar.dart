part of '../_index.dart';

class ProductAddAppbar extends StatelessWidget {
  const ProductAddAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(centerTitle: true, title: OnReactive(() => Text(_dt.rxTitle.st)));
  }
}
