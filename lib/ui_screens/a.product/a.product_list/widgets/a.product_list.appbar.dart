part of '../_index.dart';

class ProductListAppbar extends StatelessWidget {
  const ProductListAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: OnReactive(() => Text(_dt.rxTitle.st)),
      actions: [
        IconButton(
          onPressed: () {
            _ct.deleteAccount();
          },
          icon: Icon(Icons.delete_forever),
        ),
        IconButton(
          onPressed: () {
            _ct.signOut();
          },
          icon: Icon(Icons.logout),
        ),
      ],
    );
  }
}
