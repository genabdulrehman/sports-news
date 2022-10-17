import 'package:azul_football/models/leagues.dart';

class LeaguesApi {
  static List<LeaguesModels> lLeaguesList = [
    LeaguesModels(
      id: 0,
      name: 'Premier League',
      logo: 'assets/images/leagues/premier.png',
    ),
    LeaguesModels(
      id: 1,
      name: 'La Liga',
      logo: 'assets/images/leagues/laliga.png',
    ),
    LeaguesModels(
      id: 2,
      name: 'Uber eat league (french)',
      logo: 'assets/images/leagues/uber.png',
    ),
    LeaguesModels(
      id: 3,
      name: 'UAE league',
      logo: 'assets/images/leagues/uae.png',
    ),
    LeaguesModels(
      id: 4,
      name: 'Bundesliga',
      logo: 'assets/images/leagues/bundesliga.png',
    ),
  ];
  static List<LeaguesModels> lLeaguesListBasketball = [
    LeaguesModels(
      id: 0,
      name: 'NBA',
      logo: 'assets/images/leagues/nba.png',
    ),
    LeaguesModels(
      id: 1,
      name: 'FiBA',
      logo: 'assets/images/leagues/fiba.png',
    ),
    LeaguesModels(
      id: 2,
      name: 'UEuroLeague',
      logo: 'assets/images/leagues/euro.png',
    ),
    LeaguesModels(
      id: 3,
      name: 'National Basketball League',
      logo: 'assets/images/leagues/national.png',
    ),
    LeaguesModels(
      id: 4,
      name: 'FIBA Europe',
      logo: 'assets/images/leagues/fiba.png',
    ),
  ];
}
