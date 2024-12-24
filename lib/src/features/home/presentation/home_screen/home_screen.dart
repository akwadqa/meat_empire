import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:meat_empire/gen/assets.gen.dart';
import 'package:meat_empire/src/routing/app_router.gr.dart';
import 'package:meat_empire/src/theme/app_colors.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const iconHeight = 25.0;
    const colorFilter = ColorFilter.mode(AppColors.primary, BlendMode.srcIn);
    return AutoTabsScaffold(
      extendBody: true,
      routes: const [LayoutRoute(), SearchRoute(), CartRoute(), AccountRoute()],
      appBarBuilder: (context, _) => AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {},
            icon: Badge(
              backgroundColor: AppColors.primary,
              label: Text('3'),
              child: Assets.icons.cartIcon.svg(
                  height: 22,
                  width: 26,
                  colorFilter:
                      ColorFilter.mode(Colors.black87, BlendMode.srcIn)),
            )),
        actions: [
          IconButton(onPressed: () {}, icon: Assets.icons.menuIcon.svg())
        ],
        title: context.tabsRouter.activeIndex == 1
            ? Text('search'.tr(),
                style: Theme.of(context)
                    .textTheme
                    .displayMedium!
                    .copyWith(fontSize: 18))
            : context.tabsRouter.activeIndex == 2
                ? Text('myCart'.tr(),
                    style: Theme.of(context)
                        .textTheme
                        .displayMedium!
                        .copyWith(fontSize: 18))
                : Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Assets.images.logo.image(),
                      SizedBox(width: 8),
                      Text('MEAT EMPIRE',
                          style: TextStyle(
                              color: AppColors.primary,
                              fontSize: 20,
                              fontWeight: FontWeight.bold))
                    ],
                  ),
      ),
      bottomNavigationBuilder: (context, tabsRouter) {
        return Container(
          height: 95,
          padding: const EdgeInsets.only(bottom: 20),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.1),
                spreadRadius: 5,
                blurRadius: 10,
                offset: const Offset(0, -3),
              ),
            ],
            borderRadius: const BorderRadius.vertical(
              top: Radius.circular(20),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              BottomNavItem(
                icon: Assets.icons.homeIcon.svg(
                  colorFilter: tabsRouter.activeIndex == 0 ? colorFilter : null,
                  height: iconHeight,
                ),
                label: 'products'.tr(),
                isActive: tabsRouter.activeIndex == 0,
                onTap: () => tabsRouter.setActiveIndex(0),
              ),
              BottomNavItem(
                icon: Assets.icons.searchIcon.svg(
                  colorFilter: tabsRouter.activeIndex == 1 ? colorFilter : null,
                  height: iconHeight,
                ),
                label: 'search'.tr(),
                isActive: tabsRouter.activeIndex == 1,
                onTap: () => tabsRouter.setActiveIndex(1),
              ),
              BottomNavItem(
                icon: Assets.icons.cartIcon.svg(
                  colorFilter: tabsRouter.activeIndex == 2 ? colorFilter : null,
                  height: iconHeight,
                ),
                label: 'cart'.tr(),
                isActive: tabsRouter.activeIndex == 2,
                onTap: () => tabsRouter.setActiveIndex(2),
              ),
              BottomNavItem(
                icon: Assets.icons.circulePersonIcon.svg(
                  colorFilter: tabsRouter.activeIndex == 3 ? colorFilter : null,
                  height: iconHeight,
                ),
                label: 'myAccount'.tr(),
                isActive: tabsRouter.activeIndex == 3,
                onTap: () => tabsRouter.setActiveIndex(3),
              ),
            ],
          ),
        );
      },
    );
  }
}

class BottomNavItem extends StatelessWidget {
  final Widget icon;
  final String label;
  final bool isActive;
  final VoidCallback onTap;

  const BottomNavItem({
    super.key,
    required this.icon,
    required this.label,
    required this.isActive,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon,
          SizedBox(height: 4),
          Text(
            label,
            style: TextStyle(
                color: isActive ? AppColors.primary : AppColors.gray,
                fontSize: 12,
                fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}
