import 'package:flutter/material.dart';
import 'package:notes/views/widgets/color_item.dart';

class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int currentIndex = 0;
  List<Color> colors = [
    Colors.yellowAccent,
    Colors.lightGreen,
    Colors.lightBlue,
    const Color(0xffcccccc),
    const Color(0xfff5f5dc),
    const Color(0xffdcedc8),
    const Color(0xffe6e6fa),
    Colors.pinkAccent,
    const Color(0xff005073),
    const Color(0xff5d3f6a),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: ListView.builder(
        itemCount: colors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              currentIndex = index;
              setState(() {});
            },
            child: ColorItem(
              color: colors[index],
              isSelected: currentIndex == index,
            ),
          );
        },
      ),
    );
  }
}
