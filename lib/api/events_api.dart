import 'package:azul_football/models/events.dart';

class EventsApi {
  static List<EventsModel> eListEventsBasketball = [
    EventsModel(
      id: '0',
      logoAway:
          'https://upload.wikimedia.org/wikipedia/en/thumb/c/c2/Minnesota_Timberwolves_logo.svg/1200px-Minnesota_Timberwolves_logo.svg.png',
      logoHome:
          'https://seeklogo.com/images/L/los-angeles-lakers-logo-805BBEB14F-seeklogo.com.png',
      nameAway: 'timberwolves',
      nameHome: 'Lakers',
      scoreAway: 117,
      scoreHome: 113,
      dateMatch: 'Today, 9:24 PM',
      timeMatch: '75:04',
    ),
    EventsModel(
      id: '1',
      logoAway:
          'https://upload.wikimedia.org/wikipedia/en/thumb/1/1b/Indiana_Pacers.svg/1200px-Indiana_Pacers.svg.png',
      logoHome:
          'https://upload.wikimedia.org/wikipedia/en/thumb/2/25/New_York_Knicks_logo.svg/1200px-New_York_Knicks_logo.svg.png',
      nameAway: 'Indiana Pacers',
      nameHome: 'New York Knicks',
      scoreAway: 109,
      scoreHome: 132,
      dateMatch: 'Today, 12:30 PM',
      timeMatch: '23:45',
    ),
    EventsModel(
      id: '2',
      logoAway:
          'https://upload.wikimedia.org/wikipedia/en/thumb/4/4a/Milwaukee_Bucks_logo.svg/1200px-Milwaukee_Bucks_logo.svg.png',
      logoHome:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/4/44/Brooklyn_Nets_newlogo.svg/1200px-Brooklyn_Nets_newlogo.svg.png',
      nameAway: 'milwaukee bucks',
      nameHome: 'Brooklyn Nets',
      scoreAway: 0,
      scoreHome: 0,
      dateMatch: 'Today, 15:24 PM',
      timeMatch: '',
    ),
    EventsModel(
      id: '3',
      logoAway:
          'https://upload.wikimedia.org/wikipedia/en/thumb/7/76/Denver_Nuggets.svg/1200px-Denver_Nuggets.svg.png',
      logoHome:
          'https://upload.wikimedia.org/wikipedia/en/thumb/b/bb/Los_Angeles_Clippers_%282015%29.svg/1200px-Los_Angeles_Clippers_%282015%29.svg.png',
      nameAway: 'Denver Nuggets',
      nameHome: 'Los Angeles Clippers',
      scoreAway: 1,
      scoreHome: 1,
      dateMatch: 'Today, 17:00 PM',
      timeMatch: '90+6',
    ),
  ];
  static List<EventsModel> eventsCricket = [
    EventsModel(
      id: '0',
      logoAway: 'https://s.ndtvimg.com/images/entities/300/india-6.png',
      logoHome:
          'https://www.freepnglogos.com/uploads/cricket-logo-png/pakistan-cricket-team-18.png',
      nameAway: 'India',
      nameHome: 'Pakistan',
      scoreAway: 234,
      scoreHome: 113,
      dateMatch: 'Today, 9:24 PM',
      timeMatch: '75:04',
    ),
    EventsModel(
      id: '1',
      logoAway:
          'https://upload.wikimedia.org/wikipedia/en/e/e4/Logo_of_Sri_Lanka_Cricket.png',
      logoHome:
          'https://banner2.cleanpng.com/20180513/rpe/kisspng-logo-sports-association-cricket-team-5af86fefba0305.0840727315262310237619.jpg',
      nameAway: 'Siri Lanka',
      nameHome: 'Super Cricket',
      scoreAway: 109,
      scoreHome: 132,
      dateMatch: 'Today, 12:30 PM',
      timeMatch: '23:45',
    ),
    EventsModel(
      id: '2',
      logoAway:
          'https://assets.stickpng.com/images/62822acce977897ab47e96cc.png',
      logoHome: 'https://cdn.cricket.af/logo-md.png',
      nameAway: 'Dubai',
      nameHome: 'Afghanistan',
      scoreAway: 223,
      scoreHome: 100,
      dateMatch: 'Today, 15:24 PM',
      timeMatch: '',
    ),
    EventsModel(
      id: '3',
      logoAway:
          'https://upload.wikimedia.org/wikipedia/en/thumb/7/76/Denver_Nuggets.svg/1200px-Denver_Nuggets.svg.png',
      logoHome:
          'https://www.freepnglogos.com/uploads/cricket-logo-png/logo-cricket-australia-png-26.png',
      nameAway: 'Denver Nuggets',
      nameHome: 'Los Angeles Clippers',
      scoreAway: 432,
      scoreHome: 233,
      dateMatch: 'Today, 17:00 PM',
      timeMatch: '90+6',
    ),
  ];
  static List<EventsModel> eListEvents = [
    EventsModel(
      id: '0',
      logoAway: 'https://s.ndtvimg.com/images/entities/300/england-5.png',
      logoHome:
          'https://ssl.gstatic.com/onebox/media/sports/logos/bXkiyIzsbDip3x2FFcUU3A_48x48.png',
      nameAway: 'Wolves',
      nameHome: 'West Ham',
      scoreAway: 312,
      scoreHome: 323,
      dateMatch: 'Today, 9:24 PM',
      timeMatch: '75:04',
    ),
    EventsModel(
      id: '1',
      logoAway:
          'https://ssl.gstatic.com/onebox/media/sports/logos/udQ6ns69PctCv143h-GeYw_48x48.png',
      logoHome:
          'https://ssl.gstatic.com/onebox/media/sports/logos/EKIe0e-ZIphOcfQAwsuEEQ_48x48.png',
      nameAway: 'Man United',
      nameHome: 'Brighton',
      scoreAway: 423,
      scoreHome: 233,
      dateMatch: 'Today, 12:30 PM',
      timeMatch: '23:45',
    ),
    EventsModel(
      id: '2',
      logoAway:
          'https://ssl.gstatic.com/onebox/media/sports/logos/wF8AgQsssfy3_GLyVR3dSg_48x48.png',
      logoHome:
          'https://ssl.gstatic.com/onebox/media/sports/logos/4us2nCgl6kgZc0t3hpW75Q_48x48.png',
      nameAway: 'Sheffield United',
      nameHome: 'Arsenal',
      scoreAway: 0,
      scoreHome: 0,
      dateMatch: 'Today, 15:24 PM',
      timeMatch: '',
    ),
    EventsModel(
      id: '3',
      logoAway:
          'https://ssl.gstatic.com/onebox/media/sports/logos/C3J47ea36cMBc4XPbp9aaA_48x48.png',
      logoHome:
          'https://ssl.gstatic.com/onebox/media/sports/logos/8piQOzndGmApKYTcvyN9vA_48x48.png',
      nameAway: 'Everton',
      nameHome: 'Crystal Palace',
      scoreAway: 1,
      scoreHome: 1,
      dateMatch: 'Today, 17:00 PM',
      timeMatch: '90+6',
    ),
  ];
  static List<EventsModel> eListEventsVolleyball = [
    EventsModel(
      id: '0',
      logoAway:
          'https://vcunited.club/wp-content/uploads/2022/06/VC-United-Logo-22@2x.png',
      logoHome:
          'https://seeklogo.com/images/S/SCG_Volleyball_Team-logo-0D03676949-seeklogo.com.png',
      nameAway: 'Everton',
      nameHome: 'Crystal Palace',
      scoreAway: 23,
      scoreHome: 12,
      dateMatch: 'Today, 17:00 PM',
      timeMatch: '90+6',
    ),
    EventsModel(
      id: '1',
      logoAway:
          'https://i.pinimg.com/originals/19/13/01/191301b56e08213096c8129dc1bc4c22.png',
      logoHome:
          'https://bergenvolleyball.com/wp-content/uploads/2021/03/Bergen-Volleyball-Club-1.png',
      nameAway: 'Man United',
      nameHome: 'Brighton',
      scoreAway: 22,
      scoreHome: 12,
      dateMatch: 'Today, 12:30 PM',
      timeMatch: '23:45',
    ),
    EventsModel(
      id: '2',
      logoAway:
          'https://images.vexels.com/media/users/3/180390/isolated/preview/a6b52e4e657cae7e1c4d9a60484680a2-volleyball-team-branches-badge.png',
      logoHome:
          'https://fusionvbc.com/wp-content/uploads/2019/03/Fusion-Logo.png',
      nameAway: 'Sheffield United',
      nameHome: 'Arsenal',
      scoreAway: 2,
      scoreHome: 3,
      dateMatch: 'Today, 15:24 PM',
      timeMatch: '',
    ),
    EventsModel(
      id: '3',
      logoAway:
          'https://vcunited.club/wp-content/uploads/2022/06/VC-United-Logo-22@2x.png',
      logoHome:
          'https://seeklogo.com/images/S/SCG_Volleyball_Team-logo-0D03676949-seeklogo.com.png',
      nameAway: 'Everton',
      nameHome: 'Crystal Palace',
      scoreAway: 13,
      scoreHome: 11,
      dateMatch: 'Today, 17:00 PM',
      timeMatch: '90+6',
    ),
  ];
}
