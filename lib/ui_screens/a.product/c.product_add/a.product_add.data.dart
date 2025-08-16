part of '_index.dart';

class ProductAddData {
  final rxTitle = 'Product Add'.inj();

  final rxCounter = 0.inj();

  final rxRandom = Prov.sample.st.rxRandom;

  final rxPickedImage = _pv.rxPickedImage;

  final rxForm = RM.injectForm(
    autovalidateMode: AutovalidateMode.onUserInteraction,
    submit: () async => _ct.createDoc(),
  );

  final rxBrand = RM.injectTextEditing(validators: [Validate.isNotEmpty, Validate.fullName]);
  final rxModel = RM.injectTextEditing(validators: [Validate.isNotEmpty, Validate.fullName]);
  final rxYear = RM.injectTextEditing(validators: [Validate.isNotEmpty, Validate.isNumeric]);
  final rxPrice = RM.injectTextEditing(validators: [Validate.isNotEmpty, Validate.isNumeric]);
}
