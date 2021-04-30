import 'package:be_hero/details/widgets/cart_share_widget.dart';
import 'package:be_hero/shared/widgets/card_widget.dart';
import 'package:be_hero/shared/widgets/app_bar_widget.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF0F0F5),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(84),
        child: AppBarWidget(
          hideButtonBack: false,
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 24),
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              CardWidget(hasButtonDetails: false),
              CardShareWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
