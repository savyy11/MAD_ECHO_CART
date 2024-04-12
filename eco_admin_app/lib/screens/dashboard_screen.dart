import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:echocart_admin/widgets/title_text.dart';

import '../models/dashboard_btn_model.dart';
import '../providers/theme_provider.dart';
import '../widgets/dashboard_btn.dart';

class DashboardScreen extends StatefulWidget {
  static const routeName = '/DashboardScreen';
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => DashboardScreenState();
}

class DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const TitlesTextWidget(label: "Echo Cart Dashboard "),
        backgroundColor: Colors.green,
        leading: Container(
          margin: EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
          ),
          child: IconButton(
            icon: Icon(Icons.shopping_cart, color: Colors.green),
            onPressed: () {},
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              themeProvider.setDarkTheme(
                  themeValue: !themeProvider.getIsDarkTheme);
            },
            icon: Icon(themeProvider.getIsDarkTheme
                ? Icons.light_mode
                : Icons.dark_mode),
          ),
        ],
      ),
      body: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 1,
        children: List.generate(
          3,
          (index) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: DashboardButtonsWidget(
              title:
                  DashboardButtonsModel.dashboardBtnList(context)[index].text,
              imagePath: DashboardButtonsModel.dashboardBtnList(context)[index]
                  .imagePath,
              onPressed: () {
                DashboardButtonsModel.dashboardBtnList(context)[index]
                    .onPressed();
              },
            ),
          ),
        ),
      ),
    );
  }
}
