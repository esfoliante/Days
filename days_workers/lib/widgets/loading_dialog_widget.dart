    import 'package:flutter/material.dart';

    class LoadingDialog extends StatelessWidget {
      final String message;

      const LoadingDialog({
        Key key,
        this.message,
      }) : super(key: key);

      @override
      Widget build(BuildContext context) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40.0,),
          ),
          child: AlertDialog(
            content: Row(
              children: [
                Container(
                  width: 25,
                  height: 25,
                  child: const CircularProgressIndicator(),
                ),
                const SizedBox(
                  width: 20,
                ),
                (message != null)
                    ? Text(
                        message,
                      )
                    : Text(
                        "A carregar...",
                      )
              ],
            ),
          ),
        );
      }
    }

