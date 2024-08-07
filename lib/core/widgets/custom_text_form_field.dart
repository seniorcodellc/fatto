import 'package:fatto/exports.dart';
class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({super.key, required this.hintText, required this.keyboardType, required this.obscureText, this.validator, this.prefixSvgIcon, this.suffixSvgIcon, this.suffixFunction, this.radiusOfContainer, this.otherSuffixSvgIcon, required this.controller});
 final String hintText;
 final TextEditingController controller;
 final TextInputType keyboardType;
 final bool obscureText;
 final String? Function(String?)? validator;
 final Widget? prefixSvgIcon;
 final Widget? suffixSvgIcon;
 final Widget? otherSuffixSvgIcon;
 final  Function()? suffixFunction;
 final double? radiusOfContainer;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller:controller ,
      keyboardType: keyboardType,
      obscureText: obscureText,
      validator: validator,
      autocorrect: true,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      obscuringCharacter: '*',
      style:AppStyles.styleInterRegular16.copyWith(color: AppColors.darkSlateGray),
      decoration:  InputDecoration(
        contentPadding: EdgeInsets.zero,
        hintText: hintText,
        hintStyle: AppStyles.styleInterRegular12.copyWith(color: AppColors.taupeGray),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(radiusOfContainer ?? 12.r)),
          borderSide: const BorderSide(color: AppColors.lightConcrete),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(radiusOfContainer ?? 12.r)),
          borderSide: const BorderSide(color: AppColors.lightConcrete),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(radiusOfContainer ?? 12.r)),
          borderSide: const BorderSide(color: AppColors.lightConcrete),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(radiusOfContainer ?? 12.r)),
          borderSide: const BorderSide(color: Colors.red),
        ),
        prefixIcon:prefixSvgIcon !=null? Padding(
          padding:  EdgeInsets.all(16.r),
          child:prefixSvgIcon,
        ) : null,
        suffixIcon:suffixSvgIcon!=null? GestureDetector(
          onTap: suffixFunction,
          child: Padding(
            padding:  EdgeInsets.all(16.r),
            child:obscureText ? suffixSvgIcon:otherSuffixSvgIcon ?? const SizedBox(),
          ),
        ) : null,

      ),
    );
  }
}
