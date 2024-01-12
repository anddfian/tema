import 'package:flutter/material.dart';
import 'package:tema/pages/students/hire_teacher/hire_teacher.dart';
import 'package:tema/widgets/outlined_text_field.dart';

class EditProfileTeacherWidget extends StatefulWidget {
  const EditProfileTeacherWidget({super.key});

  @override
  State<EditProfileTeacherWidget> createState() =>
      _EditProfileTeacherWidgetState();
}

class _EditProfileTeacherWidgetState extends State<EditProfileTeacherWidget> {
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
              label: Text(
                'Simpan',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onPrimary,
                  fontSize: 16,
                ),
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Vestia Zeta",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Theme.of(context).colorScheme.onPrimary),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Icon(Icons.edit_outlined,
                            size: 16,
                            color: Theme.of(context).colorScheme.onPrimary)
                      ],
                    )),
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
                  children: const [
                    SizedBox(
                      height: 32,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        OutlinedTextField(
                          labelText: "Jam Kerja",
                          hintText: "Jam Kerja",
                          prefixIcon: Icons.work_outline,
                        ),
                        OutlinedTextField(
                          labelText: "Lokasi",
                          hintText: "Lokasi",
                          prefixIcon: Icons.location_on_outlined,
                        ),
                        OutlinedTextField(
                          labelText: "Kontak",
                          hintText: "Kontak",
                          prefixIcon: Icons.contact_mail_outlined,
                        ),
                        OutlinedTextField(
                          labelText: "Deskripsi",
                          hintText: "Deskripsi",
                          maxLines: 4,
                          prefixIcon: Icons.description_outlined,
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
