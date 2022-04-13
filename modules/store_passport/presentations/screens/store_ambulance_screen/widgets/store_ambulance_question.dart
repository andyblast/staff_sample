import 'package:dixy_staff/ui_kit/decorations/dimens/index.dart';
import 'package:dixy_staff/ui_kit/widgets/boxes/boxes.dart';
import 'package:dixy_staff/ui_kit/widgets/typography/typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class AmbulanceQuestion extends StatelessWidget {
  const AmbulanceQuestion({
    Key? key,
    required this.onToggle,
    required this.value,
    required this.title,
    required this.isWriteAllowed,
  }) : super(key: key);

  final String title;
  final Function(bool) onToggle;
  final bool value;
  final bool isWriteAllowed;

  String _cropTitle(String title) {
    final result = title.split(':');
    if (result.length == 1) {
      return title;
    } else {
      var temp = result.elementAt(1).trim();
      return temp[0].toUpperCase() + temp.substring(1);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(Insets.x2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Description(
              _cropTitle(title),
              color: Theme.of(context).colorScheme.onBackground,
            ),
          ),
          VBox(Insets.x2),
          FlutterSwitch(
            disabled: !isWriteAllowed,
            activeIcon: Icon(
              Icons.clear,
              color: Colors.black,
            ),
            inactiveIcon: Icon(
              Icons.check,
              color: Theme.of(context).colorScheme.secondary,
            ),
            activeColor: Theme.of(context).errorColor,
            inactiveColor: Colors.grey.withOpacity(0.4),
            duration: Duration(milliseconds: 150),
            toggleSize: 20,
            width: 55,
            height: 28,
            value: value,
            onToggle: (val) => onToggle(val),
          ),
        ],
      ),
    );
  }
}
