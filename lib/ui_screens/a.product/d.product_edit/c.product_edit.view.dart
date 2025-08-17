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
              OnReactive(
                () => Column(
                  children: [
                    _dt.rxPickedImage.st == null
                        ? Card(
                            child: SizedBox(
                              height: 100,
                              width: 100,
                              child: Image.network(_dt.rxProductDetail.st!.imageUrl),
                            ),
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
