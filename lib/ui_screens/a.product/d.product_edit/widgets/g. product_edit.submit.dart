part of '../_index.dart';

class ProductEditSubmit extends StatelessWidget {
  const ProductEditSubmit({super.key});

  @override
  Widget build(BuildContext context) {
    return OnFormSubmissionBuilder(
      listenTo: _dt.rxForm,
      onSubmitting: () => CircularProgressIndicator(),
      child: ElevatedButton(
        onPressed: () {
          _ct.submit();
        },
        child: Text("Submit"),
      ),
    );
  }
}
