import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_test_task/domain/models/product_model.dart';
import 'package:meta/meta.dart';

import './../../../domain/models/product_model.dart';
import './../../../domain/repository/repository.dart';

part 'products_event.dart';
part 'products_state.dart';

class ProductsBloc extends Bloc<ProductsEvent, ProductsState> {
  ProductsBloc() : super(ProductsInitial());

  final Repository repo = Repository();
  String currentCategory = Categories.allProducts.categoryToString;

  @override
  Stream<ProductsState> mapEventToState(
    ProductsEvent event,
  ) async* {
    if (event is ProductsFetchedEvent) {
      yield* _mapFetchProductsEventToState();
    }
    if (event is FilterProductsByCategoryEvent) {
      yield* _mapFilteredProductsByCategory(event.category);
    }
  }

  Stream<ProductsState> _mapFetchProductsEventToState() async* {
    yield ProductsLoading();
    try {
      yield ProductsSuccess(repo.getProductsList, repo.getCategoriesList);
    } catch (error) {
      yield ProductsError(error.toString());
    }
  }

  Stream<ProductsState> _mapFilteredProductsByCategory(String category) async* {
    if (currentCategory != category) currentCategory = category;
    final filteredProducts = repo.getProductsList.where((e) => e.productCategory.contains(category)).toList();

    yield ProductsSuccess(filteredProducts, repo.getCategoriesList);
  }
}
