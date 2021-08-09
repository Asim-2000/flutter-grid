import 'package:flutter/material.dart';

class MyRow extends StatelessWidget {
  final String src;
  final String text;
  final Color colorLeft;
  final Color colorRight;
  final Icon icon;

  const MyRow(
      {Key key,
      @required this.src,
      @required this.text,
      @required this.colorLeft,
      @required this.colorRight,
      @required this.icon})
      : assert(src != null),
        assert(text != null),
        assert(colorLeft != null),
        assert(colorRight != null),
        assert(icon != null),
        super(key: key);

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
