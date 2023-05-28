import 'package:biking_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class DefaultButton extends StatelessWidget {
  final VoidCallback onPress;
  final String title;

  const DefaultButton(
      {Key? key,
      required this.onPress,
      required this.title})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        
        width: 100.w,
        height: SizerUtil.deviceType == DeviceType.tablet ? 9.h : 6.h,
        decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [kSecondaryColor, kPrimaryColor],
              begin: FractionalOffset(0.0, 0.0),
              end: FractionalOffset(0.5, 0.0),
              stops: [0.0, 1.0],
              tileMode: TileMode.clamp,
            ),
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 4,
                offset: Offset(0, 2),
                blurStyle: BlurStyle.solid
              ),
            ],
            borderRadius: BorderRadius.circular(10)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(title, style: Theme.of(context).textTheme.labelLarge!.copyWith(color: kTextWhiteColor, fontWeight: FontWeight.w500)),
          ],
        ),
      ),
    );
  }
}