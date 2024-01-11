import 'package:flutter/material.dart';
import 'package:tema/widgets/list_setting.dart';
import 'package:tema/widgets/search_input.dart';

class MoreStudentWidget extends StatefulWidget {
  const MoreStudentWidget({super.key});

  @override
  State<MoreStudentWidget> createState() => _MoreStudentWidgetState();
}

class _MoreStudentWidgetState extends State<MoreStudentWidget> {
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
        toolbarHeight: 128,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.only(end: 16.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(0),
                child: Image.asset(
                  'assets/images/profile.png',
                  width: 64,
                  height: 64,
                ),
              ),
            ),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                'Udin Kanaeru',
                style: TextStyle(
                    fontFamily: 'Nunito',
                    color: Theme.of(context).colorScheme.onPrimary,
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                'Total Belajar: 2',
                style: TextStyle(
                    fontFamily: 'Nunito',
                    color: Theme.of(context).colorScheme.onPrimary,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
            ])
          ],
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsetsDirectional.only(end: 16),
            child: IconButton(
                icon: Icon(
                  Icons.edit_outlined,
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
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "Pengaturan Umum",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
            ),
            ListSetting(
                icon: Icons.translate,
                title: "Bahasa",
                subtitle: "Bahasa Indonesia"),
            ListSetting(
                icon: Icons.notifications_outlined,
                title: "Notifikasi",
                subtitle: ""),
            ListSetting(
                icon: Icons.location_on_outlined,
                title: "Lokasi",
                subtitle: ""),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "Aplikasi",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
            ),
            ListSetting(
              icon: Icons.lock_outline,
              title: "Kebijakan Privasi",
            ),
            ListSetting(
                icon: Icons.assignment_outlined,
                title: "Syarat dan Ketentuan",
                subtitle: ""),
            ListSetting(
                icon: Icons.help_outline,
                title: "Tentang Aplikasi",
                subtitle: ""),
            ListSetting(
                icon: Icons.logout,
                title: "Keluar dari Akun ini",
                color: Colors.red,
                subtitle: ""),
          ]),
        ),
      ),
    );
  }
}
