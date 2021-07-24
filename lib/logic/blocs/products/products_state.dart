part of 'products_bloc.dart';

@immutable
abstract class ProductsState {
  final List<ProductModel> products;
  final List<String> categories;

  ProductsState({this.products = const <ProductModel> [], this.categories = const <String> []});
}

class ProductsInitial extends ProductsState {
  ProductsInitial() : super();
}

class ProductsLoading extends ProductsState {
  ProductsLoading() : super();
}

class ProductsSuccess extends ProductsState {
  final List<ProductModel> products;
  final List<String> categories;

  ProductsSuccess(this.products, this.categories) : super(products: products, categories: categories);
}

class ProductsError extends ProductsState {
  final String errorMessage;
  ProductsError(this.errorMessage) : super();
}