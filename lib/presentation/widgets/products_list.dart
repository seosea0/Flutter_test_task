import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import './../../logic/blocs/products/products_bloc.dart';
import './product.dart';

class ProductsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductsBloc, ProductsState>(
      bloc: context.watch<ProductsBloc>(),
      builder: (ctx, state) {
        return GridView.count(
          physics: NeverScrollableScrollPhysics(),
          childAspectRatio: 1 / 1.5,
          shrinkWrap: true,
          crossAxisCount: 2,
          children: [
            ...state.products.map(
              (e) => Product(
                productName: e.productName,
                productPrice: e.productPrice,
                productImagePath: e.productImagePath,
              ),
            ),
          ],
        );
      },
    );
  }
}
