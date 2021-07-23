import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import './../../logic/blocs/products/products_bloc.dart';
import './../widgets/menu.dart';

class MenuScreen extends StatelessWidget {
  final productsBloc = ProductsBloc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Burger King'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.info_outline),
            onPressed: () {},
          ),
        ],
      ),
      body: BlocProvider<ProductsBloc>(
        create: (context) => ProductsBloc()..add(ProductsFetchedEvent()),
        child: Menu(),
        ),
    );
  }
}
