part of '_index.dart';

class ProductAddCtrl {
  init() => logxx.i(ProductAddCtrl, '...');

  increaseCounter() => _dt.rxCounter.setState((s) => s + 1);

  updateRandom() => Serv.sample.updateRandom();

  Future<void> createDoc() async {
    final product = Product(
      id: UniqueKey().toString(),
      brand: _dt.rxBrand.value,
      model: _dt.rxModel.value,
      year: int.parse(_dt.rxYear.value),
      price: int.parse(_dt.rxPrice.value),
      createdAt: DateTime.now().toString(),
    );
    _sv.createDoc(product);
    nav.back();
  }

  submit() async => _dt.rxForm.submit();
}
