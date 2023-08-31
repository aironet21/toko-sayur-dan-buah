import 'package:flutter/material.dart';
import 'package:syahrul_ashari_20200120066/data.dart';

import 'detail_product.dart';

class ItemCard extends StatefulWidget {
  const ItemCard({
    Key? key,
    required this.produk,
  }) : super(key: key);
  final Produk produk;

  @override
  State<ItemCard> createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {
  int count = 1;
  void addCount() {
    count = count + 1;
    setState(() {});
  }

  void removeCount() {
    if (count != 0) {
      count = count - 1;
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return DetailProduct(
            produk: widget.produk,
          );
        }));
      },
      child: Card(
        elevation: 2,
        shadowColor: Colors.green,
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
              tag: widget.produk.image,
              child: SizedBox(
                width: 150,
                child: Image.asset(widget.produk.image),
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            Text(
              'Rp ${widget.produk.price}',
              style: const TextStyle(
                  color: Colors.green,
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 2,
            ),
            Text(
              widget.produk.name,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 2,
            ),
            Text(
              widget.produk.quantity,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w300),
            ),
            const SizedBox(
              height: 4,
            ),
            const Divider(
              height: 2,
              color: Colors.grey,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Row(
                  children: [
                    Icon(
                      Icons.add_shopping_cart,
                      size: 20,
                      color: Colors.green,
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Text(
                      'Beli',
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 16,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  width: 8,
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: removeCount,
                      icon: const Icon(
                        Icons.remove_circle_outline,
                        color: Colors.green,
                        size: 19,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 1),
                      child: Text(count.toString()),
                    ),
                    IconButton(
                      onPressed: addCount,
                      icon: const Icon(
                        Icons.add_circle_outline,
                        color: Colors.green,
                        size: 19,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
