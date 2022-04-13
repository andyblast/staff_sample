import 'package:dixy_staff/ui_kit/decorations/dimens/index.dart';
import 'package:dixy_staff/ui_kit/widgets/boxes/boxes.dart';
import 'package:dixy_staff/ui_kit/widgets/typography/typography.dart';
import 'package:flutter/material.dart';

class StorePassportModalLoader extends StatelessWidget {
  final String message;
  final bool isLoaded;

  const StorePassportModalLoader({
    Key? key,
    required this.message,
    this.isLoaded = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: Center(
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              isLoaded
                  ? Icon(
                      Icons.check_circle,
                      color: Colors.green,
                      size: 42,
                    )
                  : CircularProgressIndicator(),
              VBox(Insets.x4),
              FieldLabel(message)
            ],
          ),
        ),
      ),
    );
  }
}
