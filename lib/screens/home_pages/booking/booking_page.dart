import 'package:azul_football/helpers/colors.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'booking_tabbar_widget.dart';

class BookingPage extends StatefulWidget {
  const BookingPage({Key key}) : super(key: key);

  @override
  State<BookingPage> createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> with SingleTickerProviderStateMixin{
   TabController _controller;
  @override
  void initState() {
    _controller = TabController(length: 3, vsync: this);
    _controller.addListener(_handleTabSelection);
    super.initState();
  }
  _handleTabSelection() {
    if (_controller.indexIsChanging) {
      setState(() {});
    }
  }
   @override
   void dispose() {
     super.dispose();
     _controller.dispose();
   }
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu,color: theme.iconTheme.color,),
        ),
        title: Text("BOOKINGS",style: theme.textTheme.headline3,),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipOval(
              child: Image(image: AssetImage(
                  "assets/images/profile.png"
              )),
            ),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: size.height*.03,),
          TabBar(
              controller: _controller,
              isScrollable:true,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorColor: kUpcomingEventCardStartColor,
              indicatorWeight: 4,
              labelColor: kUpcomingEventCardStartColor,
              labelStyle: GoogleFonts.ibmPlexSans(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: kUpcomingEventCardStartColor),
              unselectedLabelStyle: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Theme.of(context).iconTheme.color),
              unselectedLabelColor: Colors.grey,
              tabs: const [
                Tab(
                  child: Text("Upcoming"),
                ),
                Tab(
                  child: Text("History"),
                ),
                Tab(
                  child: Text("Cancelled"),
                ),
              ]
          ),
          SizedBox(height: size.height*.01,),
          Expanded(
            child: TabBarView(
              physics: const NeverScrollableScrollPhysics(),
              controller: _controller,
              children: <Widget>[
                BookingTabBarWidget(
                  firstColor: kUpcomingEventCardStartColor,
                  secondColor: kUpcomingEventCardEndColor,
                ),
                BookingTabBarWidget(
                  firstColor: Colors.grey,
                  secondColor: Colors.grey,
                ),
                BookingTabBarWidget(
                  firstColor: Color(0xff8f454b),
                  secondColor: Color(0xff976d74),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
