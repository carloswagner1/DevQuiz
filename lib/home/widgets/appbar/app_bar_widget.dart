import 'package:devquiz/core/core.dart';
import 'package:devquiz/home/widgets/scorecard/scorecard_widget.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends PreferredSize {
  AppBarWidget()
      : super(
            preferredSize: Size.fromHeight(250),
            child: Container(
              height: 250,
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(gradient: AppGradients.linear),
                    height: 161,
                    width: double.maxFinite,
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Text("Olá, Carlos Wagner", style: AppTextStyles.title),
                        Text.rich(
                          TextSpan(
                              text: "Olá, ",
                              style: AppTextStyles.title,
                              children: [
                                TextSpan(
                                    text: "Carlos Wagner",
                                    style: AppTextStyles.titleBold)
                              ]),
                        ),
                        Container(
                          height: 58,
                          width: 58,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://avatars.githubusercontent.com/u/61124810?v=4"))),
                        )
                      ],
                    ),
                  ),
                  Align(alignment: Alignment(0, 1), child: ScoreCardWidget())
                ],
              ),
            ));
}
