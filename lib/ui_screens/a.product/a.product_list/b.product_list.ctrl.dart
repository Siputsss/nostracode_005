part of '_index.dart';

class ProductListCtrl {
  init() => logxx.i(ProductListCtrl, '...');

  increaseCounter() => _dt.rxCounter.setState((s) => s + 1);

  updateRandom() => Serv.sample.updateRandom();

  setSelectedId(String id) {
    _sv.setSelectedId(id);
    debugPrint(_dt.rxSelectedId.st);
  }

  readList() {
    _sv.readList();
  }

  readDoc() {
    _sv.readDoc();
  }

  Future<void> updateDoc(Product product) async {
    final productEdit = Product(
      id: product.id,
      brand: 'product edited',
      model: product.model,
      year: 2025,
      price: product.price,
      createdAt: product.createdAt,
      updatedAt: DateTime.now().toString(),
    );
    _sv.updateDoc(productEdit);
  }

  deleteDoc(String id) async {
    _sv.deleteDoc(id);
  }
}
