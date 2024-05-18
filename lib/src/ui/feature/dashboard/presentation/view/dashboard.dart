// ignore_for_file: deprecated_member_use

import 'package:flutter/cupertino.dart';
import 'package:save_heaven/src/utils/utils.dart';
import 'package:pull_down_button/pull_down_button.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: Appcolors.whiteColor,
      navigationBar: CupertinoNavigationBar(
          middle: const Text('Home'),
          backgroundColor: Appcolors.whiteColor,
          trailing: PullDownButton(
            itemBuilder: (context) => [
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
              const PullDownMenuDivider.large(),
              PullDownMenuItem(
                title: 'Menu item',
                onTap: () {},
              ),
              const PullDownMenuDivider(),
              PullDownMenuItem(
                title: 'Menu item 2',
                onTap: () {},
              ),
            ],
            buttonBuilder: (context, showMenu) => CupertinoButton(
              onPressed: showMenu,
              padding: EdgeInsets.zero,
              child: const Icon(CupertinoIcons.ellipsis_circle),
            ),
          )
          //  IconButton(
          //   onPressed: () {

          //   },
          //   icon: const Icon(CupertinoIcons.settings),
          // )
          ),
      child: const SafeArea(child: Column()),
    );
  }
}
