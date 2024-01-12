import 'package:flutter/material.dart';
import 'package:tema/widgets/search_input.dart';

class HomeTeacherWidget extends StatefulWidget {
  const HomeTeacherWidget({super.key});

  @override
  State<HomeTeacherWidget> createState() => _HomeTeacherWidgetState();
}

class _HomeTeacherWidgetState extends State<HomeTeacherWidget> {
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
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.only(end: 8),
              child: CircleAvatar(
                radius: 21,
                backgroundColor:
                    Theme.of(context).colorScheme.onPrimary, // Border radius
                child: ClipOval(
                    child: Image.asset(
                        width: 36,
                        height: 36,
                        'assets/images/dummy_tutor_1.png')),
              ),
            ),
            Text(
              'Halo, Vestia!',
              style: TextStyle(
                  fontFamily: 'Nunito',
                  color: Theme.of(context).colorScheme.onPrimary,
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
                  color: Theme.of(context).colorScheme.onPrimary,
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
                  color: Theme.of(context).colorScheme.primary,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(16),
                      bottomRight: Radius.circular(16)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SearchInput(
                        controller: TextEditingController(),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    color: Theme.of(context).colorScheme.onPrimary,
                    surfaceTintColor: Theme.of(context).colorScheme.onPrimary,
                    clipBehavior: Clip.hardEdge,
                    child: InkWell(
                        splashColor:
                            Theme.of(context).colorScheme.primaryContainer,
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Jadwal Terdekat Anda",
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .primary),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8, vertical: 4),
                                    decoration: BoxDecoration(
                                      color: Colors.transparent,
                                      borderRadius: BorderRadius.circular(4),
                                      border: Border.all(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .primary, // Blue border
                                        width: 1,
                                      ),
                                    ),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment
                                          .start, // Align text to the left
                                      children: [
                                        Text(
                                          'Lokasi Siswa',
                                          style: TextStyle(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .primary, // Blue text color
                                            fontSize: 12,
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w500,
                                            height:
                                                1.4, // Line height adjustment for better readability
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Divider(),
                              Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: Theme.of(context)
                                            .colorScheme
                                            .primary),
                                    child: Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: Column(
                                        children: [
                                          Text(
                                            "9",
                                            style: TextStyle(
                                                fontSize: 28,
                                                fontWeight: FontWeight.w700,
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .onPrimary),
                                          ),
                                          Text(
                                            "Selasa",
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .onPrimary),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.only(
                                        start: 8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "14:00 - 16:00",
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .primary),
                                        ),
                                        Text(
                                          "Matematika",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w700,
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .primary),
                                        ),
                                        Text(
                                          "Udin Samsudin",
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .primary),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        )),
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(width: 8),
                    Card(
                      color: Theme.of(context).colorScheme.primary,
                      child: Image.asset("assets/images/card_home.png",
                          height: 160),
                    ),
                    Card(
                      color: Theme.of(context).colorScheme.primary,
                      child: Image.asset("assets/images/card_home.png",
                          height: 160),
                    ),
                    Card(
                      color: Theme.of(context).colorScheme.primary,
                      child: Image.asset("assets/images/card_home.png",
                          height: 160),
                    ),
                    Card(
                      color: Theme.of(context).colorScheme.primary,
                      child: Image.asset("assets/images/card_home.png",
                          height: 160),
                    ),
                    Card(
                      color: Theme.of(context).colorScheme.primary,
                      child: Image.asset("assets/images/card_home.png",
                          height: 160),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
