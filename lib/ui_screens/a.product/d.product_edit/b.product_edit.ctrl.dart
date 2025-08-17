part of '_index.dart';

class ProductEditCtrl {
  init() => logxx.i(ProductEditCtrl, '...');

  increaseCounter() => _dt.rxCounter.setState((s) => s + 1);

  updateRandom() => Serv.sample.updateRandom();

  Future<void> updateDoc() async {
    final id = _dt.rxProductDetail.st!.id;
    final productEdit = Product(
      id: id,
      brand: _dt.rxBrand.st.value,
      model: _dt.rxModel.st.value,
      year: int.parse(_dt.rxYear.st.value),
      price: int.parse(_dt.rxPrice.st.value),
      createdAt: _dt.rxProductDetail.st!.createdAt,
      updatedAt: DateTime.now().toString(),
      imageUrl: await _sv.uploadImage(id),
    );
    _sv.updateDoc(productEdit);
    nav.back();
  }

  Future<XFile?> pickImage() async {
    _sv.pickImage();

    return _dt.rxPickedImage.st;
  }

  submit() async => _dt.rxForm.submit();
}
