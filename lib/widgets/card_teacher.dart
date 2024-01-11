import 'package:flutter/material.dart';

class CardTeacher extends StatelessWidget {
  const CardTeacher({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.subject,
  });

  final String imageUrl;
  final String name;
  final String subject;
  @override
  Widget build(BuildContext context) {
    return Container(
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
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment
                              .start, // Align text to the left
                          children: [
                            Text(
                              'Lokasi Pengajar',
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
    );
  }
}
