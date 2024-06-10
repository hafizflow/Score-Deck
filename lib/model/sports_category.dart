import 'package:flutter/cupertino.dart';
import 'package:scoredeck/pages/cricket_score.dart';
import 'package:scoredeck/pages/football_score.dart';
import 'package:scoredeck/pages/ipl_score.dart';
import 'package:scoredeck/pages/mma_update.dart';

class SportsCategory {
  String name;
  String thumbnail;
  Widget page;

  SportsCategory({
    required this.name,
    required this.thumbnail,
    required this.page,
  });
}

List<SportsCategory> sportsList = [
  SportsCategory(
    name: 'Cricket',
    thumbnail: 'assets/cricket.webp',
    page: const CricketScore(),
  ),
  SportsCategory(
    name: 'Football',
    thumbnail: 'assets/football.webp',
    page: const FootballScore(),
  ),
  SportsCategory(
    name: 'Cricket-IPL',
    thumbnail: 'assets/ipl.webp',
    page: const IplScore(),
  ),
  SportsCategory(
    name: 'MMA',
    thumbnail: 'assets/mma.webp',
    page: const MmaUpdate(),
  ),
];
