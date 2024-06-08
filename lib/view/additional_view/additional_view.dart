import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rent_a_car/model_view/additional_model_view.dart';

import '../../resources/app_colors/app_colors.dart';
import '../../resources/app_string/app_strings.dart';
import '../../resources/dimension/app_dimension.dart';
import '../../routes/routes_name.dart';
import '../../utils/style/style.dart';
import '../../utils/widgets/custom_button/custom_button.dart';

class AdditionalView extends StatelessWidget {
   AdditionalView({super.key});

  final AdditionalModelView additionalModelView = Get.put(AdditionalModelView());

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
                AppStrings.additionalCharges,
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
                        Row(
                          children: [
                            Obx(() => Checkbox(
                              value: additionalModelView.collisionDamageWaiver.value,
                              onChanged: (bool? value) {
                                additionalModelView.collisionDamageWaiver.value = value ?? false;
                              },
                            )),

                            Text(AppStrings.collisionDamageWaiver,style: AppTextStyles.textStyle6,)
                          ],
                        ),
                        Spacer(),
                        Text("\$9.00",style: AppTextStyles.textStyle6,)
                      ],
                    ),

                    Row(
                      children: [
                        Row(
                          children: [
                            Obx(() => Checkbox(
                              value: additionalModelView.liabilityInsurance.value,
                              onChanged: (bool? value) {
                                additionalModelView.liabilityInsurance.value = value ?? false;
                              },
                            )),

                            Text(AppStrings.liabilityInsurance,style: AppTextStyles.textStyle6,)
                          ],
                        ),
                        Spacer(),
                        Text("\$9.00",style: AppTextStyles.textStyle6,)
                      ],
                    ),

                    Row(
                      children: [
                        Row(
                          children: [
                            Obx(() => Checkbox(
                              value: additionalModelView.rentalTax.value,
                              onChanged: (bool? value) {
                                additionalModelView.rentalTax.value = value ?? false;
                              },
                            )),

                            Text(AppStrings.rentalTax,style: AppTextStyles.textStyle6,)
                          ],
                        ),
                        Spacer(),
                        Text("\$9.00",style: AppTextStyles.textStyle6,)
                      ],
                    ),

                  ],
                ),
              ),


              SizedBox(
                height: AppDimension(context).height * .1,
              ),
              CustomButton(text: AppStrings.next, onPressed: () {
                Get.toNamed(RoutesName.reservationDetailsView);
              }),
            ],
          ),
        ),
      ),
    );
  }
}
