import 'package:flutter/material.dart';
import 'package:tema/widgets/card_teacher.dart';
import 'package:tema/widgets/search_input.dart';

class ExploreStudentWidget extends StatefulWidget {
  const ExploreStudentWidget({super.key});

  @override
  State<ExploreStudentWidget> createState() => _ExploreStudentWidgetState();
}

class _ExploreStudentWidgetState extends State<ExploreStudentWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

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
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.onPrimary,
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.all(8),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(0),
                child: Image.asset(
                  'assets/images/profile.png',
                  width: 36,
                  height: 36,
                ),
              ),
            ),
            Text(
              'Udin Kanaeru',
              style: TextStyle(
                  fontFamily: 'Nunito',
                  color: Theme.of(context).colorScheme.primary,
                  fontSize: 18,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsetsDirectional.only(end: 16),
            child: IconButton(
                icon: Icon(
                  Icons.notifications_outlined,
                  color: Theme.of(context).colorScheme.primary,
                  size: 24,
                ),
                tooltip: 'Notifications',
                onPressed: () {}),
          )
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
        top: true,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.onPrimary,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(16),
                      bottomRight: Radius.circular(16)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                              color:
                                  Theme.of(context).colorScheme.surfaceVariant,
                              borderRadius: BorderRadius.circular(16),
                              border: Border.all(
                                  color:
                                      Theme.of(context).colorScheme.surface)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SearchInput(
                              controller: TextEditingController(),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: IconButton.filled(
                            onPressed: () {},
                            icon: const Icon(Icons.pin_drop_outlined)),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Column(
                children: [
                  CardTeacher(
                      imageUrl: "assets/images/dummy_tutor_1.png",
                      name: "Vestia Zeta",
                      subject: "Fisika, Matematika, Kimia"),
                  CardTeacher(
                      imageUrl: "assets/images/dummy_tutor_1.png",
                      name: "Vestia Zeta",
                      subject: "Fisika, Matematika, Kimia"),
                  CardTeacher(
                      imageUrl: "assets/images/dummy_tutor_1.png",
                      name: "Vestia Zeta",
                      subject: "Fisika, Matematika, Kimia"),
                  CardTeacher(
                      imageUrl: "assets/images/dummy_tutor_1.png",
                      name: "Vestia Zeta",
                      subject: "Fisika, Matematika, Kimia"),
                  CardTeacher(
                      imageUrl: "assets/images/dummy_tutor_1.png",
                      name: "Vestia Zeta",
                      subject: "Fisika, Matematika, Kimia"),
                  CardTeacher(
                      imageUrl: "assets/images/dummy_tutor_1.png",
                      name: "Vestia Zeta",
                      subject: "Fisika, Matematika, Kimia"),
                  CardTeacher(
                      imageUrl: "assets/images/dummy_tutor_1.png",
                      name: "Vestia Zeta",
                      subject: "Fisika, Matematika, Kimia"),
                  CardTeacher(
                      imageUrl: "assets/images/dummy_tutor_1.png",
                      name: "Vestia Zeta",
                      subject: "Fisika, Matematika, Kimia"),
                  CardTeacher(
                      imageUrl: "assets/images/dummy_tutor_1.png",
                      name: "Vestia Zeta",
                      subject: "Fisika, Matematika, Kimia"),
                  CardTeacher(
                      imageUrl: "assets/images/dummy_tutor_1.png",
                      name: "Vestia Zeta",
                      subject: "Fisika, Matematika, Kimia"),
                  CardTeacher(
                      imageUrl: "assets/images/dummy_tutor_1.png",
                      name: "Vestia Zeta",
                      subject: "Fisika, Matematika, Kimia"),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
