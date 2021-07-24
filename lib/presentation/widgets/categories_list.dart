import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import './../../logic/blocs/products/products_bloc.dart';
import 'category.dart';

class CategoriesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductsBloc, ProductsState>(
      bloc: context.watch<ProductsBloc>(),
      builder: (ctx, state) {
        return SizedBox(
          height: 60,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: state.categories.length,
            itemBuilder: (ctx, index) => state.categories[index] ==
                    context.read<ProductsBloc>().currentCategory
                ? Category(
                    categoryName: state.categories[index],
                    backgroundColor: Colors.amber,
                    textColor: Colors.black,
                  )
                : Category(
                    categoryName: state.categories[index],
                    backgroundColor: Colors.transparent,
                    textColor: Theme.of(context).backgroundColor,
                  ),
          ),
        );
      },
    );
  }
}
