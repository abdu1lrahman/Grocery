import 'package:flutter/material.dart';
import 'package:grocery/generated/l10n.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).cart),
        centerTitle: true,
      ),
    );
  }
}
