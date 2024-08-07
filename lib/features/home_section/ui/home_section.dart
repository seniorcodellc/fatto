import 'package:fatto/exports.dart';
import 'package:fatto/features/home_section/ui/widgets/categories_row.dart';
import 'package:fatto/features/home_section/ui/widgets/time_row.dart';
import 'widgets/home_section_grid_view.dart';
import 'widgets/search_text_field.dart';

class HomeSection extends StatelessWidget {
  const HomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackground(
        isTransparent: true,
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: SafeArea(
              child: CustomScrollView(
                physics: const BouncingScrollPhysics(),
                slivers: [
                  SliverAppBar(
                    floating: true,
                    snap: true,
                    automaticallyImplyLeading: false,
                    pinned: true,
                    elevation: 0,
                    surfaceTintColor: AppColors.white,
                    backgroundColor: AppColors.white,
                    flexibleSpace: const FlexibleSpaceBar(
                      collapseMode: CollapseMode.pin,
                    ),
                    toolbarHeight: 50.h,
                    titleSpacing: 0,
                    title: Row(
                      children: [
                        Expanded(
                          child: SizedBox(
                            width: 284.w,
                            height: 30.h,
                            child: const SearchTextField(),
                          ),
                        ),
                        29.hs,
                        SvgPicture.asset(AppAssets.cameraFill),
                      ],
                    ),
                  ),
                  SliverFillRemaining(
                    child: Column(
                      children: [
                        24.vs,
                        const TimeRow(),
                        20.vs,
                        const CategoriesRow(),
                        36.vs,
                        const Expanded(child: HomeSectionGridView()),
                        8.vs,
                        SvgPicture.asset(AppAssets.moreSquare, height: 24.h),
                        4.vs,
                        Text(
                          'More',
                          style: AppStyles.styleInterRegular9
                              .copyWith(color: AppColors.burntOrange),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )));
  }
}
