import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobes/featuers/category_screen/ui/category_screen.dart';
import 'package:jobes/featuers/home_screen/ui/home_screen.dart';
import 'package:jobes/featuers/layout_screen/logic/cubit/layout_state.dart';
import 'package:jobes/featuers/message_screen/ui/message_screen.dart';
import 'package:jobes/featuers/notifications_screen/ui/notifications.dart';
import 'package:jobes/featuers/saved_screen/ui/saved_screen.dart';

class LayoutCubit extends Cubit<LayoutState> {
  LayoutCubit() : super(LayoutInitialState());
  static LayoutCubit get(context) => BlocProvider.of(context);
  int currentIndex = 0;
  List<Widget> screensButtom = [
    const HomeScreen(),
    const MessagesScreen(),
    const SavedScreen(),
    const NotificationScreen(),
    CategoryScreen()
  ];
  // required method to change the index

  void changeIndex(int index) {
    currentIndex = index;
    // emit state because we need to change the index
    emit(LayoutChangeBottomNavState());
  }
}
