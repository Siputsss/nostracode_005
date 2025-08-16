part of '../_index.dart';

class ProductAddBrand extends StatelessWidget {
  const ProductAddBrand({super.key});

  @override
  Widget build(BuildContext context) {
    return OnFormBuilder(
      listenTo: _dt.rxForm,
      builder: () => TextField(
        controller: _dt.rxBrand.controller,
        decoration: InputDecoration(border: OutlineInputBorder(), labelText: 'Brand', errorText: _dt.rxBrand.error),
      ),
    );
  }
}
