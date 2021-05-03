import 'package:be_hero/shared/widgets/app_bar_widget.dart';
import 'package:be_hero/shared/widgets/card_widget.dart';
import 'package:flutter/material.dart';

import 'home_controller.dart';
import 'home_state.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = HomeController();

  @override
  void initState() {
    super.initState();
    controller.getCases();
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
        child: controller.state.value == HomeState.success
            ? AppBarWidget(
                countCases: controller.cases.length,
              )
            : AppBarWidget(
                countCases: 0,
              ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 24),
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
            if (controller.state.value == HomeState.success)
              Expanded(
                child: ListView.builder(
                  itemCount: controller.cases.length,
                  itemBuilder: (context, index) {
                    return CardWidget(
                      id: controller.cases[index].id,
                      title: controller.cases[index].title,
                      ong: controller.cases[index].ong,
                      description: controller.cases[index].description,
                      price: controller.cases[index].price,
                    );
                  },
                ),
              )
            else if (controller.state.value == HomeState.loading)
              Expanded(
                child: Center(
                  child: CircularProgressIndicator(
                    valueColor: new AlwaysStoppedAnimation<Color>(
                      Color(0xFFE02041),
                    ),
                  ),
                ),
              )
            else
              Expanded(
                child: Center(
                  child: Text('Ocorreu um erro. Tente novamente mais tarde!'),
                ),
              )
          ],
        ),
      ),
    );
  }
}
