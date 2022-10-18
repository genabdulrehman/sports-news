import 'package:azul_football/helpers/colors.dart';
import 'package:azul_football/models/booking.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BookingCardWidget extends StatelessWidget {
  final BookingModel bookingModel;
  final double width;
  final Color firstColor;
  final Color secondColor;
  const BookingCardWidget({
    this.width,
    this.firstColor,
    this.secondColor,
    this.bookingModel,
    Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                  ),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                     firstColor,
                      secondColor
                    ],
                  )
              ),
              child: Center(
                  child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(bookingModel.time,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        ),
                      ))),
            ),
          ),
          Expanded(
              flex: 4,
              child: Padding(
                padding: EdgeInsets.only(left: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(bookingModel.gameName,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 5,),
                    Text.rich(
                        TextSpan(
                            text: 'Booking ID ',
                            style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                            children: <InlineSpan>[
                              TextSpan(
                                text: bookingModel.bookingID,
                                style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                ),
                              )
                            ]
                        )
                    ),
                    SizedBox(height: 5,),
                    Text(bookingModel.address,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.access_time_outlined,size: 15,),
                        SizedBox(width: 5,),
                        Text(bookingModel.detailTime,
                          overflow: TextOverflow.ellipsis,
                          style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                          ),
                        ),

                      ],
                    )
                  ],
                ),
              )),
          Expanded(
            child: Icon(
              Icons.arrow_forward_ios_rounded,
              size: 18,
            ),
          )
        ],
      ),
    );
  }
}
