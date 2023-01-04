import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../theme/color_path.dart';

/// 글로벌 Circular Progress 인디케이터 위젯
///
/// [isLogo] bool?
class GlobalCircularProgressIndicatorWidget extends StatelessWidget {
  const GlobalCircularProgressIndicatorWidget({
    super.key,
    this.isLogo = false,
  });

  final bool? isLogo;

  @override
  Widget build(BuildContext context) {
    if (isLogo!) {
      return Center(
        child: SizedBox(
          width: 50.w,
          height: 50.w,
          child: Stack(
            fit: StackFit.expand,
            children: [
              CircularProgressIndicator(
                strokeWidth: 4.0.w,
                // backgroundColor: Colors.black,
                color: ColorPath.PrimaryColor,
              ),
              Center(
                child: SizedBox(
                  width: 32.w,
                  height: 20.w,
                  child: Image.asset('assets/logos/logo.webp'),
                ),
              ),
            ],
          ),
        ),
      );
    } else {
      // 머테리얼 기본 인디케이터
      // return const Center(
      //   child: CircularProgressIndicator(
      //     strokeWidth: 3.0,
      //     color: ColorPath.RED,
      //     // valueColor: AlwaysStoppedAnimation(Colors.black),
      //   ),
      // );
      // 스핀킷 인디케이터
      return Center(
        child: SpinKitFadingFour(
          color: ColorPath.PrimaryColor,
          size: 50.0.w,
        ),
      );
    }
  }
}

/// 글로벌 로더 인디케이터 위젯
///
/// [isLogo] bool?
class GlobalLoaderIndicatorWidget extends StatelessWidget {
  const GlobalLoaderIndicatorWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.black.withOpacity(0.5),
      child: Center(
        child: SpinKitFadingFour(
          color: ColorPath.PrimaryColor,
          size: 50.0.w,
        ),
      ),
    );
  }
}
