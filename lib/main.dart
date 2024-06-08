import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rent_a_car/resources/app_colors/app_colors.dart';
import 'package:rent_a_car/routes/routes.dart';
import 'package:rent_a_car/routes/routes_name.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.appWhiteColor,
      child: GetMaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        //home: const ReservationView(),
        initialRoute: RoutesName.reservationView,
        getPages: AppRoutes.appRoutes(),
      ),
    );
  }
}


