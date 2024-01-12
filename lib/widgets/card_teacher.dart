import 'package:flutter/material.dart';
import 'package:tema/pages/students/detail_teacher/detail_teacher.dart';

class CardTeacher extends StatelessWidget {
  const CardTeacher({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.subject,
    required this.onPressed,
  });

  final String imageUrl;
  final String name;
  final String subject;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: MediaQuery.of(context).size.width,
        color: Theme.of(context).colorScheme.onPrimary,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(8)),
                    child: Image.asset(
                      width: 90,
                      height: 90,
                      imageUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.only(start: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          name,
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16.0,
                              color: Theme.of(context).colorScheme.primary),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          subject,
                          style: const TextStyle(fontSize: 14.0),
                        ),
                        const SizedBox(
                          height: 8,
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
                            child: Row(
                              children: [
                                // Icon(
                                //   Icons.location_on_outlined,
                                //   size: 16,
                                //   color: Theme.of(context).colorScheme.primary,
                                // ),
                                // SizedBox(width: 2),
                                Text(
                                  'Lokasi Pengajar',
                                  style: TextStyle(
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                    fontSize: 12,
                                    fontFamily: 'Nunito',
                                    fontWeight: FontWeight.w500,
                                    height: 1.4,
                                  ),
                                ),
                              ],
                            )),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 24,
                    color: Theme.of(context).colorScheme.primary,
                  )
                ],
              ),
            ),
            const Divider(
              height: 0,
            ),
          ],
        ),
      ),
    );
  }
}
