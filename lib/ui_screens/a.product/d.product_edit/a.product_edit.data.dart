part of '_index.dart';

class ProductEditData {
  final rxTitle = 'Product Edit'.inj();

  final rxCounter = 0.inj();

  final rxRandom = Prov.sample.st.rxRandom;

  final rxProductDetail = _pv.rxProductDetail;

  final rxPickedImage = RM.inject<XFile?>(() => null);

  final rxForm = RM.injectForm(
    autovalidateMode: AutovalidateMode.onUserInteraction,
    submit: () async => _ct.updateDoc(),
  );

  final rxBrand = RM.inject(
    () =>
        RM.injectTextEditing(validators: [Validate.isNotEmpty, Validate.fullName], text: _dt.rxProductDetail.st!.brand),
  );

  final rxModel = RM.inject(
    () =>
        RM.injectTextEditing(validators: [Validate.isNotEmpty, Validate.fullName], text: _dt.rxProductDetail.st!.model),
  );

  final rxYear = RM.inject(
    () => RM.injectTextEditing(
      validators: [Validate.isNotEmpty, Validate.isNumeric],
      text: '${_dt.rxProductDetail.st!.year}',
    ),
  );

  final rxPrice = RM.inject(
    () => RM.injectTextEditing(
      validators: [Validate.isNotEmpty, Validate.isNumeric],
      text: '${_dt.rxProductDetail.st!.price}',
    ),
  );
}
