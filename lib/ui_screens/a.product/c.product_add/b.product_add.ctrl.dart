part of '_index.dart';

class ProductAddCtrl {
  init() => logxx.i(ProductAddCtrl, '...');

  increaseCounter() => _dt.rxCounter.setState((s) => s + 1);

  updateRandom() => Serv.sample.updateRandom();

  Future<void> createDoc() async {
    final id = UniqueKey().toString();
    final product = Product(
      id: id,
      brand: _dt.rxBrand.value,
      model: _dt.rxModel.value,
      year: int.parse(_dt.rxYear.value),
      price: int.parse(_dt.rxPrice.value),
      createdAt: DateTime.now().toString(),
      imageUrl: await _sv.uploadImage(id),
    );
    await _sv.createDoc(product);
    nav.back();
  }

  Future<XFile?> pickImage() async {
    _dt.rxPickedImage.st = await ImagePicker().pickImage(source: ImageSource.gallery);

    debugPrint(_dt.rxPickedImage.st?.mimeType);
    debugPrint(_dt.rxPickedImage.st?.name);
    debugPrint(_dt.rxPickedImage.st?.path);

    return _dt.rxPickedImage.st;
  }

  submit() async => _dt.rxForm.submit();
}
