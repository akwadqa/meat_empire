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

  static const double _iconHeight = 25.0;
  static const ColorFilter _activeColorFilter =
      ColorFilter.mode(AppColors.primary, BlendMode.srcIn);

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      extendBody: true,
      routes: [
        LayoutRoute(),
        SearchRoute(),
        CartRoute(),
        MainAccountRoute(),
      ],
      appBarBuilder: (context, _) => _buildAppBar(context),
      bottomNavigationBuilder: (context, tabsRouter) =>
          _buildBottomNavigation(context, tabsRouter),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.white,
      leading: _buildCartIcon(),
      actions: [_buildPopupMenu(context)],
      title: _buildAppBarTitle(context),
    );
  }

  Widget _buildCartIcon() {
    return IconButton(
      onPressed: () {},
      icon: Badge(
        backgroundColor: AppColors.primary,
        label: const Text(''),
        child: Assets.icons.cartIcon.svg(
          height: 22,
          width: 26,
          colorFilter: const ColorFilter.mode(Colors.black87, BlendMode.srcIn),
        ),
      ),
    );
  }

  Widget _buildPopupMenu(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final isAuthenticated = ref.watch(isAuthinticatedProvider);
        return PopupMenuButton<DrawerItems>(
          onSelected: (value) => _handleMenuSelection(context, ref, value),
          itemBuilder: (context) => _buildMenuItems(context, isAuthenticated),
          icon: Assets.icons.menuIcon.svg(),
        );
      },
    );
  }

  List<PopupMenuEntry<DrawerItems>> _buildMenuItems(
      BuildContext context, bool isAuthenticated) {
    return [
      _popupMenuItem(
        value: DrawerItems.home,
        icon: Assets.icons.homeIcon.svg(),
        text: context.tr('home'),
      ),
      const PopupMenuDivider(),
      _popupMenuItem(
        value: DrawerItems.myAccount,
        icon: Assets.icons.circulePersonIcon.svg(),
        text: context.tr('myAccount'),
      ),
      if (isAuthenticated) ...[
        const PopupMenuDivider(),
        _popupMenuItem(
          value: DrawerItems.logout,
          icon: Assets.icons.logoutIcon.svg(),
          text: context.tr('logout'),
        ),
      ],
    ];
  }

  void _handleMenuSelection(
      BuildContext context, WidgetRef ref, DrawerItems value) {
    switch (value) {
      case DrawerItems.logout:
        ref.read(userTokenProvider.notifier).removeToken();
        break;
      case DrawerItems.home:
        context.tabsRouter.setActiveIndex(0);
        break;
      case DrawerItems.myAccount:
        context.tabsRouter.setActiveIndex(3);
        break;
    }
  }

  Widget _buildAppBarTitle(BuildContext context) {
    final activeIndex = context.tabsRouter.activeIndex;
    final titleKey = activeIndex == 1
        ? 'search'
        : activeIndex == 2
            ? 'myCart'
            : null;

    return titleKey != null
        ? Text(
            context.tr(titleKey),
            style: Theme.of(context)
                .textTheme
                .displayMedium!
                .copyWith(fontSize: 18),
          )
        : const AppLogo();
  }

  Widget _buildBottomNavigation(BuildContext context, TabsRouter tabsRouter) {
    final items = [
      _buildBottomNavItem(
        context,
        tabsRouter,
        index: 0,
        icon: Assets.icons.homeIcon,
        labelKey: 'products',
      ),
      _buildBottomNavItem(
        context,
        tabsRouter,
        index: 1,
        icon: Assets.icons.searchIcon,
        labelKey: 'search',
      ),
      _buildBottomNavItem(
        context,
        tabsRouter,
        index: 2,
        icon: Assets.icons.cartIcon,
        labelKey: 'cart',
      ),
      _buildBottomNavItem(
        context,
        tabsRouter,
        index: 3,
        icon: Assets.icons.circulePersonIcon,
        labelKey: 'myAccount',
      ),
    ];

    return Container(
      height: 80,
      padding: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(25),
            spreadRadius: 5,
            blurRadius: 10,
            offset: const Offset(0, -3),
          ),
        ],
        borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: items,
      ),
    );
  }

  Widget _buildBottomNavItem(
    BuildContext context,
    TabsRouter tabsRouter, {
    required int index,
    required SvgGenImage icon,
    required String labelKey,
  }) {
    final isActive = tabsRouter.activeIndex == index;
    return BottomNavItem(
      icon: icon.svg(
        height: _iconHeight,
        colorFilter: isActive ? _activeColorFilter : null,
      ),
      label: context.tr(labelKey),
      isActive: isActive,
      onTap: () => tabsRouter.setActiveIndex(index),
    );
  }

  PopupMenuItem<DrawerItems> _popupMenuItem({
    required DrawerItems value,
    required Widget icon,
    required String text,
  }) {
    return PopupMenuItem(
      value: value,
      child: Row(
        children: [
          icon,
          const SizedBox(width: 8),
          Text(text),
        ],
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
          const SizedBox(height: 4),
          Text(
            label,
            style: TextStyle(
              color: isActive ? AppColors.primary : AppColors.gray,
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
