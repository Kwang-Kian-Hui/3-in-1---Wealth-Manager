import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:keyboard_actions/keyboard_actions.dart';
import 'package:intl/intl.dart';
import 'package:wealth_manager/infrastructure/models/list_of_icons.dart';

class IconDataKeyboard extends StatelessWidget
    with KeyboardCustomPanelMixin<IconData>
    implements PreferredSizeWidget {
  final ValueNotifier<IconData> accIconNotifier;

  IconDataKeyboard({Key? key, required this.accIconNotifier}) : super(key: key);

  @override
  ValueNotifier<IconData> get notifier => throw UnimplementedError();

  @override
  Size get preferredSize => Size.fromHeight(250);

  _buildButton({
    required IconData iconData,
    required BuildContext ctx,
  }) =>
      IconButton(
        iconData: iconData,
        onTap: () => {
          accIconNotifier.value = iconData,
        },
      );

  @override
  Widget build(BuildContext context) {
    final List<IconData> iconsList = ListOfIcons.iconList;
    final int iconCount = iconsList.length;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          childAspectRatio: 1,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: iconCount,
        itemBuilder: (context, i) {
          return _buildButton(
            iconData: iconsList[i],
            ctx: context,
          );
        },
      ),
    );
  }
}

class IconButton extends StatelessWidget {
  final IconData iconData;
  final VoidCallback onTap;

  const IconButton({
    Key? key,
    required this.iconData,
    required this.onTap,
  }) : super(key: key);

  build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: onTap,
        child: CircleAvatar(
          radius: 35,
          backgroundColor: Colors.grey,
          child: InkWell(
            customBorder: new CircleBorder(),
            radius: 35,
            child: Icon(
              iconData,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}