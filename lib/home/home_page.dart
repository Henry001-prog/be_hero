import 'package:be_hero/shared/widgets/app_bar_widget.dart';
import 'package:be_hero/shared/widgets/card_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF0F0F5),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(84),
        child: AppBarWidget(),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 24,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Bem-vindo!",
                  style: TextStyle(
                    color: Color(0xFF13131A),
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Escolha um dos casos abaixo\ne salve o dia.",
                  style: TextStyle(
                    color: Color(0xFF737380),
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              SizedBox(
                height: 32,
              ),
              CardWidget(),
              CardWidget(),
              CardWidget(),
              CardWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
