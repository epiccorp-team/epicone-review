import 'package:flutter/material.dart';

class CommonDialog {
  get context => null;

  static Future<dynamic> showCommonDialog(
    BuildContext context,
    String title,
    String message,
  ) async {
    await showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('구매하기 실패'),
          content: SizedBox(
            width: 200,
            child: Text(message),
          ),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          actionsAlignment: MainAxisAlignment.center,
          actions: [
            Container(
              width: 200,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(5),
              ),
              child: TextButton(
                child: const Text(
                  '확인',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        );
      },
    );
  }
}
