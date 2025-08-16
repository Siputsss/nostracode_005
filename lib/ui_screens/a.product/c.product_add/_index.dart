import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:nc_005/dt_domains/_models/_index.dart';
import 'package:nc_005/dt_domains/a.product/_index.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../../app/_index.dart';
import '../../../xtras/_index.dart';

part 'a.product_add.data.dart';
part 'b.product_add.ctrl.dart';
part 'c.product_add.view.dart';
part 'widgets/a.product_add.appbar.dart';
part 'widgets/b.product_add.fab.dart';
part 'widgets/c.product_add.brand.dart';
part 'widgets/d.product_add.model.dart';
part 'widgets/e.product_add.year.dart';
part 'widgets/f. product_add.price.dart';
part 'widgets/g. product_add.submit.dart';

ProductAddData get _dt => Data.productAdd.st;
ProductAddCtrl get _ct => Ctrl.productAdd;

ProductServ get _sv => Serv.product;
ProductProv get _pv => Prov.product.st;
