part of 'products_bloc.dart';

@immutable
abstract class ProductsState {
  final List<ProductModel> products;

  ProductsState({this.products = const <ProductModel> []});
}

class ProductsInitial extends ProductsState {
  ProductsInitial() : super();
}

class ProductsLoading extends ProductsState {
  ProductsLoading() : super();
}

class ProductsSuccess extends ProductsState {
  final List<ProductModel> products;
  ProductsSuccess(this.products) : super(products: products);
}

class ProductsError extends ProductsState {
  final String errorMessage;
  ProductsError(this.errorMessage) : super();
}