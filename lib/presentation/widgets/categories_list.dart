import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import './../../logic/blocs/products/products_bloc.dart';
import 'category.dart';

class CategoriesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductsBloc, ProductsState>(
      builder: (ctx, state) {
        return SizedBox(
          height: 60,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: context.read<ProductsBloc>().getCategoriesList().length,
            itemBuilder: (ctx, index) => context
                        .read<ProductsBloc>()
                        .getCategoriesList()[index] ==
                    context.read<ProductsBloc>().currentCategory
                ? Category(
                    categoryName:
                        context.read<ProductsBloc>().getCategoriesList()[index],
                    backgroundColor: Colors.amber,
                    textColor: Colors.black,
                  )
                : Category(
                    categoryName:
                        context.read<ProductsBloc>().getCategoriesList()[index],
                    backgroundColor: Colors.transparent,
                    textColor: Theme.of(context).backgroundColor,
                  ),
          ),
        );
      },
    );
  }
}
