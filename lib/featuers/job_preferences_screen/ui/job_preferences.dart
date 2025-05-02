import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobes/core/helper/extensions.dart';
import 'package:jobes/core/helper/size_box.dart';
import 'package:jobes/core/routing/routers.dart';
import 'package:jobes/core/theming/colors.dart';
import 'package:jobes/core/theming/styles.dart';
import 'package:jobes/core/widgets/button_app_text.dart';
import 'package:jobes/core/widgets/row_text_and_see_all.dart';

class JobPreferencesScreen extends StatefulWidget {
  const JobPreferencesScreen({super.key});

  @override
  State<JobPreferencesScreen> createState() => _JobPreferencesScreenState();
}

class _JobPreferencesScreenState extends State<JobPreferencesScreen> {
  // قائمة الوظائف
  final List<String> jobRoles = [
    'Product Designer',
    'UI/UX Designer',
    'Software Engineer',
    'Data Analyst',
    'Project Manager',
    'Marketing Specialist',
    'Business Analyst',
    'Developer'
  ];
// قائمة المواقع
  final List<String> selectLocation = [
    'Almaymoun',
    'Abu Tig',
    'Smasta',
    'Assiut',
    'Fayoum',
    'Mansoura',
  ];
  // قائمة الأجور
  final List<String> selectJobType = [
    'Any',
    'Full-Time',
    'Part-Time',
  ];
  // قائمة مكان العمل
  final List<String> selectOffice = [
    'Any',
    'On-Site',
    'Remote',
  ];

  Set<int> selectedJobIndices = {}; // تخزين الوظائف
  int selectedIndex = -1; // تخزين الموقع
  int selectetypeJob = -1; // تخزين نوع الوظيفة
  int selectedOffice = -1; //  تخزين مكان العمل

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: ColorsApp.backGroundWhite,
        scrolledUnderElevation: 0,
        title: Text('Job Preferences'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 24.0.w,
          vertical: 20.0.h,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ====== Job Roles Section ======
              RowTextAndSeeAll(
                text: 'Select Job Roles',
                seeAllText: 'See all',
                textStyle: TextStyles.font16Black,
                seeAllTextStyle: TextStyles.font14Gray,
                onPressed: () {},
              ),
              verticalSpace(15),
              Wrap(
                spacing: 10.w,
                runSpacing: 10.h,
                children: List.generate(
                  jobRoles.length,
                  (index) {
                    bool isSelected = selectedJobIndices.contains(index);
                    return AppTextButton(
                      borderRadius: 20.0,
                      backgroundColor: isSelected
                          ? ColorsApp.mainBlue
                          : ColorsApp.backGroundWhite,
                      borderColor: isSelected
                          ? ColorsApp.backGroundWhite
                          : ColorsApp.gray,
                      buttonWidth: 150.w,
                      buttonHeight: 50.h,
                      buttonText: jobRoles[index],
                      textStyle: isSelected
                          ? TextStyles.font13White
                          : TextStyles.font14Gray,
                      onPressed: () {
                        setState(
                          () {
                            if (isSelected) {
                              selectedJobIndices.remove(index); // إزالة التحديد
                            } else {
                              selectedJobIndices.add(index); // إضافة التحديد
                            }
                          },
                        );
                      },
                    );
                  },
                ),
              ),
              verticalSpace(20),
              // ====== Location Section ======
              RowTextAndSeeAll(
                text: 'Select Location',
                seeAllText: 'See all',
                textStyle: TextStyles.font16Black,
                seeAllTextStyle: TextStyles.font14Gray,
                onPressed: () {},
              ),
              verticalSpace(15),
              Wrap(
                spacing: 10.w, // المسافة الأفقية بين الأزرار
                runSpacing: 10.h, // المسافة الرأسية بين الأزرار
                children: List.generate(selectLocation.length, (index) {
                  return AppTextButton(
                    borderRadius: 20.0,
                    backgroundColor: selectedIndex == index
                        ? ColorsApp.mainBlue
                        : ColorsApp.backGroundWhite,
                    borderColor: selectedIndex == index
                        ? ColorsApp.backGroundWhite
                        : ColorsApp.gray,
                    buttonWidth: 95.w,
                    buttonHeight: 50.h,
                    buttonText: selectLocation[index],
                    textStyle: selectedIndex == index
                        ? TextStyles.font13White
                        : TextStyles.font14Gray,
                    onPressed: () {
                      setState(
                        () {
                          selectedIndex = index;
                        },
                      );
                    },
                  );
                }),
              ),
              // ====== Job Type Section ======
              RowTextAndSeeAll(
                text: 'Job Type',
                seeAllText: 'See all',
                textStyle: TextStyles.font16Black,
                seeAllTextStyle: TextStyles.font14Gray,
                onPressed: () {},
              ),
              verticalSpace(15),
              Wrap(
                spacing: 10.w, // المسافة الأفقية بين الأزرار
                runSpacing: 10.h, // المسافة الرأسية بين الأزرار
                children: List.generate(selectJobType.length, (index) {
                  return AppTextButton(
                    borderRadius: 20.0,
                    backgroundColor: selectetypeJob == index
                        ? ColorsApp.mainBlue
                        : ColorsApp.backGroundWhite,
                    borderColor: selectetypeJob == index
                        ? ColorsApp.backGroundWhite
                        : ColorsApp.gray,
                    buttonWidth: 95.w,
                    buttonHeight: 50.h,
                    buttonText: selectJobType[index],
                    textStyle: selectetypeJob == index
                        ? TextStyles.font13White
                        : TextStyles.font14Gray,
                    onPressed: () {
                      setState(
                        () {
                          selectetypeJob = index;
                        },
                      );
                    },
                  );
                }),
              ),
              verticalSpace(20),
              // ====== Office Section ======
              RowTextAndSeeAll(
                text: 'Office',
                seeAllText: 'See all',
                textStyle: TextStyles.font16Black,
                seeAllTextStyle: TextStyles.font14Gray,
                onPressed: () {},
              ),
              verticalSpace(15),
              Wrap(
                spacing: 10.w, // المسافة الأفقية بين الأزرار
                runSpacing: 10.h, // المسافة الرأسية بين الأزرار
                children: List.generate(selectOffice.length, (index) {
                  return AppTextButton(
                    borderRadius: 20.0,
                    backgroundColor: selectedOffice == index
                        ? ColorsApp.mainBlue
                        : ColorsApp.backGroundWhite,
                    borderColor: selectedOffice == index
                        ? ColorsApp.backGroundWhite
                        : ColorsApp.gray,
                    buttonWidth: 95.w,
                    buttonHeight: 50.h,
                    buttonText: selectOffice[index],
                    textStyle: selectedOffice == index
                        ? TextStyles.font13White
                        : TextStyles.font14Gray,
                    onPressed: () {
                      setState(
                        () {
                          selectedOffice = index;
                        },
                      );
                    },
                  );
                }),
              ),
              verticalSpace(20),
              // ====== Save Button ======
              AppTextButton(
                borderRadius: 5.r,
                buttonHeight: 65.h,
                buttonText: 'Save',
                textStyle: TextStyles.font16White,
                onPressed: () {
                  context.pushNamed(Routes.loginScreen);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
