part of '../_index.dart';

class ProductAddModel extends StatelessWidget {
  const ProductAddModel({super.key});

  @override
  Widget build(BuildContext context) {
    return OnFormBuilder(
      listenTo: _dt.rxForm,
      builder: () => TextField(
        controller: _dt.rxModel.controller,
        decoration: InputDecoration(border: OutlineInputBorder(), labelText: 'Model', errorText: _dt.rxModel.error),
      ),
    );
  }
}
