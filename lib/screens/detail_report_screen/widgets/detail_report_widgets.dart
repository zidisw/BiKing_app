import 'package:biking_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class DetailButton extends StatelessWidget {
  const DetailButton(
      {Key? key,
      required this.title,
      required this.iconData,
      required this.onPress})
      : super(key: key);
  final String title;
  final IconData iconData;
  final VoidCallback onPress;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        width: 100.w,
        height: SizerUtil.deviceType == DeviceType.tablet ? 8.h : 7.h,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [kSecondaryColor, kPrimaryColor],
            begin: FractionalOffset(0.0, 0.0),
            end: FractionalOffset(0.5, 0.0),
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp,
          ),
          borderRadius: kBottomBorderRadius,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(title, style: Theme.of(context).textTheme.titleSmall),
            Icon(
              iconData,
              color: kOtherColor,
              size: 26.sp,
            ),
          ],
        ),
      ),
    );
  }
}

class DetailRow extends StatelessWidget {
  const DetailRow({Key? key, required this.title, required this.statusValue})
      : super(key: key);
  final String title;
  final String statusValue;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.titleSmall!.copyWith(
                color: kTextBlackColor,
                fontWeight: FontWeight.w900,
              ),
        ),
        Text(statusValue, style: Theme.of(context).textTheme.bodySmall),
      ],
    );
  }
}
