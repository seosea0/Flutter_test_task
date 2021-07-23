import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_test_task/data/models/product_model.dart';
import 'package:meta/meta.dart';

import './../../../data/models/product_model.dart';
import './../../../data/repository/repository.dart';

part 'products_event.dart';
part 'products_state.dart';

class ProductsBloc extends Bloc<ProductsEvent, ProductsState> {
  ProductsBloc() : super(ProductsInitial());

  final Repository repo = Repository();
  String currentCategory = Categories.coupons.getCategory;

  @override
  Stream<ProductsState> mapEventToState(
    ProductsEvent event,
  ) async* {
    if (event is ProductsFetchedEvent) {
      yield* _mapFetchProductsEventToState();
    }
    if (event is FilterProductsByCategoryEvent) {
      yield* mapFilteredProductsByCategory(event.category);
    }
  }

  Stream<ProductsState> _mapFetchProductsEventToState() async* {
    yield ProductsLoading();
    try {
      yield ProductsSuccess(repo.getProductsList
          .where((element) =>
              element.productCategory.getCategory == currentCategory)
          .toList());
    } catch (error) {
      yield ProductsError(error.toString());
    }
  }

  Stream<ProductsState> mapFilteredProductsByCategory(String category) async* {
    if (currentCategory != category) currentCategory = category;
    final filteredProducts = repo.getProductsList.where(
            (element) => element.productCategory.getCategory == currentCategory)
        .toList();

    yield ProductsSuccess(filteredProducts);
  }

  List getCategoriesList() {
    final categories =
        repo.getProductsList.map((e) => e.productCategory).toSet();
    return categories.map((e) => e.getCategory).toList();
  }
}
