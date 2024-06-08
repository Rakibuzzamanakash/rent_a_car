import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rent_a_car/model_view/reservation_model%20_view.dart';
import 'package:rent_a_car/resources/app_colors/app_colors.dart';
import 'package:rent_a_car/resources/app_string/app_strings.dart';
import 'package:rent_a_car/resources/dimension/app_dimension.dart';
import 'package:rent_a_car/routes/routes_name.dart';
import 'package:rent_a_car/utils/style/style.dart';
import 'package:rent_a_car/utils/widgets/custom_button/custom_button.dart';

class ReservationView extends StatelessWidget {
  ReservationView({super.key});

  final ReservationModelView reservationModelView =
      Get.put(ReservationModelView());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: AppDimension(context).height * .15,
              ),
              Text(
                AppStrings.reservations,
                style: AppTextStyles.heading1,
              ),
              Container(
                height: 2,
                color: AppColors.appPurpleColor,
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      width: 2,
                      color: AppColors.appPurple2Color,
                    )),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          AppStrings.reservationsId,
                          style: AppTextStyles.textStyle1,
                        ),
                        Text(
                          '*',
                          style: AppTextStyles.textStyle3,
                        ),
                      ],
                    ),
                    TextFormField(
                      controller: reservationModelView.reservationIdController,
                      decoration: const InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 2,
                                color:
                                    AppColors.appPurple2Color),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 2, color: AppColors.appPurple2Color),
                          ),
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 10)),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Text(
                          AppStrings.pickupDate,
                          style: AppTextStyles.textStyle1,
                        ),
                        Text(
                          '*',
                          style: AppTextStyles.textStyle3,
                        ),
                      ],
                    ),
                    Obx(() => TextFormField(
                          readOnly: true,
                          decoration: InputDecoration(
                              suffixIcon: InkWell(
                                onTap: () {
                                  reservationModelView.pickUpDate(context);
                                },
                                child: const Icon(
                                  Icons.calendar_month,
                                  color: AppColors.appBlackColor2,
                                ),
                              ),
                              hintText: reservationModelView
                                          .selectPickUpDate.string ==
                                      'null'
                                  ? AppStrings.selectDateAndTime
                                  : reservationModelView
                                      .selectPickUpDate.string,
                              hintStyle: AppTextStyles.textStyle2,
                              enabledBorder: const OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 2, color: AppColors.appPurple2Color),
                              ),
                              focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 2, color: AppColors.appPurple2Color),
                              ),
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 10)),
                        )),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Text(
                          AppStrings.returnDate,
                          style: AppTextStyles.textStyle1,
                        ),
                        Text(
                          '*',
                          style: AppTextStyles.textStyle3,
                        ),
                      ],
                    ),
                    Obx(
                      () => TextFormField(
                        readOnly: true,
                        decoration: InputDecoration(
                            suffixIcon: InkWell(
                              onTap: () {
                                reservationModelView.returnDate(context);
                              },
                              child: const Icon(
                                Icons.calendar_month,
                                color: AppColors.appBlackColor2,
                              ),
                            ),
                            hintText: reservationModelView
                                        .selectReturnDate.string ==
                                    'null'
                                ? AppStrings.selectDateAndTime
                                : reservationModelView.selectReturnDate.string,
                            hintStyle: AppTextStyles.textStyle2,
                            enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 2,
                                  color:
                                      AppColors.appPurple2Color),
                            ),
                            focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 2, color: AppColors.appPurple2Color),
                            ),
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 10)),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Text(
                          AppStrings.duration,
                          style: AppTextStyles.textStyle1,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Obx(() => Expanded(
                              child: TextFormField(
                                decoration: InputDecoration(
                                  hintText: reservationModelView
                                          .difference.value.isEmpty
                                      ? '0'
                                      : reservationModelView.difference.value,
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      width: 2,
                                      color: AppColors.appPurple2Color,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      width: 2,
                                      color: AppColors.appPurple2Color,
                                    ),
                                  ),
                                  contentPadding: EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 10),
                                ),
                              ),
                            )),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      AppStrings.discount,
                      style: AppTextStyles.textStyle1,
                    ),
                    TextFormField(
                      controller: reservationModelView.discountController,
                      decoration: const InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 2,
                                color:
                                    AppColors.appPurple2Color), //<-- SEE HERE
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 2, color: AppColors.appPurple2Color),
                          ),
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 10)),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: AppDimension(context).height * .1,
              ),
              CustomButton(
                  text: AppStrings.next,
                  onPressed: () {
                    Get.toNamed(RoutesName.customerInformationView);
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
