import 'package:flutter/material.dart';
import 'package:paybackgold_app/Screens/productscreen.dart';
import 'package:paybackgold_app/components/icons.dart';
import 'package:paybackgold_app/misc/constants.dart';

import 'texts.dart';

class Myappbar extends StatelessWidget implements PreferredSizeWidget {
  final bool shownavdrawer;
  

  const Myappbar({Key? key, required this.shownavdrawer}) : super(key: key);

  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: !shownavdrawer
          ? IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ProductScreen1(),
                  ),
                );
              },
            )
          : null,
      iconTheme: IconThemeData(color: Constants.appPrimaryColor()),
      centerTitle: true,
      title: Text1(
        textcolor: Constants.appPrimaryColor(),
        text: 'PBG',
        size: 25,
      ),
      actions: const [
        Menubar1(
          icon: Icon(
            Icons.search_outlined,
          ),
        ),
        Menubar1(
          icon: Icon(
            Icons.shopping_bag_outlined,
          ),
        ),
      ],
      elevation: 0,
      backgroundColor: Constants.appLightPrimaryColor(),
    );
  }
}
