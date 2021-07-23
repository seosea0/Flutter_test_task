enum Categories { coupons, newProducts, rolls, burgers, coldDrinks, fries}

extension categoriesToString on Categories {
  String get getCategory {
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
    }
  }
}

class ProductModel {
  final String productName;
  final String productPrice;
  final String productImagePath;
  final Categories productCategory;

  ProductModel(
      {required this.productName,
      required this.productPrice,
      required this.productImagePath,
      required this.productCategory});
}
