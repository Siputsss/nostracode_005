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

  deleteDoc(String id) async {
    _sv.deleteDoc(id);
  }

  Future<void> signOut() async {
    _sva.signOut();
  }

  Future<void> deleteAccount() async {
    _sva.deleteAccount();
  }
}
