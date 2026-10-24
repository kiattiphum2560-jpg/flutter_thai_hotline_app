import 'package:url_launcher/url_launcher.dart';

Future<void> launchPhoneCall(String phoneNumber) async {
  final normalizedNumber = phoneNumber.replaceAll(RegExp(r'\s+'), '');
  await launchUrl(Uri(scheme: 'tel', path: normalizedNumber));
}
