import 'package:flutter/material.dart';
import 'package:spotify/common/helpers/is_dark_mode.dart';

class BasicAppBar extends StatelessWidget implements PreferredSizeWidget {
  const BasicAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Container(
          width: 50.0,
          height: 50.0,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: context.isDarkMode
                ? Colors.white.withOpacity(0.03)
                : Colors.black.withOpacity(0.04),
            shape: BoxShape.circle,
          ),
          child: Icon(
            Icons.arrow_back_ios_new,
            size: 20.0,
            color: context.isDarkMode ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
