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
              OnReactive(
                () => Column(
                  children: [
                    _dt.rxPickedImage.st == null
                        ? Card(
                            child: SizedBox(height: 100, width: 100, child: Center(child: Text('No Image'))),
                          )
                        : SizedBox(height: 100, width: 100, child: Image.network('${_dt.rxPickedImage.st?.path}')),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () async {
                  _ct.pickImage();
                },
                child: Text("pick image"),
              ),
              const SizedBox(height: 10),
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
