part of '_index.dart';

class ProductProv {
  final rxRandom = RM.inject<int>(
    () => 0,
    autoDisposeWhenNotUsed: false,
    sideEffects: SideEffects(onSetState: (p0) => _sv.onSetState()),
  );

  final rxProductList = RM.injectFuture<List<dynamic>>(
    () => Future.value([]),
    sideEffects: SideEffects(initState: () => _sv.readList()),
  );

  final rxProductDetail = RM.injectFuture<Product?>(
    () => Future.value(null),
    sideEffects: SideEffects(initState: () => _sv.readDoc()),
  );

  final rxSelectedId = RM.inject(() => '');
}
