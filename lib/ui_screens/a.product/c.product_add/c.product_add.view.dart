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
              OnFormBuilder(
                listenTo: _dt.rxForm,
                builder: () => TextField(
                  controller: _dt.rxBrand.controller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Brand',
                    errorText: _dt.rxBrand.error,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              OnFormBuilder(
                listenTo: _dt.rxForm,
                builder: () => TextField(
                  controller: _dt.rxModel.controller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Model',
                    errorText: _dt.rxModel.error,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              OnFormBuilder(
                listenTo: _dt.rxForm,
                builder: () => TextField(
                  controller: _dt.rxYear.controller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Year',
                    errorText: _dt.rxYear.error,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              OnFormBuilder(
                listenTo: _dt.rxForm,
                builder: () => TextField(
                  controller: _dt.rxPrice.controller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Price',
                    errorText: _dt.rxPrice.error,
                  ),
                ),
              ),
              const SizedBox(height: 20),

              OnFormSubmissionBuilder(
                listenTo: _dt.rxForm,
                onSubmitting: () => CircularProgressIndicator(),
                child: ElevatedButton(
                  onPressed: () {
                    _ct.submit();
                  },
                  child: Text("Submit"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
