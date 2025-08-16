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
      year: Random().nextInt(9999),
      price: Random().nextInt(9999),
      createdAt: DateTime.now().toString(),
    );
    _sv.createDoc(product);
    nav.back();
  }

  submit() async => _dt.rxForm.submit();
}
