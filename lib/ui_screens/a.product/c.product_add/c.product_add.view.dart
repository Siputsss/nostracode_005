part of '_index.dart';

class ProductAddView extends StatelessWidget {
  const ProductAddView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(preferredSize: Size.fromHeight(56), child: ProductAddAppbar()),
      floatingActionButton: ProductAddFab(),
      body: Center(
        child: SizedBox(
          width: 450,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ProductAddBrand(),
              const SizedBox(height: 20),
              ProductAddModel(),
              const SizedBox(height: 20),
              ProductAddYear(),
              const SizedBox(height: 20),
              ProductAddPrice(),
              const SizedBox(height: 20),
              ProductAddSubmit(),
            ],
          ),
        ),
      ),
    );
  }
}
