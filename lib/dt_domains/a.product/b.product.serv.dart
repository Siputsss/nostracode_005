part of '_index.dart';

class ProductServ {
  void init() {
    logxx.i(ProductServ, '...');
  }

  void updateRandom() {
    _pv.rxRandom.st = _rp.giveNewRandom();
  }

  void onSetState() {
    logzz.i(ProductServ, 'rxCounter setState success');
  }

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
    _pv.rxProductList.stateAsync = getColl();
  }

  Future<Product?> getDoc(String id) async {
    final readDoc = await FirebaseFirestore.instance.collection('product').doc(id).get();
    debugPrint(readDoc.data().toString());
    return Product.fromMap(readDoc.data() ?? {});
  }

  readDoc(String id) {
    _pv.rxProductDetail.stateAsync = getDoc(id);
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
    _pv.rxProductList.st = [..._pv.rxProductList.st]..insert(0, product);
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
    _pv.rxProductList.setState((s) {
      final index = _pv.rxProductList.st.indexWhere((element) => element.id == product.id);
      return s[index] = productEdit;
    });
    debugPrint('product has been edited');
  }

  deleteDoc(String id) async {
    FirebaseFirestore.instance.collection('product').doc(id).delete();
    _pv.rxProductList.st = [..._pv.rxProductList.st]..removeWhere((element) => element.id == id);
    debugPrint('this product has been deleted');
  }
}
