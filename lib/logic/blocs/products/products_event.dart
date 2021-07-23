part of 'products_bloc.dart';

@immutable
abstract class ProductsEvent {}

class ProductsFetchedEvent extends ProductsEvent {}

class FilterProductsByCategoryEvent extends ProductsEvent {
  final String category;
  FilterProductsByCategoryEvent(this.category);
}