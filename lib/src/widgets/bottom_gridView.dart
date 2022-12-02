import 'package:dashboard_test/src/models/tile_data_model.dart';
import 'package:dashboard_test/src/widgets/overview_tile.dart';
import 'package:flutter/material.dart';

class BottomGridData extends StatelessWidget {
  const BottomGridData({super.key});

  @override
  Widget build(BuildContext context) {
    return  GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 1.0,
          mainAxisSpacing: 1.0,
          childAspectRatio: 1.8),
      itemCount: TileDataModel.tileDataBottom.length,
      itemBuilder: (context, index) {
        List<TileDataModel> list = TileDataModel.tileDataBottom;
        return CardTile(
            icon: list[index].icon ?? Icons.person,
            count: list[index].count ?? 0,
            title: list[index].title ?? "");
      },
    );
  }

}