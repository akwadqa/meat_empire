import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meat_empire/gen/assets.gen.dart';
import 'package:meat_empire/src/extenssions/widget_extensions.dart';
import 'package:meat_empire/src/features/auth/application/auth_service.dart';
import 'package:meat_empire/src/features/home/data/home_repository.dart';
import 'package:meat_empire/src/features/home/domain/home/category/category.dart';
import 'package:meat_empire/src/routing/app_router.gr.dart';
import 'package:meat_empire/src/shared_widgets/app_cached_network_image.dart';
import 'package:meat_empire/src/theme/app_colors.dart';
import '../../../../shared_widgets/app_logo.dart';
import '../../../cart/application/cart_service.dart';
import '../../../categories/presentation/categories_screen/categories_screen.dart';

enum DrawerItems { home, myAccount, categories, categoryItem, logout }

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
        CategoriesRoute(),
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
      leading: _buildCartIcon(context),
      actions: [_buildPopupMenu(context)],
      title: _buildAppBarTitle(context),
    );
  }

  Widget _buildCartIcon(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final cartCount = ref.watch(cartCountProvider);
        final cartIcon = Assets.icons.cartIcon.svg(
          height: 22,
          width: 26,
          colorFilter: const ColorFilter.mode(Colors.black87, BlendMode.srcIn),
        );

        return IconButton(
          onPressed: () => context.tabsRouter.setActiveIndex(2),
          icon: cartCount > 0
              ? Badge(
                  backgroundColor: AppColors.primary,
                  label: Text(cartCount.toString()),
                  child: cartIcon,
                )
              : cartIcon,
        );
      },
    );
  }

  Widget _buildPopupMenu(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final isAuthenticated = ref.watch(isAuthinticatedProvider);
        // final menueData = ref.watch(homeProvider).asData;

        List<Category>? categories = (ref
                .watch(homeProvider)
                .asData
                ?.value
                .layout
                .where((d) => d.type == "categories")
                .first
                .data)
            ?.whereType<Category>()
            .toList();
        return PopupMenuButton<DrawerItems>(
          onSelected: (value) =>
              _handleMenuSelection(context, ref, value, categories),
          itemBuilder: (context) =>
              _buildMenuItems(context, isAuthenticated, categories, ref),
          icon: Assets.icons.menuIcon.svg(),
        );
      },
    );
  }

  List<PopupMenuEntry<DrawerItems>> _buildMenuItems(BuildContext context,
      bool isAuthenticated, List<Category>? categories, WidgetRef ref) {
    return [
      _popupMenuItem(
        value: DrawerItems.home,
        icon: Assets.icons.homeIcon.svg(),
        text: context.tr('home'),
      ),
      const PopupMenuDivider(),
      _popupMenuItem(
        value: DrawerItems.categories,
        icon: Assets.icons.categoriesSearchIcon.svg(),
        text: context.tr('categories'),
      ),
      if (categories != null)
        for (int i = 0; i < categories.length; i++)
          _popupMenuItem(
              value: DrawerItems.categoryItem,
              icon: SizedBox(
                height: 20,
                width: 20,
                child: AppCachedNetworkImage(
                  imageUrl: categories[i].imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
              text: categories[i].category,
              onTap: () => _onCategoryTap(context, ref, i, categories),
              isCategoryItem: true),
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

  void _handleMenuSelection(BuildContext context, WidgetRef ref,
      DrawerItems value, List<Category>? categories) {
    switch (value) {
      case DrawerItems.logout:
        ref.read(userDataProvider.notifier).removeData();
        break;
      case DrawerItems.home:
        context.tabsRouter.setActiveIndex(0);
        break;
      case DrawerItems.categories:
        context.tabsRouter.setActiveIndex(1);
        break;
      case DrawerItems.categoryItem:
        null;

        break;
      case DrawerItems.myAccount:
        context.tabsRouter.setActiveIndex(3);
        break;
    }
  }

  void _onCategoryTap(BuildContext context, WidgetRef ref, int index,
      List<Category> categories) {
    ref
        .read(selectedCategoryProvider.notifier)
        .setCategory(categories[index].categoryId);

    context.router.replaceAll([CategoriesRoute()]);
  }

  Widget _buildAppBarTitle(BuildContext context) {
    final activeIndex = context.tabsRouter.activeIndex;
    final titleKey = activeIndex == 1
        ? 'categories'
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
        icon: Assets.icons.categoriesSearchIcon,
        labelKey: 'categories',
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
    Function? onTap,
    bool isCategoryItem = false,
  }) {
    return PopupMenuItem(
      value: value,
      padding: EdgeInsets.zero,
      onTap: () {
        if (isCategoryItem) {
          onTap!();
        }
      },
      height: isCategoryItem ? 20 : kMinInteractiveDimension,
      child: Container(
        color: isCategoryItem ? AppColors.lightGray : Colors.transparent,
        padding: EdgeInsets.symmetric(horizontal: 12),
        child: Row(
          children: [
            icon,
            const SizedBox(width: 8),
            Text(text).symmetricPadding(vertical: 10),
          ],
        ),
      ),
    );
  }
}

// void selectedCategoryType() {
//               context.router.replaceAll([CategoriesRoute()]);
//               ref
//                   .read(selectedCategoryProvider.notifier)
//                   .setCategory(categories[i - 1].categoryId);
//             }
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
