import 'package:dalton_wade/models/box_icon_data.dart';
import 'package:dalton_wade/views/base/box_icon.dart';
import 'package:flutter/material.dart';

class GridBox extends StatelessWidget {
  final List<BoxIconData> data;
  const GridBox({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    int iconEachRow = 2;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        for (int i = 0; i < (data.length / iconEachRow).ceil(); i++)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              for (int j = 0;
                  j < iconEachRow;
                  j++)
                BoxIcon(
                  // If index is greater than data length it will work as a placeholder
                  isPlaceholder: (i * iconEachRow) + j >= data.length,
                  // If index is greater than data length this part doesn't matter
                  data: data[((i * iconEachRow) + j) % data.length],
                ),
            ],
          ),
      ],
    );
  }
}
