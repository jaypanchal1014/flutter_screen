import 'package:flutter/material.dart';
import 'package:flutter_screens/flutter_screens.dart';

void main() {
  runApp(ScreenInit(designSize: const Size(390, 844), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Screen Helper',
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Screen Helper')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Screen Information',
              style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.bold),
            ),

            20.verticalSpace,

            infoTile('Width', Screen.width.toStringAsFixed(2)),
            infoTile('Height', Screen.height.toStringAsFixed(2)),
            infoTile('Safe Top', Screen.safeTop.toStringAsFixed(2)),
            infoTile('Safe Bottom', Screen.safeBottom.toStringAsFixed(2)),
            infoTile('Orientation', Screen.orientation.name),
            infoTile('Device', Screen.deviceType.name),

            30.verticalSpace,

            Text(
              'Responsive Container',
              style: TextStyle(fontSize: 22.sp, fontWeight: FontWeight.bold),
            ),

            20.verticalSpace,

            Container(
              width: 200.w,
              height: 120.h,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(20.r),
              ),
              child: Text(
                '200.w × 120.h',
                style: TextStyle(color: Colors.white, fontSize: 18.sp),
              ),
            ),

            30.verticalSpace,

            Text(
              'Screen Percentage',
              style: TextStyle(fontSize: 22.sp, fontWeight: FontWeight.bold),
            ),

            20.verticalSpace,

            Container(
              width: 80.sw,
              height: 12.sh,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(16.r),
              ),
              child: Text(
                '80% Width • 12% Height',
                style: TextStyle(color: Colors.white, fontSize: 16.sp),
              ),
            ),

            30.verticalSpace,

            Text(
              'Responsive Builder',
              style: TextStyle(fontSize: 22.sp, fontWeight: FontWeight.bold),
            ),

            20.verticalSpace,

            ResponsiveBuilder(
              mobile: deviceCard('📱 Mobile Layout', Colors.orange),
              tablet: deviceCard('📲 Tablet Layout', Colors.purple),
              desktop: deviceCard('🖥 Desktop Layout', Colors.teal),
            ),
          ],
        ),
      ),
    );
  }

  Widget infoTile(String title, String value) {
    return Padding(
      padding: EdgeInsets.only(bottom: 12.h),
      child: Row(
        children: [
          Expanded(
            child: Text(
              title,
              style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600),
            ),
          ),
          Text(value, style: TextStyle(fontSize: 16.sp)),
        ],
      ),
    );
  }

  Widget deviceCard(String title, Color color) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(20.w),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Text(
        title,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.white,
          fontSize: 20.sp,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
