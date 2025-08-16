part of '../_index.dart';

class ProductAddYear extends StatelessWidget {
  const ProductAddYear({super.key});

  @override
  Widget build(BuildContext context) {
    return OnFormBuilder(
      listenTo: _dt.rxForm,
      builder: () => TextField(
        controller: _dt.rxYear.controller,
        decoration: InputDecoration(border: OutlineInputBorder(), labelText: 'Year', errorText: _dt.rxYear.error),
      ),
    );
  }
}
