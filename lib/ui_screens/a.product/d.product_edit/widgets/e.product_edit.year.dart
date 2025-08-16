part of '../_index.dart';

class ProductEditYear extends StatelessWidget {
  const ProductEditYear({super.key});

  @override
  Widget build(BuildContext context) {
    return OnFormBuilder(
      listenTo: _dt.rxForm,
      builder: () => TextField(
        controller: _dt.rxYear.st.controller,
        decoration: InputDecoration(border: OutlineInputBorder(), labelText: 'Year', errorText: _dt.rxYear.error),
      ),
    );
  }
}
