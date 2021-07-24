enum Categories {
  coupons,
  newProducts,
  rolls,
  burgers,
  coldDrinks,
  fries,
  allProducts,
}

extension categoriesToString on Categories {
  String get categoryToString {
    switch (this) {
      case Categories.coupons:
        return 'Купоны';
      case Categories.newProducts:
        return 'Новинки';
      case Categories.rolls:
        return 'Роллы';
      case Categories.burgers:
        return 'Бургеры';
      case Categories.coldDrinks:
        return 'Холодные напитки';
      case Categories.fries:
        return 'Картофель';
      case Categories.allProducts:
        return "Все товары";
    }
  }
}

class ProductModel {
  final String productName;
  final String productPrice;
  final String productImagePath;
  final List<String> productCategory;

  ProductModel(
      {required this.productName,
      required this.productPrice,
      required this.productImagePath,
      required this.productCategory});
}
