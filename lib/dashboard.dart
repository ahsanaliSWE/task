import 'package:flutter/material.dart';
import 'package:task/chatapp/chatapp.dart';
import 'package:task/database/sd_main.dart';
import 'package:task/form/formapp.dart';
import 'package:task/futureandstream/fands.dart';
import 'package:task/gestures/hdrag.dart';
import 'package:task/gestures/tapgesture.dart';
import 'package:task/gmaps/geolocator.dart';
import 'package:task/navigation/navigate.dart';
import 'package:task/widgets/card.dart';
import 'package:task/widgets/drawers.dart';
import 'package:task/widgets/dropbtn.dart';
import 'package:task/widgets/iconbtn.dart';
import 'package:task/widgets/imageinapp.dart';
import 'package:task/widgets/radiobtn.dart';
import 'package:task/widgets/sst.dart';

import 'package:task/gestures/swipezoom.dart';
import 'gestures/onscale.dart';


class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  Card makeDashboardItem(String title, IconData icon, screen) {
    return Card(
        elevation: 1.0,
        margin: const EdgeInsets.all(8.0),
        child: Container(
          decoration: const BoxDecoration(color: Color.fromRGBO(220, 220, 220, 1.0)),
          child: InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) =>  screen,
                ),
              );
          
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              verticalDirection: VerticalDirection.down,
              children: <Widget>[
                const SizedBox(height: 50.0),
                Center(
                    child: Icon(
                  icon,
                  size: 40.0,
                  color: Colors.black,
                )),
                const SizedBox(height: 20.0),
                Center(
                  child: Text(title,
                      style: const TextStyle(fontSize: 18.0, color: Colors.black)),
                )
              ],
            ),
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard! MAD Tasks"),
        elevation: .1,
        backgroundColor: const Color.fromRGBO(49, 87, 110, 1.0),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 2.0),
        child: GridView.count(
          crossAxisCount: 2,
          padding: const EdgeInsets.all(3.0),
          children: <Widget>[
            makeDashboardItem("Image", Icons.image, const ImageInApp()),
            makeDashboardItem("Icon Button", Icons.emoji_emotions, const IconBtn()),
            makeDashboardItem("Card", Icons.card_travel, const Cards()),
            makeDashboardItem("Drawer and App Bar", Icons.apps, const Drawers()),
            makeDashboardItem("Chat App", Icons.chat, const ChatApp()),
            makeDashboardItem("Navigation", Icons.route, const Navigate()),
            makeDashboardItem("Drop Down Button", Icons.arrow_drop_down, const DropBtn()),
            makeDashboardItem("Radio Button", Icons.radio_button_on, const RadioBtn()),
            makeDashboardItem("Form", Icons.format_align_center, const FormApp()),
            makeDashboardItem("Slider Switch and Textfield", Icons.widgets, const Sst()),
            makeDashboardItem("Swipe Images and Zoom IN & Out", Icons.swipe, SwipeImages()),
            makeDashboardItem("Swipe Text", Icons.swipe, const HDRag()),
            makeDashboardItem("On Scale", Icons.scale, const OnScaleApp()),
            makeDashboardItem("Tap Gestures", Icons.tap_and_play, const TapGes()),
            makeDashboardItem("Future & Stream", Icons.stream, const FandS()),
            makeDashboardItem("Database", Icons.dashboard_customize, const StudentDatabaseApp()),
            makeDashboardItem("Location", Icons.location_city, const LocationPage()),


           

          ],
        ),
      ),
    );
  }
}
