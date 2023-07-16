import 'package:flutter/material.dart';

import '../Styles/custom_styles.dart';

// ignore: must_be_immutable
class PaddedDivider extends StatelessWidget {
  const PaddedDivider({
        super.key, 
        this.leftPadding = 0.0,
        this.rightPadding = 0.0,
        this.topPadding = 0.0,
        this.bottomPadding = 0.0,
        this.leftRightPadding = 0.0,
        this.topBottomPadding = 0.0,
        this.allPadding = 0.0,
        this.color = CustomStyles.primaryFont,
        this.thickness = 2
    });

    final double leftPadding;
    final double rightPadding;
    final double topPadding;
    final double bottomPadding;
    final double leftRightPadding;
    final double topBottomPadding;
    final double allPadding;
    final Color color;
    final double thickness;

	EdgeInsetsGeometry createPadding() {
        if (allPadding != 0.0) {
            return EdgeInsets.all(allPadding);
        }
        else if (leftRightPadding != 0 || topBottomPadding != 0) {
            return EdgeInsets.only(
                left: leftRightPadding,
                right: leftRightPadding,
                top: topBottomPadding,
                bottom: topBottomPadding);
        }
        else {
            return EdgeInsets.only(
                left: leftPadding,
                right: rightPadding,
                top: topPadding,
                bottom: bottomPadding);
        }
    }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: createPadding(),
      child: Divider(
        color: color,
        thickness: thickness,
      ),
    );
  }
}