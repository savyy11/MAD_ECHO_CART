import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:eco_user_app/widgets/title_text.dart';

class AppNameTextWidget extends StatelessWidget {
  const AppNameTextWidget({super.key, this.fontSize = 30});
  final double fontSize;
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      period: const Duration(seconds: 22),
      baseColor: Color.fromRGBO(11, 210, 91, 1),
      highlightColor: Color.fromARGB(255, 4, 207, 98),
      child: TitlesTextWidget(
        label: "Echo Cart",
        fontSize: fontSize,
      ),
    );
  }
}
