import 'package:appsoed/theme/theme.dart';
import 'package:flutter/material.dart';

class ProductItemWidget extends StatelessWidget {
  final List<Map<String, dynamic>> product = [
    {"photo": 'jaket.png', "product": 'Jaket Gensoed', "price": "Rp 185.000"},
    {
      "photo": 'gantungan_kunci.png',
      "product": 'Gantungan Kunci',
      "price": "Rp 8.000"
    },
    {"photo": 'totebag.png', "product": 'Totebag Unsoed', "price": "Rp 50.000"},
    {"photo": 'paket5.png', "product": 'Jaket Jaga', "price": "Rp 200.000"},
    {"photo": 'tumbler.png', "product": 'Tumblr Gensoed', "price": "Rp 75.000"},
    {"photo": 'paket1a.png', "product": 'Paket Lengkap', "price": "Rp 230.000"},
    {"photo": 'paket3.png', "product": 'Pakaet Ber-5', "price": "Rp 885.000"},
    {"photo": 'paket2.png', "product": 'Paket Hemat', "price": "Rp 235.000"},
    {"photo": 'paket4.png', "product": 'Paket Ber-3', "price": "Rp 530.00"}
  ];

  ProductItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
        spacing: 18,
        runSpacing: 20,
        children: product.map((data) {
          return Container(
            margin: const EdgeInsets.only(bottom: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color(0xffFFA000),
            ),
            width: 155,
            height: 210,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  "assets/product/${data['photo']}",
                  width: double.infinity,
                  height: 150,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "${data['product']}",
                        style: nameProduct.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "${data['price']}",
                        style: nameProduct,
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        }).toList());
  }
}
