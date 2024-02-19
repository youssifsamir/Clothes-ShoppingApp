//packages
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
//providers
import '../providers/productsProvider.dart';

enum FilterOptions {
  expensive,
  cheap,
  recent,
}

class SortPopup extends StatefulWidget {
  @override
  State<SortPopup> createState() => _SortPopupState();
}

class _SortPopupState extends State<SortPopup> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ProductsProvider>(context, listen: false);
    return PopupMenuButton(
      offset: const Offset(75, 10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      color: Colors.black87,
      onSelected: (FilterOptions selectedValue) {
        if (selectedValue == FilterOptions.expensive) {
          setState(() {
            provider.toggleSort(2);
          });
        } else if (selectedValue == FilterOptions.cheap) {
          setState(() {
            provider.toggleSort(1);
          });
        } else {
          setState(() {
            provider.toggleSort(0);
          });
        }
      },
      icon: Icon(
        Icons.arrow_drop_down,
        color: IconTheme.of(context).color,
        size: 32,
      ),
      itemBuilder: (_) => [
        PopupMenuItem(
          height: 55,
          value: FilterOptions.expensive,
          child: Center(
            child: Text('HIGH ↑',
                style: Theme.of(context).textTheme.headlineSmall),
          ),
        ),
        PopupMenuItem(
          height: 55,
          value: FilterOptions.cheap,
          child: Center(
            child:
                Text('LOW ↓', style: Theme.of(context).textTheme.headlineSmall),
          ),
        ),
        PopupMenuItem(
          height: 55,
          value: FilterOptions.recent,
          child: Center(
            child: Text('RECENT',
                style: Theme.of(context).textTheme.headlineSmall),
          ),
        ),
      ],
    );
  }
}
