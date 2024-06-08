import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rent_a_car/routes/routes_name.dart';

import '../../resources/app_colors/app_colors.dart';
import '../../resources/app_string/app_strings.dart';
import '../../resources/dimension/app_dimension.dart';
import '../../utils/style/style.dart';
import '../../utils/widgets/custom_button/custom_button.dart';

class CustomerInformationView extends StatelessWidget {
  const CustomerInformationView({super.key});

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
                          AppStrings.firstName,
                          style: AppTextStyles.textStyle1,
                        ),
                        Text(
                          '*',
                          style: AppTextStyles.textStyle3,
                        ),
                      ],
                    ),
                    TextFormField(
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
                    Row(
                      children: [
                        Text(
                          AppStrings.lastName,
                          style: AppTextStyles.textStyle1,
                        ),
                        Text(
                          '*',
                          style: AppTextStyles.textStyle3,
                        ),
                      ],
                    ),
                    TextFormField(
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
                    Row(
                      children: [
                        Text(
                          AppStrings.email,
                          style: AppTextStyles.textStyle1,
                        ),
                        Text(
                          '*',
                          style: AppTextStyles.textStyle3,
                        ),
                      ],
                    ),
                    TextFormField(
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

                    Text(
                      AppStrings.phone,
                      style: AppTextStyles.textStyle1,
                    ),
                    TextFormField(
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
              CustomButton(text: AppStrings.next, onPressed: () {
                Get.toNamed(RoutesName.vehicleInformationView);
              }),
            ],
          ),
        ),
      ),
    );
  }
}
