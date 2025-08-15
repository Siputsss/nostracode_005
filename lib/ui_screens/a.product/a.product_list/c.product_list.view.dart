part of '_index.dart';

class ProductListView extends StatelessWidget {
  const ProductListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(preferredSize: Size.fromHeight(56), child: ProductListAppbar()),
      floatingActionButton: ProductListFab(),
      body: OnBuilder.all(
        listenTo: _dt.rxProductList,
        onWaiting: () => CircularProgressIndicator(),
        onError: (error, refreshError) => Text('$error'),
        onData: (data) => Column(
          children: [
            ...List.generate(
              data.length,
              (index) => Card(
                child: ListTile(
                  title: Text(data[index].brand),
                  subtitle: Text(data[index].id),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        onPressed: () {
                          _ct.deleteDoc(data[index].id);
                        },
                        icon: const Icon(Icons.delete),
                      ),
                      IconButton(
                        onPressed: () {
                          _ct.updateDoc(data[index]);
                        },
                        icon: const Icon(Icons.update),
                      ),
                    ],
                  ),
                  onTap: () => _ct.readDoc(data[index].id),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Text('Product Detail'),
            const SizedBox(height: 20),
            OnBuilder.data(
              listenTo: _dt.rxProductDetail,
              builder: (data) => Column(
                children: [
                  Text('${data?.id}'),
                  Text('${data?.brand}'),
                  Text('${data?.model}'),
                  Text('${data?.year}'),
                  Text('${data?.price}'),
                  Text('${data?.createdAt}'),
                  Text('${data?.updatedAt}'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
