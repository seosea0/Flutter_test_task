import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_test_task/logic/blocs/products/products_bloc.dart';
import './categories_list.dart';
import './products_list.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductsBloc, ProductsState>(
      bloc: context.watch<ProductsBloc>(),
      builder: (ctx, state) {
        if (state is ProductsError) {
          return Center(child: Text('Произошла ошибка. Повторите позже'));
        }
        if (state is ProductsSuccess) {
          if (state.products.isEmpty) {
            return Center(child: Text('Нет данных...'));
          } else {
            return ListView(
              children: [
                CategoriesList(),
                ProductsList(),
              ],
            );
          }
        } else {
          return CircularProgressIndicator();
        }
      },
    );
  }
}
