import 'package:flutter/material.dart';

import 'package:azul_football/helpers/dimension.dart';
import 'package:azul_football/screens/home_pages/widgets/regular_text.dart';

class BookingDetailsPage extends StatefulWidget {
  const BookingDetailsPage({Key key}) : super(key: key);

  @override
  State<BookingDetailsPage> createState() => _BookingDetailsPageState();
}

class _BookingDetailsPageState extends State<BookingDetailsPage> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Al Maktoum Stadium"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 250,
              width: double.infinity,
              child: Image.asset(
                "assets/images/stadium.jpeg",
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: Dimensions.height10,
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: Dimensions.width20,
                  right: Dimensions.width20,
                  bottom: 0),
              child: Row(
                children: [
                  RegularText(
                    text: "2.0",
                  ),
                  SizedBox(
                    width: Dimensions.height5,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.lightGreen[400],
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.lightGreen[400],
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.lightGreen[400],
                  ),
                  Icon(Icons.star_border_outlined),
                  Icon(Icons.star_border_outlined),
                ],
              ),
            ),
            Divider(
              thickness: 2,
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: Dimensions.width20,
                  right: Dimensions.width20,
                  bottom: Dimensions.width10),
              child: Text("AED 55.00",
                  style: TextStyle(
                      color: Colors.lightGreen[400],
                      fontSize: 22,
                      fontWeight: FontWeight.w600)),
            ),
            SizedBox(
              height: Dimensions.height5,
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: Dimensions.width20,
                  right: Dimensions.width20,
                  bottom: Dimensions.width10),
              child: RegularText(
                text: "Al Maktoum Stadium",
                // style: theme.textTheme.headline5,
                size: 20,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: Dimensions.width20,
                  right: Dimensions.width20,
                  bottom: Dimensions.width10),
              child: Row(
                children: [
                  Icon(
                    Icons.watch_later,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: Dimensions.width10,
                  ),
                  RegularText(
                    text: "Operational - 9AM to 6 PM - All days of the week",
                    // style: theme.textTheme.headline5,
                    size: 20,
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 2,
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: Dimensions.width20,
                  right: Dimensions.width20,
                  bottom: Dimensions.width10),
              child: Row(
                children: [
                  Icon(
                    Icons.run_circle,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: Dimensions.width10,
                  ),
                  RegularText(
                    text: "Basketball",
                    // style: theme.textTheme.headline5,
                    size: 20,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: Dimensions.width10,
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: Dimensions.width20,
                  right: Dimensions.width20,
                  bottom: Dimensions.width10),
              child: Row(
                children: [
                  Icon(
                    Icons.watch_later,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: Dimensions.width10,
                  ),
                  RegularText(
                    text: "10:00 AM | 9 August 2022",
                    // style: theme.textTheme.headline5,
                    size: Dimensions.width20,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: Dimensions.width10,
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: Dimensions.width20,
                  right: Dimensions.width20,
                  bottom: Dimensions.width10),
              child: Row(
                children: [
                  Icon(
                    Icons.location_searching,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: Dimensions.width10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RegularText(
                      text: "Al Maktoum Stadium, Garhound, Dubai",
                      // style: theme.textTheme.headline5,
                      size: Dimensions.width20,
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 2,
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: Dimensions.width20,
                  right: Dimensions.width20,
                  bottom: Dimensions.width20),
              child: Text("About Venue",
                  style: TextStyle(
                      color: Colors.lightGreen[400],
                      fontSize: Dimensions.width20 + 2,
                      fontWeight: FontWeight.w600)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
              child: RegularText(
                text:
                    "A stadium is a place or venue for outdoor sports, concerts, or other events and consists of a field or stage either partly or completely surrounded by a tiered structure designed to allow spectators to stand or sit and view the event.",
                // style: theme.textTheme.headline5,
                size: Dimensions.width20,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: Dimensions.width20,
                  right: Dimensions.width20,
                  bottom: Dimensions.width20),
              child: Row(
                children: [
                  VenueOptions(
                    title: "Parking",
                  ),
                  SizedBox(
                    width: Dimensions.width10,
                  ),
                  VenueOptions(
                    title: "Washrooms",
                  ),
                  SizedBox(
                    width: Dimensions.width10,
                  ),
                  VenueOptions(
                    title: "Food Stand",
                  ),
                  SizedBox(
                    width: Dimensions.width10,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: Dimensions.height25,
            ),
            Center(
              child: Container(
                height: Dimensions.height65,
                width: MediaQuery.of(context).size.width * 0.8,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.greenAccent),
                  borderRadius: BorderRadius.circular(Dimensions.height45),
                ),
                child: Center(
                  child: Text("CANCEL BOOKING",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: Dimensions.font18,
                          fontWeight: FontWeight.w600)),
                ),
              ),
            ),
            SizedBox(
              height: Dimensions.height15,
            ),
            Center(
              child: Container(
                height: Dimensions.height65,
                width: MediaQuery.of(context).size.width * 0.8,
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Colors.lightGreen,
                    Colors.blueAccent,
                  ]),
                  border: Border.all(color: Colors.greenAccent),
                  borderRadius: BorderRadius.circular(Dimensions.height45),
                ),
                child: Center(
                  child: Text("QR CODE",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: Dimensions.font18,
                          fontWeight: FontWeight.w600)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class VenueOptions extends StatelessWidget {
  final String title;
  const VenueOptions({
    Key key,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.lightGreen[400],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        title,
        style: TextStyle(color: Colors.black),
      ),
    );
  }
}
