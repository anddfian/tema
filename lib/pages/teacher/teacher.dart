import 'package:flutter/material.dart';
import 'package:tema/pages/teacher/home/home_teacher.dart';
import 'package:tema/pages/teacher/more/more_teacher.dart';
import 'package:tema/pages/teacher/taught_student/taught_student.dart';

class TeacherWidget extends StatefulWidget {
  const TeacherWidget({super.key});

  @override
  State<TeacherWidget> createState() => _TeacherWidgetState();
}

class _TeacherWidgetState extends State<TeacherWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  int currentPageIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: Theme.of(context).colorScheme.primary,
        backgroundColor: Theme.of(context).colorScheme.background,
        selectedIndex: currentPageIndex,
        destinations: <Widget>[
          NavigationDestination(
            selectedIcon: Icon(
              Icons.home,
              color: Theme.of(context).colorScheme.onPrimary,
              size: 24,
            ),
            icon: Icon(
              Icons.home_outlined,
              color: Theme.of(context).colorScheme.primary,
              size: 24,
            ),
            label: 'Home',
          ),
          NavigationDestination(
            selectedIcon: Icon(
              Icons.view_module,
              color: Theme.of(context).colorScheme.onPrimary,
              size: 24,
            ),
            icon: Badge(
              child: Icon(
                Icons.view_module_outlined,
                color: Theme.of(context).colorScheme.primary,
                size: 24,
              ),
            ),
            label: 'Siswa',
          ),
          NavigationDestination(
            selectedIcon: Icon(
              Icons.more_horiz,
              color: Theme.of(context).colorScheme.onPrimary,
              size: 24,
            ),
            icon: Badge(
              child: Icon(
                Icons.more_horiz_outlined,
                color: Theme.of(context).colorScheme.primary,
                size: 24,
              ),
            ),
            label: 'Lainnya',
          ),
        ],
      ),
      body: <Widget>[
        const HomeTeacherWidget(),
        const TaughtStudentWidget(),
        const MoreTeacherWidget(),
      ][currentPageIndex],
    );
  }
}
