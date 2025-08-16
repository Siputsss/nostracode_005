part of '../_index.dart';

class ProductEditPrice extends StatelessWidget {
  const ProductEditPrice({super.key});

  @override
  Widget build(BuildContext context) {
    return OnFormBuilder(
      listenTo: _dt.rxForm,
      builder: () => TextField(
        controller: _dt.rxPrice.st.controller,
        decoration: InputDecoration(border: OutlineInputBorder(), labelText: 'Price', errorText: _dt.rxPrice.error),
      ),
    );
  }
}
