import 'package:flutter/material.dart';

class ProductDisplayCard extends StatelessWidget {
  ProductDisplayCard({
    super.key,
    required this.productName,
    required this.productPrice,
    required this.productStockQuantity,
    String? randomImageAssetPath,
  }) : randomImageAssetPath =
           randomImageAssetPath ?? "assets/placeholders/600x400.png";

  final String productName;
  final double productPrice;
  final int productStockQuantity;
  String? randomImageAssetPath;

  @override
  Widget build(BuildContext context) {
    return Card(child: _cardBody(context));
  }

  Widget _cardBody(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: 200, maxHeight: 400),
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Image.asset(randomImageAssetPath!),
            ),
          ),
        ),
        Spacer(),
        Flexible(flex: 2, child: _getProductNameWidget(context)),
        Spacer(),
        Flexible(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(child: Center(child: _getProductPriceWidget(context))),
              Expanded(
                child: Center(child: _getProductStockQuantityWidget(context)),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Text _getProductPriceWidget(BuildContext context) {
    final productPriceFieldStyle = TextStyle(
      color: Theme.of(context).colorScheme.primary,
      fontSize: 16,
    );
    return Text("NPR $productPrice", style: productPriceFieldStyle);
  }

  Text _getProductStockQuantityWidget(BuildContext context) {
    final productStockQuantityFieldStyle = TextStyle(
      color: Theme.of(context).colorScheme.primary,
      fontSize: 16,
    );
    return Text(
      "$productStockQuantity left",
      style: productStockQuantityFieldStyle,
    );
  }

  Text _getProductNameWidget(BuildContext context) {
    final productNameStyle = TextStyle(
      color: Theme.of(context).colorScheme.primary,
      fontSize: 32,
    );
    return Text(productName, style: productNameStyle);
  }
}
