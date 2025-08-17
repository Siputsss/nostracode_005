part of '_index.dart';

class ProductRepoMock implements ProductRepo {
  @override
  int giveNewRandom() {
    final x = Random().nextInt(100);
    logz.wtf('random value coming from ProductRepoMock');
    return x;
  }

  @override
  Future<void> createDoc(Product product) {
    throw UnimplementedError();
  }

  @override
  deleteDoc(String id) {
    throw UnimplementedError();
  }

  @override
  Future<List<Product>> getColl() {
    throw UnimplementedError();
  }

  @override
  Future<Product?> getDoc() {
    throw UnimplementedError();
  }

  @override
  Future<void> updateDoc(Product productEdit) {
    throw UnimplementedError();
  }
}
