part of '_index.dart';

class ProductListCtrl {
  init() => logxx.i(ProductListCtrl, '...');

  increaseCounter() => _dt.rxCounter.setState((s) => s + 1);

  updateRandom() => Serv.sample.updateRandom();

  Future<List<Product>> getColl() async {
    return _sv.getColl();
  }

  readList() {
    _sv.readList();
  }

  Future<Product?> getDoc(String id) async {
    return _sv.getDoc(id);
  }

  readDoc(String id) {
    _sv.readDoc(id);
  }

  Future<void> createDoc() async {
    _sv.createDoc();
  }

  Future<void> updateDoc(Product product) async {
    _sv.updateDoc(product);
  }

  deleteDoc(String id) async {
    _sv.deleteDoc(id);
  }
}
