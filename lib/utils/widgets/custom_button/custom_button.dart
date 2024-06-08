import 'package:flutter/material.dart';

import '../../../resources/app_colors/app_colors.dart';
import '../../../resources/dimension/app_dimension.dart';
import '../../style/style.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Function onPressed;
  const CustomButton({super.key, required this.text,required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: InkWell(
        onTap: (){
          onPressed();
        },
        child: Container(
          height: AppDimension(context).height *.06,
          width: AppDimension(context).width *.4,
          decoration: BoxDecoration(
              color: AppColors.appPurpleColor,
              borderRadius: BorderRadius.circular(7)
          ),
          child: Center(
            child: Text(text,style: AppTextStyles.textStyle4,),
          ),
        ),
      ),
    );
  }
}
