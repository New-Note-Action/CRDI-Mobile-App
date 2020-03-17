import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EmptyInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenUtil.screenWidthDp/3,
      height: ScreenUtil.screenHeightDp*.6,
    );
  }
}