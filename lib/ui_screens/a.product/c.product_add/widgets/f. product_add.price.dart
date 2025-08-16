part of '../_index.dart';

class ProductAddPrice extends StatelessWidget {
  const ProductAddPrice({super.key});

  @override
  Widget build(BuildContext context) {
    return OnFormBuilder(
      listenTo: _dt.rxForm,
      builder: () => TextField(
        controller: _dt.rxPrice.controller,
        decoration: InputDecoration(border: OutlineInputBorder(), labelText: 'Price', errorText: _dt.rxPrice.error),
      ),
    );
  }
}
