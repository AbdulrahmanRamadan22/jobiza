import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobes/core/theming/colors.dart';
import 'package:jobes/core/theming/styles.dart';

class ListViewCardsJobTypes extends StatefulWidget {
  const ListViewCardsJobTypes({super.key});

  @override
  State<ListViewCardsJobTypes> createState() => _ListViewCardsJobTypes();
}

class _ListViewCardsJobTypes extends State<ListViewCardsJobTypes> {
  final List<bool> isSelectedList = List.generate(11, (index) => false);

  /// قائمة الوظائف، تحتوي على اسم الوظيفة + الأيقونة
  final List<Map<String, dynamic>> jobTypes = [
    {'title': 'Designer', 'icon': Icons.design_services},
    {'title': 'Developer', 'icon': Icons.developer_mode},
    {'title': 'Administrative  ', 'icon': Icons.settings_applications_sharp},
    {'title': 'Marketer', 'icon': Icons.campaign},
    {'title': 'Management', 'icon': Icons.people},
    {'title': 'Full-Time', 'icon': Icons.engineering},
    {'title': 'Part-Time', 'icon': Icons.calculate},
    {'title': 'Contract', 'icon': Icons.gavel},
    {'title': 'Internship', 'icon': Icons.local_hospital},
    {'title': 'Freelance', 'icon': Icons.school},
    {'title': 'Others', 'icon': Icons.edit},
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 468.h,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.zero,
        itemCount: jobTypes.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                isSelectedList[index] = !isSelectedList[index];
              });
            },
            child: Card(
              color: ColorsApp.wihteColor,
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
                child: ListTile(
                  title: Text(jobTypes[index]['title'],
                      style: TextStyles.font16Black),
                  leading: Icon(
                    jobTypes[index]['icon'],
                    color: ColorsApp.lightBlueGray,
                    size: 26.r,
                  ),
                  trailing: IconButton(
                    onPressed: () {
                      setState(() {
                        isSelectedList[index] = !isSelectedList[index];
                      });
                    },
                    icon: Icon(
                      Icons.check_circle,
                      size: 26.r,
                      color: isSelectedList[index]
                          ? ColorsApp.lightBlue
                          : ColorsApp.lightBlueGray,
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
