import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meat_empire/gen/assets.gen.dart';
import 'package:meat_empire/src/features/auth/application/auth_service.dart';
import 'package:meat_empire/src/routing/app_router.gr.dart';
import 'package:meat_empire/src/theme/app_colors.dart';

import '../../../../shared_widgets/app_logo.dart';

enum DrawerItems { home, myAccount, logout }

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const iconHeight = 25.0;
    const colorFilter = ColorFilter.mode(AppColors.primary, BlendMode.srcIn);
    return AutoTabsScaffold(
      extendBody: true,
      routes: [LayoutRoute(), SearchRoute(), CartRoute(), MainAccountRoute()],
      appBarBuilder: (context, _) => AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {},
            icon: Badge(
              backgroundColor: AppColors.primary,
              label: Text(''),
              child: Assets.icons.cartIcon.svg(
                  height: 22,
                  width: 26,
                  colorFilter:
                      ColorFilter.mode(Colors.black87, BlendMode.srcIn)),
            )),
        actions: [
          Consumer(builder: (context, ref, child) {
            return PopupMenuButton<DrawerItems>(
              onSelected: (value) {
                if (value == DrawerItems.logout) {
                  ref.read(userTokenProvider.notifier).removeToken();
                }
              },
              itemBuilder: (BuildContext context) =>
                  <PopupMenuEntry<DrawerItems>>[
                _popupMenuItem(
                    value: DrawerItems.home,
                    icon: Assets.icons.homeIcon.svg(),
                    text: context.tr('home')),
                _popupMenuItem(
                    value: DrawerItems.myAccount,
                    icon: Assets.icons.circulePersonIcon.svg(),
                    text: context.tr('myAccount')),
                if (ref.watch(isAuthinticatedProvider))
                  _popupMenuItem(
                      value: DrawerItems.logout,
                      icon: Assets.icons.logoutIcon.svg(),
                      text: context.tr('logout')),
              ],
              icon: Assets.icons.menuIcon.svg(),
            );
          }),
        ],
        title: context.tabsRouter.activeIndex == 1
            ? Text(context.tr('search'),
                style: Theme.of(context)
                    .textTheme
                    .displayMedium!
                    .copyWith(fontSize: 18))
            : context.tabsRouter.activeIndex == 2
                ? Text(context.tr('myCart'),
                    style: Theme.of(context)
                        .textTheme
                        .displayMedium!
                        .copyWith(fontSize: 18))
                : AppLogo(),
      ),
      bottomNavigationBuilder: (context, tabsRouter) {
        return Container(
          height: 75,
          padding: const EdgeInsets.only(bottom: 10),
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
                label: context.tr('products'),
                isActive: tabsRouter.activeIndex == 0,
                onTap: () => tabsRouter.setActiveIndex(0),
              ),
              BottomNavItem(
                icon: Assets.icons.searchIcon.svg(
                  colorFilter: tabsRouter.activeIndex == 1 ? colorFilter : null,
                  height: iconHeight,
                ),
                label: context.tr('search'),
                isActive: tabsRouter.activeIndex == 1,
                onTap: () => tabsRouter.setActiveIndex(1),
              ),
              BottomNavItem(
                icon: Assets.icons.cartIcon.svg(
                  colorFilter: tabsRouter.activeIndex == 2 ? colorFilter : null,
                  height: iconHeight,
                ),
                label: context.tr('cart'),
                isActive: tabsRouter.activeIndex == 2,
                onTap: () => tabsRouter.setActiveIndex(2),
              ),
              BottomNavItem(
                icon: Assets.icons.circulePersonIcon.svg(
                  colorFilter: tabsRouter.activeIndex == 3 ? colorFilter : null,
                  height: iconHeight,
                ),
                label: context.tr('myAccount'),
                isActive: tabsRouter.activeIndex == 3,
                onTap: () => tabsRouter.setActiveIndex(3),
              ),
            ],
          ),
        );
      },
    );
  }

  PopupMenuItem<DrawerItems> _popupMenuItem(
      {required DrawerItems value,
      required Widget icon,
      required String text,
      void Function()? onTap}) {
    return PopupMenuItem(
      onTap: onTap,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: 8,
        children: [icon, Text(text)],
      ),
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
