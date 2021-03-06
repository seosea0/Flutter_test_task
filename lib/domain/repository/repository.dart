import './../models/product_model.dart';

class Repository {
  List<ProductModel> _productsList = [
    ProductModel(
      productName: '2 за 200',
      productPrice: '199',
      productImagePath: 'assets/images/2for200.png',
      productCategory: [
        Categories.coupons.categoryToString,
        Categories.allProducts.categoryToString,
      ],
    ),
    ProductModel(
      productName: '6 за 200',
      productPrice: '199',
      productImagePath: 'assets/images/6for200.png',
      productCategory: [
        Categories.coupons.categoryToString,
        Categories.allProducts.categoryToString,
      ],
    ),
    ProductModel(
      productName: 'Кока-Кола',
      productPrice: '129',
      productImagePath: 'assets/images/coca_cola.png',
      productCategory: [
        Categories.coldDrinks.categoryToString,
        Categories.allProducts.categoryToString,
      ],
    ),
    ProductModel(
      productName: 'Dr.Pepper',
      productPrice: '129',
      productImagePath: 'assets/images/dr_pepper.png',
      productCategory: [
        Categories.coldDrinks.categoryToString,
        Categories.allProducts.categoryToString,
      ],
    ),
    ProductModel(
      productName: 'Кинг Комбо с картофелем',
      productPrice: '269',
      productImagePath: 'assets/images/king_combo.png',
      productCategory: [
        Categories.coupons.categoryToString,
        Categories.allProducts.categoryToString,
      ],
    ),
    ProductModel(
      productName: 'Кинг Бокс 5 в 1',
      productPrice: '300',
      productImagePath: 'assets/images/king_box.png',
      productCategory: [
        Categories.burgers.categoryToString,
        Categories.allProducts.categoryToString,
      ],
    ),
    ProductModel(
      productName: 'Бекон Кинг',
      productPrice: '189',
      productImagePath: 'assets/images/single_bacon_king.png',
      productCategory: [
        Categories.burgers.categoryToString,
        Categories.allProducts.categoryToString,
      ],
    ),
    ProductModel(
      productName: 'Стрипс Кинг',
      productPrice: '99',
      productImagePath: 'assets/images/strips_king.png',
      productCategory: [
        Categories.newProducts.categoryToString,
        Categories.allProducts.categoryToString,
      ],
    ),
    ProductModel(
      productName: 'Кинг Фри (мал.)',
      productPrice: '79',
      productImagePath: 'assets/images/fries_small.png',
      productCategory: [
        Categories.fries.categoryToString,
        Categories.allProducts.categoryToString,
      ],
    ),
    ProductModel(
      productName: 'Кинг Фри (станд.)',
      productPrice: '89',
      productImagePath: 'assets/images/fries_medium.png',
      productCategory: [
        Categories.fries.categoryToString,
        Categories.allProducts.categoryToString,
      ],
    ),
    ProductModel(
      productName: 'Кинг Фри (бол.)',
      productPrice: '109',
      productImagePath: 'assets/images/fries_big.png',
      productCategory: [
        Categories.fries.categoryToString,
        Categories.allProducts.categoryToString,
      ],
    ),
    ProductModel(
      productName: 'Любой ролл + Капучино',
      productPrice: '109',
      productImagePath: 'assets/images/roll_and_coffee.png',
      productCategory: [
        Categories.coupons.categoryToString,
        Categories.allProducts.categoryToString,
      ],
    ),
  ];

  List<ProductModel> get getProductsList => _productsList;
  List<String> get getCategoriesList => _productsList
      .map((e) => e.productCategory)
      .expand((element) => element)
      .toSet()
      .toList();
}
