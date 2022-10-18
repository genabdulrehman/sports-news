import 'package:flutter/material.dart';
class BookingModel{
   String time;
   String gameName;
   String bookingID;
   String address;
   String detailTime;
   VoidCallback action;

   BookingModel({
     this.time,
     this.gameName,
     this.bookingID,
     this.address,
     this.detailTime,
     this.action,
});
}