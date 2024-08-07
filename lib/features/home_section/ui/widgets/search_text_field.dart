import 'package:fatto/core/extensions.dart';
import 'package:fatto/exports.dart';

import '../../../../core/utils/app_styles.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorWidth: 1,
      cursorColor: AppColors.searchColor,
      textAlignVertical: TextAlignVertical.center,
      decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.search,
            size: 13.54.r,
            color: AppColors.searchColor,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(2),
            borderSide: const BorderSide(width: 0, color: AppColors.white),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(2),
            borderSide: const BorderSide(width: 0, color: AppColors.white),
          ),
          hintText: 'Search what you need',
          hintStyle: AppStyles.styleInterRegular11
              .copyWith(color: AppColors.searchColor)),
    );
  }
}
