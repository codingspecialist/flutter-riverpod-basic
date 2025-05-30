import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_shop/page/home_vm.dart';

import 'selector_button.dart';

class SelectorHeader extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    SelectorModel model = ref.watch(homeProvider);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: AspectRatio(
              aspectRatio: 5 / 3,
              child: Image.asset("${model.selectedImage()}", fit: BoxFit.cover),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SelectorButton(0),
                SelectorButton(1),
                SelectorButton(2),
                SelectorButton(3),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
