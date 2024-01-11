import 'package:flutter/material.dart';
import 'package:tema/pages/students/explore/explore_student.dart';
import 'package:tema/pages/students/history/history_student.dart';
import 'package:tema/pages/students/home/home_student.dart';
import 'package:tema/pages/students/more/more_student.dart';

class StudentWidget extends StatefulWidget {
  const StudentWidget({super.key});

  @override
  State<StudentWidget> createState() => _StudentWidgetState();
}

class _StudentWidgetState extends State<StudentWidget> {
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
            label: 'Jelajah',
          ),
          NavigationDestination(
            selectedIcon: Icon(
              Icons.history,
              color: Theme.of(context).colorScheme.onPrimary,
              size: 24,
            ),
            icon: Badge(
              child: Icon(
                Icons.history_outlined,
                color: Theme.of(context).colorScheme.primary,
                size: 24,
              ),
            ),
            label: 'Riwayat',
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
        const HomeStudentWidget(),
        const ExploreStudentWidget(),
        const HistoryStudentWidget(),
        const MoreStudentWidget(),
      ][currentPageIndex],
    );
  }
}
