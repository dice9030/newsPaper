import 'package:app_dc_maqueta/src/widget/custom_app_bar.dart';
import 'package:app_dc_maqueta/src/widget/grid_view_news_paper.dart';
import 'package:app_dc_maqueta/src/widget/top_news_paper.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Stack(
        children: <Widget>[
            SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    CustomAppBar(),
                    SizedBox(height: 10.0,),
                    TopNewsPaper(),
                    GridViewNewsPaper(),
                  ],
                ),
              ),
            ),
        ],
      )
    );
  }
}


