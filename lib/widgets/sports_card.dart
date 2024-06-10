import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scoredeck/model/sports_category.dart';

class SportsCard extends StatelessWidget {
  const SportsCard({
    super.key,
    required this.sportsCategory,
  });

  final SportsCategory sportsCategory;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return sportsCategory.page;
            },
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(.2),
              blurRadius: 4.0,
              spreadRadius: .05,
            ),
          ],
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            Expanded(
              child: Align(
                alignment: Alignment.center,
                child: Image.asset(
                  sportsCategory.thumbnail,
                  // height: 100,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              sportsCategory.name,
              style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 18,
              )),
            ),
          ],
        ),
      ),
    );
  }
}
