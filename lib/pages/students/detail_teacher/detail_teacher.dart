import 'package:flutter/material.dart';
import 'package:tema/pages/students/hire_teacher/hire_teacher.dart';

class DetailTeacherWidget extends StatefulWidget {
  const DetailTeacherWidget({super.key});

  @override
  State<DetailTeacherWidget> createState() => _DetailTeacherWidgetState();
}

class _DetailTeacherWidgetState extends State<DetailTeacherWidget> {
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
      backgroundColor: Theme.of(context).colorScheme.primary,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          "Detail Pengajar",
          style: TextStyle(
            fontFamily: 'Nunito',
            color: Theme.of(context).colorScheme.onPrimary,
            fontSize: 16,
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsetsDirectional.only(end: 16),
            child: IconButton(
                icon: Icon(
                  Icons.more_vert,
                  color: Theme.of(context).colorScheme.onPrimary,
                  size: 24,
                ),
                tooltip: 'Aksi Lainnya',
                onPressed: () {}),
          )
        ],
      ),
      floatingActionButton: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: FloatingActionButton.extended(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const HireTeacherWidget()),
                );
              },
              backgroundColor: Theme.of(context).colorScheme.primary,
              label: Row(
                children: [
                  Icon(
                    Icons.calendar_month,
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    'Atur Jadwal',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.onPrimary,
                      fontSize: 16,
                    ),
                  ),
                ],
              )),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            decoration:
                BoxDecoration(color: Theme.of(context).colorScheme.primary),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: CircleAvatar(
                    radius: 64,
                    backgroundColor: Theme.of(context)
                        .colorScheme
                        .onPrimary, // Border radius
                    child: ClipOval(
                        child: Image.asset(
                            width: 120,
                            height: 120,
                            'assets/images/dummy_tutor_1.png')),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 24.0),
                  child: Text(
                    "Vestia Zeta",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Theme.of(context).colorScheme.onPrimary),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(28),
                    topRight: Radius.circular(28)),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0, 16, 16),
                child: ListView(
                  children: [
                    SizedBox(
                      height: 32,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const IntrinsicHeight(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Spacer(),
                              Column(
                                children: [
                                  Text(
                                    "3",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    "Siswa",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500),
                                  )
                                ],
                              ),
                              Spacer(),
                              VerticalDivider(),
                              Spacer(),
                              Column(
                                children: [
                                  Text(
                                    "07:00-17:00",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    "Jam Kerja",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500),
                                  )
                                ],
                              ),
                              Spacer(),
                              VerticalDivider(),
                              Spacer(),
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Color(0xFFEEAA00),
                                      ),
                                      Text(
                                        "4.8",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    "Rating",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                              Spacer(),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        const Text(
                          "Deskripsi: ",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 4.0),
                          child: Text(
                            "Saya seorang mahasiswa berumur 19 tahun, dan suka dangan sejarah. Saya akan mengajarkan anak didik saya tentang sejarah baik di Indonesia maupun sejarah dunia dengan cara yang asik dan menyenangkan.",
                            textAlign: TextAlign.justify,
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        const Text(
                          "Mata Pelajaran: ",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 4.0),
                          child: Text("Fisika, Matematika"),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        const Text(
                          "Lokasi: ",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 4.0),
                          child: Text("Jl. Pramuka 16A No.27"),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        const Text(
                          "Kontak: ",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 4.0),
                          child: Text(
                              "WhatsApp | 0812-3456-7890\nGmail | ray21mond@gmail.com"),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
