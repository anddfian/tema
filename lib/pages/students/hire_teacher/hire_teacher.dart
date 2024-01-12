import 'package:chips_choice/chips_choice.dart';
import 'package:flutter/material.dart';

class HireTeacherWidget extends StatefulWidget {
  const HireTeacherWidget({super.key});

  @override
  State<HireTeacherWidget> createState() => _HireTeacherWidgetState();
}

class _HireTeacherWidgetState extends State<HireTeacherWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  List<String> dayTags = [];
  List<String> dayOptions = [
    'Senin',
    'Selasa',
    'Rabu',
    'Kamis',
    'Jum\'at',
    'Sabtu',
    'Minggu',
  ];

  int locationTag = 0;
  List<String> locationOptions = [
    'Lokasi Pengajar',
    'Lokasi Siswa',
  ];

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
          "Ajukan Pengajar",
          style: TextStyle(
            fontFamily: 'Nunito',
            color: Theme.of(context).colorScheme.onPrimary,
            fontSize: 16,
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(0, 16.0, 16, 16),
                  child: CircleAvatar(
                    radius: 64,
                    backgroundColor:
                        Theme.of(context).colorScheme.primary, // Border radius
                    child: ClipOval(
                        child: Image.asset(
                            width: 120,
                            height: 120,
                            'assets/images/dummy_tutor_1.png')),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Text(
                        "Vestia Zeta",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Theme.of(context).colorScheme.primary),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 16.0),
                      child: Text(
                        "Fisika, Matematika",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Theme.of(context).hintColor),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(bottom: 16.0),
                          child: Text(
                            "Tanggal Belajar",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Theme.of(context).hintColor),
                                  borderRadius: BorderRadius.circular(4)),
                              child: MaterialButton(
                                onPressed: () {},
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 16.0),
                                  child: Row(
                                    children: [
                                      Icon(Icons.date_range_outlined,
                                          color: Theme.of(context).hintColor),
                                      const SizedBox(
                                        width: 16,
                                      ),
                                      Text(
                                        "Mulai",
                                        style: TextStyle(
                                            color: Theme.of(context).hintColor),
                                      ),
                                      const SizedBox(
                                        width: 56,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 16,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Theme.of(context).hintColor),
                                  borderRadius: BorderRadius.circular(4)),
                              child: MaterialButton(
                                onPressed: () {},
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 16.0),
                                  child: Row(
                                    children: [
                                      Icon(Icons.date_range_outlined,
                                          color: Theme.of(context).hintColor),
                                      const SizedBox(
                                        width: 16,
                                      ),
                                      Text(
                                        "Akhir",
                                        style: TextStyle(
                                            color: Theme.of(context).hintColor),
                                      ),
                                      const SizedBox(
                                        width: 56,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.fromLTRB(16.0, 8, 16, 0),
                      child: Text(
                        "Hari",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                    ),
                    ChipsChoice<String>.multiple(
                      value: dayTags,
                      onChanged: (val) => setState(() => dayTags = val),
                      choiceStyle: C2ChipStyle.outlined(),
                      choiceItems: C2Choice.listFrom<String, String>(
                        source: dayOptions,
                        value: (i, v) => v,
                        label: (i, v) => v,
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.fromLTRB(16.0, 8, 16, 0),
                      child: Text(
                        "Lokasi",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                    ),
                    ChipsChoice<int>.single(
                      value: locationTag,
                      onChanged: (val) => setState(() => locationTag = val),
                      choiceStyle: C2ChipStyle.outlined(),
                      choiceItems: C2Choice.listFrom<int, String>(
                        source: locationOptions,
                        value: (i, v) => i,
                        label: (i, v) => v,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Total:"),
                  Text(
                    "Rp137.500",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: MaterialButton(
                minWidth: double.infinity,
                height: 56,
                color: Theme.of(context).colorScheme.primary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0),
                ),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.send_outlined,
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      'Kirim Permohonan',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.onPrimary,
                        fontSize: 16,
                      ),
                    ),
                  ],
                )),
          ),
          SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
