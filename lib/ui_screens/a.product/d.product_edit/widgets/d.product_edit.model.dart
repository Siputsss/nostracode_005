part of '../_index.dart';

class ProductEditModel extends StatelessWidget {
  const ProductEditModel({super.key});

  @override
  Widget build(BuildContext context) {
    return OnFormBuilder(
      listenTo: _dt.rxForm,
      builder: () => TextField(
        controller: _dt.rxModel.st.controller,
        decoration: InputDecoration(border: OutlineInputBorder(), labelText: 'Model', errorText: _dt.rxModel.error),
      ),
    );
  }
}
