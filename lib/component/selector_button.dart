import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_shop/page/home_vm.dart';

class SelectorButton extends ConsumerWidget {
  int myIndex;

  SelectorButton(this.myIndex);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    HomeVM vm = ref.read(homeProvider.notifier);

    return Container(
      width: 70,
      height: 70,
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(20),
      ),
      child: IconButton(
        onPressed: () {
          vm.onClick(myIndex);
        },
        icon: Icon(Icons.directions_bike),
      ),
    );
  }
}
