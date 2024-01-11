import 'package:flutter/material.dart';
import 'package:tema/helper/utils.dart';

class HistoryCardTeacher extends StatelessWidget {
  const HistoryCardTeacher({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.subject,
    required this.status,
    this.onPressed,
    this.startDate,
    this.endDate,
  });

  final String imageUrl;
  final String name;
  final String subject;
  final String status;
  final VoidCallback? onPressed;
  final String? startDate;
  final String? endDate;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(8, 8, 8, 0),
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
        width: MediaQuery.of(context).size.width,
        child: Card(
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
                    SizedBox(
                      width: 80,
                      child: MaterialButton(
                        onPressed: status == 'done' ? onPressed : null,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        color: Theme.of(context).colorScheme.primary,
                        disabledColor: Colors.black12,
                        height: 90,
                        child: Column(
                          children: [
                            Icon(
                              Icons.star,
                              color: Theme.of(context).colorScheme.onPrimary,
                              size: 24,
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Beri Rating",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color:
                                      Theme.of(context).colorScheme.onPrimary),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: MaterialButton(
                  minWidth: double.infinity,
                  height: 32,
                  color: _getButtonColor(status),
                  disabledColor: _getButtonColor(status),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  onPressed: null,
                  child: Row(
                    children: [
                      Icon(
                        _getButtonIcon(status),
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        _getButtonLabel(status),
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.onPrimary,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: IntrinsicHeight(
                  child: Row(
                    children: [
                      Text("Mulai: "),
                      Spacer(),
                      Text(startDate ?? "-"),
                      SizedBox(
                        width: 16,
                      ),
                      VerticalDivider(
                        width: 0,
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Text("Berakhir: "),
                      Spacer(),
                      Text(endDate ?? "-"),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Color _getButtonColor(status) {
  if (status == 'done') {
    return Colors.green;
  } else if (status == 'ongoing') {
    return Colors.blue;
  } else {
    return Colors.red;
  }
}

IconData _getButtonIcon(status) {
  if (status == 'done') {
    return Icons.check_circle_outline;
  } else if (status == 'ongoing') {
    return Icons.timelapse_outlined;
  } else {
    return Icons.cancel_outlined;
  }
}

String _getButtonLabel(status) {
  if (status == 'done') {
    return "Selesai";
  } else if (status == 'ongoing') {
    return "Berlangsung";
  } else {
    return "Dibatalkan";
  }
}
