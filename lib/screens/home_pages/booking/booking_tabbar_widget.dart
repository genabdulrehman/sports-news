import 'package:azul_football/api/booking_api.dart';
import 'package:azul_football/screens/home_pages/widgets/booking_card_widget.dart';
import 'package:flutter/material.dart';

class BookingTabBarWidget extends StatelessWidget {
  final Color firstColor;
  final Color secondColor;
  const BookingTabBarWidget({this.firstColor,this.secondColor,Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          for(int i=0; i<BookingApi.upComingData.length ; i++)
            Padding(
              padding: const EdgeInsets.symmetric(vertical:8.0,horizontal: 10),
              child: BookingCardWidget(
                width: MediaQuery.of(context).size.width,
                bookingModel: BookingApi.upComingData[i],
                firstColor: firstColor,
                secondColor: secondColor,
              ),
            ),
        ],
      ),
    );
  }
}
