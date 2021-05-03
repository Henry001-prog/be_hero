import 'package:be_hero/shared/widgets/button_widget.dart';
import 'package:flutter/material.dart';

class CardShareWidget extends StatelessWidget {
  final String description;
  final String whatsapp;

  const CardShareWidget({Key key, this.description, this.whatsapp})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Salve o dia!',
              style: TextStyle(
                color: Color(0xFF13131A),
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Seja o herói desse caso!',
              style: TextStyle(
                color: Color(0xFF13131A),
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              'Entre em contato:',
              style: TextStyle(
                color: Color(0xFF737380),
                fontSize: 15,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ButtonWidget(
                  title: 'WhatsApp',
                  whatsapp: whatsapp,
                  description: description,
                ),
                ButtonWidget(title: 'E-mail', isWhatsButton: false),
              ],
            )
          ],
        ),
      ),
    );
  }
}
