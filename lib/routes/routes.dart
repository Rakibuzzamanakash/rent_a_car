import 'package:get/get.dart';
import 'package:rent_a_car/routes/routes_name.dart';
import 'package:rent_a_car/view/additional_view/additional_view.dart';
import 'package:rent_a_car/view/customer_view/customer_information_view.dart';
import 'package:rent_a_car/view/reservation_details_view/reservation_details_view.dart';
import 'package:rent_a_car/view/vehicle_view/vehicle_view.dart';
import 'package:rent_a_car/view/reservation_view/reservation_view.dart';

class AppRoutes {
  static appRoutes() => [
        GetPage(
          name: RoutesName.reservationView,
          page: () =>  ReservationView(),
          transitionDuration: const Duration(milliseconds: 250),
          transition: Transition.leftToRightWithFade,
        ),
        GetPage(
          name: RoutesName.customerInformationView,
          page: () => const CustomerInformationView(),
          transitionDuration: const Duration(milliseconds: 250),
          transition: Transition.leftToRightWithFade,
        ),
        GetPage(
          name: RoutesName.vehicleInformationView,
          page: () => const VehicleInformationView(),
          transitionDuration: const Duration(milliseconds: 250),
          transition: Transition.leftToRightWithFade,
        ),
        GetPage(
          name: RoutesName.additionalInformationView,
          page: () =>  AdditionalView(),
          transitionDuration: const Duration(milliseconds: 250),
          transition: Transition.leftToRightWithFade,
        ),
        GetPage(
          name: RoutesName.reservationDetailsView,
          page: () => const ReservationDetailsView(),
          transitionDuration: const Duration(milliseconds: 250),
          transition: Transition.leftToRightWithFade,
        ),
      ];
}
