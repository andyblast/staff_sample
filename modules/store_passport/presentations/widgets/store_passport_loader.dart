import 'package:dixy_staff/ui_kit/decorations/dimens/index.dart';
import 'package:dixy_staff/ui_kit/widgets/boxes/boxes.dart';
import 'package:dixy_staff/ui_kit/widgets/typography/typography.dart';
import 'package:flutter/material.dart';

class StorePassportLoader extends StatelessWidget {
  final String? message;
  final String? header;

  const StorePassportLoader({Key? key, this.message, this.header})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return header != null
        ? Container(
            padding: EdgeInsets.all(Dimens.defaultModalCardRadius),
            child: Column(
              children: [
                H5(header!),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 36),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 36,
                          height: 36,
                          child: CircularProgressIndicator(),
                        ),
                        HBox(Insets.x4),
                        if (message != null)
                          Text(
                            message!,
                            textAlign: TextAlign.center,
                          )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        : Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 36,
                  height: 36,
                  child: CircularProgressIndicator(),
                ),
                HBox(Insets.x4),
                if (message != null)
                  Text(
                    message!,
                    textAlign: TextAlign.center,
                  )
              ],
            ),
          );
  }
}
