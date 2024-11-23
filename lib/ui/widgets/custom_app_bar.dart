import 'package:flutter/material.dart';
import 'package:oau_padi/shared/theme/app_theme.dart';
import 'package:oau_padi/ui/widgets/icon_container.dart';

class CustomAppBar extends StatelessWidget {
  final Widget title;
  final Widget? leading;
  final bool automaticallyImplyLeading;
  final List<Widget>? actions;
  final bool centerTile;
  final Function()? onTap;
  const CustomAppBar(
    {
      required this.title,
      this.actions,
      this.leading,
      this.automaticallyImplyLeading = true,
      this.centerTile = true,
      this.onTap,
      Key? key
      }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      surfaceTintColor: Colors.transparent,
      centerTitle: centerTile,
      title: Padding(padding: const EdgeInsets.symmetric(horizontal: 20),child:Row(mainAxisAlignment: centerTile ? MainAxisAlignment.spaceBetween : MainAxisAlignment.start, children: [
        if(automaticallyImplyLeading)
          IconContainer(width: 40, height: 40, size: 15,isRound: false,borderColor: AppTheme.textColor4, backgroundColor: Colors.transparent,icon: , onPressed: onPressed)
      ]) ,),
    );
  }
}
