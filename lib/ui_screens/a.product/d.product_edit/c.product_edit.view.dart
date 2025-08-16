part of '_index.dart';

class ProductEditView extends StatelessWidget {
  const ProductEditView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(preferredSize: Size.fromHeight(56), child: ProductEditAppbar()),
      floatingActionButton: ProductEditFab(),
      body: Center(
        child: SizedBox(
          width: 450,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              ProductEditBrand(),
              SizedBox(height: 20),
              ProductEditModel(),
              SizedBox(height: 20),
              ProductEditYear(),
              SizedBox(height: 20),
              ProductEditPrice(),
              SizedBox(height: 20),
              ProductEditSubmit(),
            ],
          ),
        ),
      ),
    );
  }
}
