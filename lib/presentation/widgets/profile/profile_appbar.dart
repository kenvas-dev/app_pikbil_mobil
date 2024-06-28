import 'package:flutter/material.dart';

class ProfileAppBar extends StatelessWidget implements PreferredSizeWidget {
  final VoidCallback voidCallback;
  const ProfileAppBar({super.key, required this.voidCallback});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading:false,
      centerTitle: false,
      title: Row(
        children: [
          IconButton(
              onPressed: voidCallback, icon: Icon(Icons.arrow_back_ios)),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
