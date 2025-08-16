part of '_index.dart';

class ProductEditCtrl {
  init() => logxx.i(ProductEditCtrl, '...');

  increaseCounter() => _dt.rxCounter.setState((s) => s + 1);

  updateRandom() => Serv.sample.updateRandom();

  Future<void> updateDoc() async {
    final productEdit = Product(
      id: _dt.rxProductDetail.st!.id,
      brand: _dt.rxBrand.st.value,
      model: _dt.rxModel.st.value,
      year: int.parse(_dt.rxYear.st.value),
      price: int.parse(_dt.rxPrice.st.value),
      createdAt: _dt.rxProductDetail.st!.createdAt,
      updatedAt: DateTime.now().toString(),
    );
    _sv.updateDoc(productEdit);
    nav.back();
  }

  submit() async => _dt.rxForm.submit();
}
