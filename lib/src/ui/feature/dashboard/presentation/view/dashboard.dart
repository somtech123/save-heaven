// ignore_for_file: deprecated_member_use, depend_on_referenced_packages, use_build_context_synchronously

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:save_heaven/src/app/domain/manager/auth_manager/auth_client.dart';
import 'package:save_heaven/src/app/helper/local_state.dart';
import 'package:save_heaven/src/ui/feature/authetication/login/presentation/view/sign_in.dart';
import 'package:save_heaven/src/ui/feature/dashboard/dashboard.dart';
import 'package:save_heaven/src/ui/feature/dashboard/presentation/view/widget/grid_item.dart';
import 'package:save_heaven/src/ui/feature/dashboard/presentation/view/widget/list_item.dart';
import 'package:save_heaven/src/ui/shared/dialog/app_dialog.dart';
import 'package:save_heaven/src/ui/shared/primary_button.dart';
import 'package:save_heaven/src/utils/utils.dart';
import 'package:pull_down_button/pull_down_button.dart';

class Dashboard extends ConsumerStatefulWidget {
  const Dashboard({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _DashboardState();
}

class _DashboardState extends ConsumerState<Dashboard> {
  final dashProvider = StateNotifierProvider<DashboardProvider, DashboardState>(
      (ref) => DashboardProvider());

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.watch(dashProvider.notifier).getUserFile();
    });
  }

  @override
  Widget build(BuildContext context) {
    final bool changeView = ref.watch(dashProvider).isGrid;

    return CupertinoPageScaffold(
      backgroundColor: Appcolors.whiteColor,
      navigationBar: CupertinoNavigationBar(
          middle: const Text('Home'),
          backgroundColor: Appcolors.whiteColor,
          leading: IconButton(
              onPressed: () async =>
                  ref.read(dashProvider.notifier).uploadFile(context),
              icon: Icon(CupertinoIcons.add, size: 23.w)),
          trailing: PullDownButton(
            itemBuilder: (context) => [
              PullDownMenuHeader(
                leading: ColoredBox(
                  color: CupertinoColors.systemBlue.resolveFrom(context),
                ),
                title: 'Profile',
                subtitle: 'Tap to open',
                onTap: () {},
                icon: CupertinoIcons.profile_circled,
              ),
              const PullDownMenuDivider.large(),
              PullDownMenuItem(
                title: changeView ? 'View as Gallery' : 'View as List',
                onTap: () {
                  ref.read(dashProvider.notifier).switchView();
                },
                icon: changeView
                    ? CupertinoIcons.rectangle_grid_2x2
                    : CupertinoIcons.list_dash,

                //list dash
              ),
              const PullDownMenuDivider(),
              PullDownMenuItem(
                title: 'Select Items',
                onTap: () {},
                icon: CupertinoIcons.checkmark_circle,
              ),
              PullDownMenuItem(
                title: 'View as Attachement',
                onTap: () {},
                icon: Icons.attach_file,
              ),
              PullDownMenuItem(
                title: 'Logout',
                onTap: () => simpleDialog(
                  context,
                  title: Text(
                    'Logout',
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  content: Column(
                    children: [
                      SizedBox(height: 10.h),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Text(
                          'Are you sure you want to logout? ',
                          textAlign: TextAlign.center,
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall!
                              .copyWith(
                                  fontSize: 15, fontWeight: FontWeight.w500),
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(
                            width: 100.w,
                            child: PrimaryButton(
                              label: 'Dismiss',
                              onPressed: () => pop(context),
                            ),
                          ),
                          SizedBox(width: 10.w),
                          SizedBox(
                            width: 95.w,
                            child: PrimaryButton(
                              label: 'Okay',
                              onPressed: () async {
                                await AuthClient.instance.logOut();
                                pushReplacement(context,
                                    destination: const SiginScreen());
                              },
                              backgroundColor: Appcolors.errorColor,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                icon: Icons.logout,
                isDestructive: true,
              ),
              const PullDownMenuDivider.large(),
              PullDownMenuActionsRow.medium(
                items: [
                  PullDownMenuItem(
                    onTap: () {},
                    title: 'Reply',
                    icon: CupertinoIcons.arrowshape_turn_up_left,
                  ),
                  PullDownMenuItem(
                    onTap: () {},
                    title: 'Copy',
                    icon: CupertinoIcons.doc_on_doc,
                  ),
                  PullDownMenuItem(
                    onTap: () {},
                    title: 'Edit',
                    icon: CupertinoIcons.pencil,
                  ),
                ],
              ),
            ],
            buttonBuilder: (context, showMenu) => CupertinoButton(
              onPressed: showMenu,
              padding: EdgeInsets.zero,
              child: const Icon(CupertinoIcons.ellipsis_circle),
            ),
          )),
      child: ref.watch(dashProvider).loadingState == LoadingState.loading
          ? const Center(
              child: CupertinoActivityIndicator(),
            )
          : WillPopScope(
              onWillPop: () async {
                return true;
              },
              child: SafeArea(
                  child: Column(
                children: [
                  ref.watch(dashProvider).userFile.isEmpty
                      ? SizedBox(
                          height: MediaQuery.of(context).size.height * 0.8,
                          child: Center(
                            child: Text(
                              'you have no file yet ',
                              textAlign: TextAlign.center,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
                            ),
                          ),
                        )
                      : Expanded(
                          child: !changeView
                              ? DashbordGridItem(
                                  data: ref.read(dashProvider).userFile)
                              : DashbaordListItem(
                                  data: ref.read(dashProvider).userFile))
                  //
                ],
              )),
            ),
    );
  }
}
