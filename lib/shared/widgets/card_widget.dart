import 'package:flutter/material.dart';

import 'package:be_hero/details/detais_page.dart';

class CardWidget extends StatelessWidget {
  final bool hasButtonDetails;
  final String id;
  final String title;
  final String ong;
  final String description;
  final String price;
  final String whatsapp;

  const CardWidget({
    Key key,
    this.hasButtonDetails = true,
    this.id = '',
    this.title = '',
    this.ong = '',
    this.description = '',
    this.price = '',
    this.whatsapp = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: 16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Color(0xFFF0F0F5)),
              ),
            ),
            padding: EdgeInsets.only(left: 24, top: 25, right: 24, bottom: 32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Text(
                        'CASO:',
                        style: TextStyle(
                          color: Color(0xFF41414D),
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Text(
                        'ONG:',
                        style: TextStyle(
                          color: Color(0xFF41414D),
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Text(
                        title,
                        style: TextStyle(
                          color: Color(0xFF737380),
                          fontSize: 15,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        ong,
                        style: TextStyle(
                          color: Color(0xFF737380),
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 24,
                ),
                if (!hasButtonDetails)
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'DESCRIÇÃO:',
                          style: TextStyle(
                            color: Color(0xFF41414D),
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          description,
                          style: TextStyle(
                            color: Color(0xFF737380),
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                SizedBox(
                  height: 24,
                ),
                Text(
                  'VALOR:',
                  style: TextStyle(
                    color: Color(0xFF41414D),
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  price,
                  style: TextStyle(
                    color: Color(0xFF737380),
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
          if (hasButtonDetails)
            Container(
              padding: EdgeInsets.only(left: 24, top: 8, right: 24, bottom: 8),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailsPage(id: id),
                    ),
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Ver mais detalhes',
                      style: TextStyle(
                        color: Color(0xFFE02041),
                        fontSize: 15,
                      ),
                    ),
                    Icon(Icons.arrow_forward,
                        color: Color(0xFFE02041), size: 18)
                  ],
                ),
              ),
            )
        ],
      ),
    );
  }
}
