part of '_index.dart';

class ProductListCtrl {
  init() => logxx.i(ProductListCtrl, '...');

  increaseCounter() => _dt.rxCounter.setState((s) => s + 1);

  updateRandom() => Serv.sample.updateRandom();

  Future<List<Product>> getColl() async {
    List<Product> product = [];
    final read = await FirebaseFirestore.instance.collection('product').get();
    for (var element in read.docs) {
      product.add(Product.fromMap(element.data()));
    }
    debugPrint(product.toString());
    return product;
  }

  readList() {
    _dt.rxProductList.stateAsync = getColl();
  }

  Future<Product?> getDoc(String id) async {
    final readDoc = await FirebaseFirestore.instance.collection('product').doc(id).get();
    debugPrint(readDoc.data().toString());
    return Product.fromMap(readDoc.data() ?? {});
  }

  readDoc(String id) {
    _dt.rxProductDetail.stateAsync = getDoc(id);
  }

  Future<void> createDoc() async {
    final product = Product(
      id: UniqueKey().toString(),
      brand: generateWordPairs().take(2).join(' '),
      model: generateWordPairs().take(2).join(' '),
      year: Random().nextInt(9999),
      price: Random().nextInt(9999),
      createdAt: DateTime.now().toString(),
    );
    FirebaseFirestore.instance.collection('product').doc(product.id).set(product.toMap());
    _dt.rxProductList.st = [..._dt.rxProductList.st]..insert(0, product);
    debugPrint(product.toString());
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
    FirebaseFirestore.instance.collection('product').doc(productEdit.id).set(productEdit.toMap());
    _dt.rxProductList.setState((s) {
      final index = _dt.rxProductList.st.indexWhere((element) => element.id == product.id);
      return s[index] = productEdit;
    });
    debugPrint('product has been edited');
  }

  deleteDoc(String id) async {
    FirebaseFirestore.instance.collection('product').doc(id).delete();
    _dt.rxProductList.st = [..._dt.rxProductList.st]..removeWhere((element) => element.id == id);
    debugPrint('this product has been deleted');
  }
}
