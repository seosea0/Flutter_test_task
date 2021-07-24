import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import './../../logic/blocs/products/products_bloc.dart';

class Category extends StatelessWidget {
  final String categoryName;
  final Color backgroundColor;
  final Color textColor;

  Category({required this.categoryName, required this.backgroundColor, required this.textColor});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductsBloc, ProductsState>(
      bloc: context.watch<ProductsBloc>(),
      builder: (ctx, state) {
        return GestureDetector(
          onTap: () => context.read<ProductsBloc>()
            ..add(FilterProductsByCategoryEvent(this.categoryName)),
          child: Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              color: this.backgroundColor,
              borderRadius: BorderRadius.circular(60),
            ),
            child: Text(
              this.categoryName,
              style: TextStyle(color: this.textColor),
            ),
          ),
        );
      },
    );
  }
}
