part of '_index.dart';

class ProductRepo {
  int giveNewRandom() {
    final x = Random().nextInt(100);
    logz.s('random value coming from ProductRepo');
    return x;
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

  Future<Product?> getDoc() async {
    final readDoc = await FirebaseFirestore.instance.collection('product').doc(_pv.rxSelectedId.st).get();
    debugPrint(readDoc.data().toString());
    return Product.fromMap(readDoc.data() ?? {});
  }

  Future<void> createDoc(Product product) async {
    FirebaseFirestore.instance.collection('product').doc(product.id).set(product.toMap());
  }

  Future<void> updateDoc(Product productEdit) async {
    FirebaseFirestore.instance.collection('product').doc(productEdit.id).set(productEdit.toMap());
  }

  deleteDoc(String id) async {
    FirebaseFirestore.instance.collection('product').doc(id).delete();
  }
}
