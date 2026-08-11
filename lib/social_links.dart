import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialLink extends StatelessWidget {
  final String image;
  final String url;
  final double size;

  const SocialLink({
    super.key,
    required this.image,
    required this.url,
    this.size = 35,
  });

  Future<void> openUrl() async {
    final Uri uri = Uri.parse(url);

    await launchUrl(
      uri,
      mode: LaunchMode.externalApplication,
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: openUrl,
      child: Image.asset(
        image,
        width: size,
      ),
    );
  }
}