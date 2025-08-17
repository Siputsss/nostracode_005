part of '../_index.dart';

class ProductDetailAppbar extends StatelessWidget {
  const ProductDetailAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(centerTitle: true, title: OnReactive(() => Text(_dt.rxTitle.st)));
  }
}
