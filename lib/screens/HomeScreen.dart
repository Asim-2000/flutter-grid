import 'package:flutter/material.dart';
import 'package:learn_app/widgets/MyRow.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print(
            "FloatingButtonPressed",
          );
        },
      ),
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent,
        centerTitle: true,
        title: Text(
          "Demo App",
        ),
      ),
      body: Container(
        child: Column(
          children: [
            MyRow(
              src: "https://avatars.githubusercontent.com/u/46053827?v=4",
              text: "Asim",
              colorLeft: Colors.red,
              colorRight: Colors.redAccent,
              icon: Icon(Icons.phone),
            ),
            MyRow(
              src:
                  "https://res.cloudinary.com/practicaldev/image/fetch/s--neiVwW5x--/c_fill,f_auto,fl_progressive,h_320,q_auto,w_320/https://dev-to-uploads.s3.amazonaws.com/uploads/user/profile_image/450387/58c3bfa0-6289-4e9d-960c-615e5731570d.jpeg",
              text: "Ali",
              colorLeft: Colors.green,
              colorRight: Colors.greenAccent,
              icon: Icon(Icons.alarm),
            ),
            MyRow(
              src:
                  "https://res.cloudinary.com/startup-grind/image/upload/c_fill,dpr_2.0,f_auto,g_center,h_250,q_auto:good,w_250/v1/gcs/platform-data-dsc/events/muneeb.jpg",
              text: "Saad",
              colorLeft: Colors.orange,
              colorRight: Colors.orangeAccent,
              icon: Icon(Icons.wallet_giftcard),
            ),
          ],
        ),
      ),
    );
  }
}
