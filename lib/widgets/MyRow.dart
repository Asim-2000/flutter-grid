import 'package:flutter/material.dart';

class MyRow extends StatelessWidget {
  const MyRow(
      {Key key,
      this.src,
      this.text,
      this.colorLeft,
      this.colorRight,
      this.icon})
      : super(key: key);

  final String src;
  final String text;
  final Color colorLeft;
  final Color colorRight;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: (Expanded(
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                constraints: BoxConstraints.expand(),
                color: colorLeft,
                child: icon,
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                color: colorRight,
                constraints: BoxConstraints.expand(),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ClipOval(
                      child: Container(
                        width: 100,
                        height: 100,
                        // color: Colors.white,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                          src,
                        ))),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      text,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
