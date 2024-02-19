//packages
import 'package:flutter/widgets.dart';
//widgets
import '../widgets/textDisplay.dart';
import '../widgets/miniClothesDisplay.dart';
import '../widgets/pageView.dart';

class HomeScreen extends StatelessWidget {
  static final routeName = './homeScreen.dart';

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.only(top: 0),
      children: [
        SizedBox(
          height: 600,
          child: PageViewWidget(),
        ),
        const SizedBox(height: 20),
        TextDisplayWidget(text: 'Best Sellers'),
        MiniClothesDisplay(listSelector: 0),
        const SizedBox(height: 10),
        TextDisplayWidget(text: 'Trending Hot'),
        MiniClothesDisplay(listSelector: 1),
      ],
    );
  }
}
