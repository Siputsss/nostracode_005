part of '../_index.dart';

class ProductEditBrand extends StatelessWidget {
  const ProductEditBrand({super.key});

  @override
  Widget build(BuildContext context) {
    return OnFormBuilder(
      listenTo: _dt.rxForm,
      builder: () => TextField(
        controller: _dt.rxBrand.st.controller,
        decoration: InputDecoration(border: OutlineInputBorder(), labelText: 'Brand', errorText: _dt.rxBrand.error),
      ),
    );
  }
}
