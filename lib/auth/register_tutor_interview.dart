import 'package:flutter/material.dart';
import 'package:tema/auth/register_student.dart';
import 'package:tema/auth/register_tutor.dart';
import 'package:tema/widgets/outlined_text_field.dart';
import 'package:timelines/timelines.dart';

class RegisterTutorInterviewWidget extends StatefulWidget {
  const RegisterTutorInterviewWidget({Key? key}) : super(key: key);

  @override
  State<RegisterTutorInterviewWidget> createState() =>
      _RegisterTutorInterviewWidgetState();
}

class _RegisterTutorInterviewWidgetState
    extends State<RegisterTutorInterviewWidget> {
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
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          "Menunggu Interview...",
          style: TextStyle(
            fontFamily: 'Nunito',
            color: Theme.of(context).colorScheme.onPrimary,
            fontSize: 16,
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
        top: true,
        child: SingleChildScrollView(
          child: Column(children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                width: 328,
                height: 300,
                decoration: BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: Image.asset(
                      'assets/images/register_interview_img.png',
                    ).image,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0, 16, 8, 16),
                        child: Text(
                          "Status Pendaftaran",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      Expanded(child: Divider()),
                    ],
                  ),
                  TimelineTile(
                    nodeAlign: TimelineNodeAlign.start,
                    contents: Card(
                      child: Container(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Pendaftaran',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w700),
                            ),
                            const Text('Mengisi Formulir Pendaftaran'),
                          ],
                        ),
                      ),
                    ),
                    node: TimelineNode(
                      position: 0,
                      indicator: Container(
                        width: 32,
                        height: 32,
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primary,
                          borderRadius: BorderRadius.circular(32),
                        ),
                        child: Icon(
                          Icons.done,
                          color: Colors.white,
                        ),
                      ),
                      endConnector: SolidLineConnector(
                        thickness: 5,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                  ),
                  TimelineTile(
                    contents: Card(
                      child: Container(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Interview',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w700),
                              ),
                              const Text(
                                  'Kami Akan menghubungi anda untuk melakukan interview. Tunggu sejenak...'),
                            ],
                          )),
                    ),
                    node: TimelineNode(
                      position: 0,
                      startConnector: SolidLineConnector(
                        thickness: 5,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      indicator: Container(
                        width: 32,
                        height: 32,
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primary,
                          borderRadius: BorderRadius.circular(32),
                        ),
                        child: OutlinedDotIndicator(
                          color: Theme.of(context).colorScheme.onPrimary,
                          size: 24,
                          borderWidth: 5,
                        ),
                      ),
                      endConnector: SolidLineConnector(
                        thickness: 5,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  TimelineTile(
                    contents: Card(
                      child: Container(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Pengumuman',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w700),
                            ),
                            const Text(
                                'Pengumuman penerimaan berdasarkan hasil interview'),
                          ],
                        ),
                      ),
                    ),
                    node: TimelineNode(
                      position: 0,
                      startConnector: SolidLineConnector(
                        thickness: 5,
                        color: Colors.grey,
                      ),
                      indicator: OutlinedDotIndicator(
                        color: Colors.grey,
                        size: 32,
                        borderWidth: 5,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: MaterialButton(
                disabledColor: Colors.black12,
                minWidth: double.infinity,
                height: 48,
                color: Theme.of(context).colorScheme.primary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0),
                ),
                onPressed: null,
                child: Text(
                  'Lanjutkan',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onPrimary,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  minimumSize: Size(double.infinity, 48),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                ),
                child: Text(
                  'Batalkan Pendaftaran',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
