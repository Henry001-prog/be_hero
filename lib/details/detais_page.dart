import 'package:be_hero/details/details_controller.dart';
import 'package:flutter/material.dart';

import 'package:be_hero/details/widgets/cart_share_widget.dart';
import 'package:be_hero/shared/widgets/app_bar_widget.dart';
import 'package:be_hero/shared/widgets/card_widget.dart';

import 'details_state.dart';

class DetailsPage extends StatefulWidget {
  final String id;

  const DetailsPage({
    Key key,
    this.id = '',
  }) : super(key: key);

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  final controller = DetailsController();

  @override
  void initState() {
    super.initState();
    controller.getCase(widget.id);
    controller.state.addListener(() {
      setState(() {});
    });
  }

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
              if (controller.state.value == DetailsState.loading)
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Center(
                    child: CircularProgressIndicator(
                      valueColor: new AlwaysStoppedAnimation<Color>(
                        Color(0xFFE02041),
                      ),
                    ),
                  ),
                ),
              if (controller.state.value == DetailsState.success)
                Container(
                  child: Column(
                    children: [
                      CardWidget(
                        hasButtonDetails: false,
                        title: controller.caseOne.title,
                        ong: controller.caseOne.ong,
                        description: controller.caseOne.description,
                        price: controller.caseOne.price,
                      ),
                      CardShareWidget(
                        whatsapp: controller.caseOne.whatsapp,
                        description: controller.caseOne.description,
                      ),
                    ],
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
