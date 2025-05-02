import 'package:flutter/material.dart';
import 'package:jobes/featuers/drawer_profile/ui/widgets/list_view_drawer.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      
      semanticLabel: 'Drawer',
      elevation: 0,
      width: 300,
      child: ListViewDrawer(),
    );
  }
}
