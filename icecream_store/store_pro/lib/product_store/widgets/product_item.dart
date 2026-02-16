import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:store_pro/product_store/model/app_state_model.dart';
import 'package:store_pro/product_store/model/icecream.dart';
import 'package:store_pro/themes/styles.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({required this.icecream, super.key});

  final Icecreams icecream;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: CachedNetworkImageProvider(icecream.image!),
      ),
      title: Text(icecream.flavor!, style: Styles.productRowItemName),
      subtitle: Text(
        '₹ ${icecream.price}',
        style: Styles.productRowItemPrice,
      ),
      trailing: IconButton(
        onPressed: () {
          Provider.of<AppStateModel>(
            context, listen: false
          )
          .addProductToCart(icecream.id!);
        },
        icon: const Icon(Icons.add_shopping_cart),
      ),
    );
  }
}
