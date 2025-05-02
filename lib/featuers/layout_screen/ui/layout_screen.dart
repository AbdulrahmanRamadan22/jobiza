import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobes/core/theming/colors.dart';
import 'package:jobes/featuers/layout_screen/logic/cubit/layout_cubit.dart';
import 'package:jobes/featuers/layout_screen/logic/cubit/layout_state.dart';

class LayoutScreens extends StatelessWidget {
  const LayoutScreens({super.key});

  @override
  Widget build(BuildContext context) {
    // final cubit = BlocProvider.of<LayoutCubit>(context);
    final cubit = context.read<LayoutCubit>();

    return BlocConsumer<LayoutCubit, LayoutState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          body: cubit.screensButtom[cubit.currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: ColorsApp.wihteColor,
            elevation: 0,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: ColorsApp.darkBlue,
            unselectedItemColor: ColorsApp.lightGray,
            showUnselectedLabels: false,
            currentIndex: cubit.currentIndex,
            onTap: cubit.changeIndex,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.email),
                label: 'Messages',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.bookmark),
                label: 'Saved',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.notifications),
                label: 'Notification',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.category_rounded),
                label: 'Category',
              ),
            ],
          ),
        );
      },
    );
  }
}
