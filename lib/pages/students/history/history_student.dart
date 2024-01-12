import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:tema/widgets/history_card_teacher.dart';
import 'package:tema/widgets/search_input.dart';

class HistoryStudentWidget extends StatefulWidget {
  const HistoryStudentWidget({super.key});

  @override
  State<HistoryStudentWidget> createState() => _HistoryStudentWidgetState();
}

class _HistoryStudentWidgetState extends State<HistoryStudentWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  final List<String> dateFilter = [
    'Hari Ini',
    'Minggu Ini',
    'Bulan Ini',
    'Tahun Ini',
  ];
  String? selectedDateFilter;

  final List<String> statusFilter = [
    'Sukses',
    'Berlangsung',
    'Batal',
  ];
  String? selectedStatusFilter;

  final List<String> courseFilter = [
    'Sosiologi',
    'Matematika',
    'Fisika',
    'Kimia',
  ];
  String? selectedCourseFilter;

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
            crossAxisAlignment: CrossAxisAlignment.start,
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
                    child: Text(
                      "Riwayat",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Theme.of(context).colorScheme.primary),
                    )),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                height: 32,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                      padding: const EdgeInsetsDirectional.only(start: 8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.primary,
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(
                                color:
                                    Theme.of(context).colorScheme.onPrimary)),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton2<String>(
                            isExpanded: true,
                            hint: Text(
                              'Semua Status',
                              style: TextStyle(
                                fontSize: 14,
                                color: Theme.of(context).colorScheme.onPrimary,
                              ),
                            ),
                            items: statusFilter
                                .map((String item) => DropdownMenuItem<String>(
                                      value: item,
                                      child: Text(
                                        item,
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Theme.of(context)
                                                .colorScheme
                                                .primary),
                                      ),
                                    ))
                                .toList(),
                            value: selectedStatusFilter,
                            onChanged: (String? value) {
                              setState(() {
                                selectedStatusFilter = value;
                              });
                            },
                            buttonStyleData: const ButtonStyleData(
                              padding: EdgeInsets.symmetric(horizontal: 16),
                              height: 40,
                              width: 165,
                            ),
                            menuItemStyleData: const MenuItemStyleData(
                              height: 40,
                            ),
                            iconStyleData: IconStyleData(
                                iconEnabledColor:
                                    Theme.of(context).colorScheme.onPrimary),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.only(start: 8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(
                                color: Theme.of(context).colorScheme.primary)),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton2<String>(
                            isExpanded: true,
                            hint: Text(
                              'Semua Tanggal',
                              style: TextStyle(
                                fontSize: 14,
                                color: Theme.of(context).colorScheme.primary,
                              ),
                            ),
                            items: dateFilter
                                .map((String item) => DropdownMenuItem<String>(
                                      value: item,
                                      child: Text(
                                        item,
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Theme.of(context)
                                                .colorScheme
                                                .primary),
                                      ),
                                    ))
                                .toList(),
                            value: selectedDateFilter,
                            onChanged: (String? value) {
                              setState(() {
                                selectedDateFilter = value;
                              });
                            },
                            buttonStyleData: const ButtonStyleData(
                              padding: EdgeInsets.symmetric(horizontal: 16),
                              height: 40,
                              width: 165,
                            ),
                            menuItemStyleData: const MenuItemStyleData(
                              height: 40,
                            ),
                            iconStyleData: IconStyleData(
                                iconEnabledColor:
                                    Theme.of(context).colorScheme.primary),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.only(start: 8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(
                                color: Theme.of(context).colorScheme.primary)),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton2<String>(
                            isExpanded: true,
                            hint: Text(
                              'Semua Pelajaran',
                              style: TextStyle(
                                fontSize: 14,
                                color: Theme.of(context).colorScheme.primary,
                              ),
                            ),
                            items: courseFilter
                                .map((String item) => DropdownMenuItem<String>(
                                      value: item,
                                      child: Text(
                                        item,
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Theme.of(context)
                                                .colorScheme
                                                .primary),
                                      ),
                                    ))
                                .toList(),
                            value: selectedCourseFilter,
                            onChanged: (String? value) {
                              setState(() {
                                selectedCourseFilter = value;
                              });
                            },
                            buttonStyleData: const ButtonStyleData(
                              padding: EdgeInsets.symmetric(horizontal: 16),
                              height: 40,
                              width: 180,
                            ),
                            menuItemStyleData: const MenuItemStyleData(
                              height: 40,
                            ),
                            iconStyleData: IconStyleData(
                                iconEnabledColor:
                                    Theme.of(context).colorScheme.primary),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  HistoryCardTeacher(
                    onPressed: () {},
                    imageUrl: "assets/images/dummy_tutor_1.png",
                    name: "Vestia Zeta",
                    subject: "Fisika, Matematika",
                    status: "ongoing",
                    startDate: "7 Jan 2024",
                    endDate: "7 Feb 2024",
                  ),
                  HistoryCardTeacher(
                    onPressed: () {},
                    imageUrl: "assets/images/dummy_tutor_1.png",
                    name: "Vestia Zeta",
                    subject: "Fisika, Matematika",
                    status: "ongoing",
                    startDate: "7 Jan 2024",
                    endDate: "7 Feb 2024",
                  ),
                  HistoryCardTeacher(
                    onPressed: () {},
                    imageUrl: "assets/images/dummy_tutor_1.png",
                    name: "Vestia Zeta",
                    subject: "Fisika, Matematika",
                    status: "ongoing",
                    startDate: "7 Jan 2024",
                    endDate: "7 Feb 2024",
                  ),
                  HistoryCardTeacher(
                    onPressed: () {},
                    imageUrl: "assets/images/dummy_tutor_1.png",
                    name: "Vestia Zeta",
                    subject: "Fisika, Matematika",
                    status: "done",
                    startDate: "7 Des 2023",
                    endDate: "7 Jan 2024",
                  ),
                  HistoryCardTeacher(
                    onPressed: () {},
                    imageUrl: "assets/images/dummy_tutor_1.png",
                    name: "Vestia Zeta",
                    subject: "Fisika, Matematika",
                    status: "done",
                    startDate: "7 Sep 2023",
                    endDate: "7 Nov 2023",
                  ),
                  HistoryCardTeacher(
                    onPressed: () {},
                    imageUrl: "assets/images/dummy_tutor_1.png",
                    name: "Vestia Zeta",
                    subject: "Fisika, Matematika",
                    status: "done",
                    startDate: "7 Apr 2023",
                    endDate: "7 May 2023",
                  ),
                  HistoryCardTeacher(
                    onPressed: () {},
                    imageUrl: "assets/images/dummy_tutor_1.png",
                    name: "Vestia Zeta",
                    subject: "Fisika, Matematika",
                    status: "cancel",
                  ),
                  HistoryCardTeacher(
                    onPressed: () {},
                    imageUrl: "assets/images/dummy_tutor_1.png",
                    name: "Vestia Zeta",
                    subject: "Fisika, Matematika",
                    status: "cancel",
                  ),
                  HistoryCardTeacher(
                    onPressed: () {},
                    imageUrl: "assets/images/dummy_tutor_1.png",
                    name: "Vestia Zeta",
                    subject: "Fisika, Matematika",
                    status: "cancel",
                  ),
                  HistoryCardTeacher(
                    onPressed: () {},
                    imageUrl: "assets/images/dummy_tutor_1.png",
                    name: "Vestia Zeta",
                    subject: "Fisika, Matematika",
                    status: "cancel",
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
