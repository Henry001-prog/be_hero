import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ButtonWidget extends StatelessWidget {
  final String title;
  final bool isWhatsButton;
  final String description;
  final String whatsapp;

  const ButtonWidget({
    Key key,
    this.title = '',
    this.isWhatsButton = true,
    this.description = '',
    this.whatsapp = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Container(
      width: screenSize.width * 0.33,
      child: TextButton(
        onPressed: () async {
          if (isWhatsButton)
            await launch("https://wa.me/$whatsapp?text=$description");
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
            Color(0xFFE02041),
          ),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          ),
          padding: MaterialStateProperty.all(
            EdgeInsets.symmetric(vertical: 16),
          ),
        ),
        child: Text(
          title,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
