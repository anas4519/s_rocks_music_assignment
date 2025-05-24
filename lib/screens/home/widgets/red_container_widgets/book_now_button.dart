import 'package:flutter/material.dart';
import 'package:s_rocks_music_assignment/screens/home/booking_page.dart';

class BookNowButton extends StatelessWidget {
  const BookNowButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (ctx) => BookingPage()));
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 13, vertical: 7),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(50)),
        child: Text(
          'Book Now',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
