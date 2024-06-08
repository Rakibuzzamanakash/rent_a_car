import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../resources/app_colors/app_colors.dart';
import '../../resources/app_string/app_strings.dart';
import '../../resources/dimension/app_dimension.dart';
import '../../utils/style/style.dart';

class ReservationDetailsView extends StatelessWidget {
  const ReservationDetailsView({super.key});

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
                height: AppDimension(context).height * .05,
              ),
              InkWell(
                onTap: ()=> Get.back(),
                child: Row(
                  children: [
                    Icon(Icons.arrow_back_ios,size: 16,),
                    Text(AppStrings.back,style: AppTextStyles.textStyle6,)
                  ],
                ),
              ),
              SizedBox(
                height: AppDimension(context).height * .05,
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
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          AppStrings.reservationsId,
                          style: AppTextStyles.textStyle2,
                        ),
                        Text(
                          "101",
                          style: AppTextStyles.textStyle2,
                        ),

                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          AppStrings.pickupDate,
                          style: AppTextStyles.textStyle2,
                        ),
                        Text(
                          '11:00 AM, 21 March 2024  ',
                          style: AppTextStyles.textStyle2,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          AppStrings.dropoffDate,
                          style: AppTextStyles.textStyle2,
                        ),
                        Text(
                          '11:00 AM, 30 March 2024 ',
                          style: AppTextStyles.textStyle2,
                        ),
                      ],
                    ),


                  ],
                ),
              ),

              const SizedBox(
                height: 30,
              ),
              Text(
                AppStrings.customerInformation,
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
                const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          AppStrings.firstName,
                          style: AppTextStyles.textStyle2,
                        ),
                        Text(
                          "101",
                          style: AppTextStyles.textStyle2,
                        ),

                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          AppStrings.lastName,
                          style: AppTextStyles.textStyle2,
                        ),
                        Text(
                          '11:00 AM, 21 March 2024  ',
                          style: AppTextStyles.textStyle2,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          AppStrings.email,
                          style: AppTextStyles.textStyle2,
                        ),
                        Text(
                          '11:00 AM, 30 March 2024 ',
                          style: AppTextStyles.textStyle2,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          AppStrings.phone,
                          style: AppTextStyles.textStyle2,
                        ),
                        Text(
                          '11:00 AM, 30 March 2024 ',
                          style: AppTextStyles.textStyle2,
                        ),
                      ],
                    ),


                  ],
                ),
              ),


              const SizedBox(
                height: 30,
              ),
              Text(
                AppStrings.vehicleInformation,
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
                const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          AppStrings.vehicleType,
                          style: AppTextStyles.textStyle2,
                        ),
                        Text(
                          "101",
                          style: AppTextStyles.textStyle2,
                        ),

                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          AppStrings.vehicleModel,
                          style: AppTextStyles.textStyle2,
                        ),
                        Text(
                          '11:00 AM, 21 March 2024  ',
                          style: AppTextStyles.textStyle2,
                        ),
                      ],
                    ),

                  ],
                ),
              ),


              const SizedBox(
                height: 30,
              ),
              Text(
                AppStrings.chargesSummary,
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
                const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.appPurple2Color,
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      width: 2,
                      color: AppColors.appPurpleColor,
                    )),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0,bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            AppStrings.charge,
                            style: AppTextStyles.textStyle5,
                          ),
                          Text(
                            "101",
                            style: AppTextStyles.textStyle5,
                          ),

                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(bottom: 5.0),
                      child: Container(
                        height: 1,
                        color: AppColors.appPurpleColor,
                      ),
                    ),


                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          AppStrings.vehicleType,
                          style: AppTextStyles.textStyle2,
                        ),
                        Text(
                          "101",
                          style: AppTextStyles.textStyle2,
                        ),

                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          AppStrings.vehicleModel,
                          style: AppTextStyles.textStyle2,
                        ),
                        Text(
                          '11:00 AM, 21 March 2024  ',
                          style: AppTextStyles.textStyle2,
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          AppStrings.vehicleModel,
                          style: AppTextStyles.textStyle2,
                        ),
                        Text(
                          '11:00 AM, 21 March 2024  ',
                          style: AppTextStyles.textStyle2,
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          AppStrings.total,
                          style: AppTextStyles.textStyle5,
                        ),
                        Text(
                          "101",
                          style: AppTextStyles.textStyle5,
                        ),

                      ],
                    )

                  ],
                ),
              ),

              SizedBox(height: 50,)
            ],
          ),
        ),
      ),
    );
  }
}
