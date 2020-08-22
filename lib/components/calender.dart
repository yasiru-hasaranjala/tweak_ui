import 'package:flutter/material.dart';
import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';
import 'package:intl/intl.dart';
import 'package:tweak/constants.dart';

class Calendar extends StatefulWidget {
  @override
  _CalendarState createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  DateTime _currentDate = DateTime(2020, 7, 15);
  DateTime _currentDate2 = DateTime(2020, 7, 24);
  String _currentMonth = DateFormat.yMMM().format(DateTime(2020, 7, 15));
  DateTime _targetDateTime = DateTime(2020, 7, 15);

  EventList<Event> _markedDateMap = new EventList<Event>(events: {},);

  CalendarCarousel _calendarCarouselNoHeader;

  @override
  Widget build(BuildContext context) {

    /// Example Calendar Carousel without header and custom prev & next button
    _calendarCarouselNoHeader = CalendarCarousel<Event>(
      todayBorderColor: kGreenColor,
      onDayPressed: (DateTime date, List<Event> events) {
        this.setState(() => _currentDate2 = date);
        events.forEach((event) => print(event.title));
      },
      daysHaveCircularBorder: true,
      showOnlyCurrentMonthDate: false,
      weekendTextStyle: TextStyle(
        color: kTextColor,
      ),
      weekFormat: false,
      markedDatesMap: _markedDateMap,
      height: 200,
      selectedDateTime: _currentDate2,
      targetDateTime: _targetDateTime,
      customGridViewPhysics: NeverScrollableScrollPhysics(),

      markedDateCustomTextStyle: TextStyle(
        fontSize: 18,
        color: kPrimaryColor,
      ),
      showHeader: false,
      todayTextStyle: TextStyle(
        color: kPrimaryColor,
      ),
      // markedDateShowIcon: true,
      // markedDateIconMaxShown: 2,
      // markedDateIconBuilder: (event) {
      //   return event.icon;
      // },
      // markedDateMoreShowTotal:
      //     true,
      selectedDayTextStyle: TextStyle(
        color: kPrimaryLightColor,
      ),
      minSelectedDate: _currentDate.subtract(Duration(days: 360)),
      maxSelectedDate: _currentDate.add(Duration(days: 360)),
      prevDaysTextStyle: TextStyle(
        fontSize: 16,
        color: kTextColor,
      ),
      onCalendarChanged: (DateTime date) {
        this.setState(() {
          _targetDateTime = date;
          _currentMonth = DateFormat.yMMM().format(_targetDateTime);
        });
      },
      onDayLongPressed: (DateTime date) {
        print('long pressed date $date');
      },
    );

    return Container(
      margin: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: kShadowColor2,
        borderRadius: BorderRadius.circular(15),
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            //custom icon
            //custom icon without header
            Container(
              margin: EdgeInsets.all(16),
              child: new Row(
                children: <Widget>[
                  Expanded(
                      child: Text(
                        _currentMonth,
                        style: TextStyle(
                          fontFamily: 'HKGrotesk-Bold',
                          fontSize: 16,
                          color: kPrimaryColor,
                          height: 1,
                        ),
                      )),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16.0),
              child: _calendarCarouselNoHeader,
            ), //
          ],
        ),
      ),
    );
  }
}
