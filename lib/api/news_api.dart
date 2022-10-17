import 'package:azul_football/models/news.dart';

class NewsApi {
  static List<NewsModel> aListNews = [
    NewsModel(
      id: '1',
      date: '2H AGO',
      title:
          'Bayern Munich 2-3 PSG: Kylian Mbappe double gives Mauricio Pochettino first-leg advantage',
      category: 'PREMIER LEAGUE',
      image:
          'https://le10static.com/img/cache/article/576x324/0000/0018/185382.jpeg',
      body: _kBodyNews[0],
    ),
    NewsModel(
      id: '2',
      date: '22, Mars',
      title: 'Porto vs Chelsea preview, team news, stats, kick-off time',
      category: 'NEWS',
      image:
          'https://e0.365dm.com/21/04/768x432/skysports-christian-pulisic_5328530.jpg?20210403130827',
      body: _kBodyNews[1],
    ),
    NewsModel(
      id: '3',
      date: 'Yesterday',
      title:
          'Birmingham City Women: PFA supports players over complaints to club board',
      category: 'WOMEN',
      image:
          'https://e0.365dm.com/21/01/768x432/skysports-birmingham-city-women_5232125.jpg?20210109110547',
      body: _kBodyNews[2],
    ),
    NewsModel(
      id: '4',
      date: 'TODAY',
      title:
          'Derby County: No Limits Sports consortium agrees takeover of Championship club',
      category: 'SPORTS',
      image:
          'https://i.le360.ma/le360sport/sites/default/files/styles/img_742_454/public/assets/images/2020/01-reda/ffffffff.jpg?itok=pJH-qO8J',
      body: _kBodyNews[3],
    ),
    NewsModel(
      id: '5',
      date: '21 MARS',
      title:
          'Jurgen Klopp: I know Trent Alexander-Arnold better than any coach, and he is world class',
      category: 'COACHS',
      image:
          'https://images2.minutemediacdn.com/image/fetch/w_736,h_485,c_fill,g_auto,f_auto/https%3A%2F%2Fthetopflight.com%2Fwp-content%2Fuploads%2Fgetty-images%2F2020%2F05%2F1206596172-850x560.jpeg',
      body: _kBodyNews[4],
    ),
  ];
  static List<NewsModel> aListNewsBasketball = [
    NewsModel(
      id: '1',
      date: '1 Day AGO',
      title:
          'The Nets actually appear to be enjoying SHARING THE BASKETBALL',
      category: 'NBA',
      image:
          'https://staticg.sportskeeda.com/editor/2022/10/0a061-16656425885347-1920.jpg',
      body: _kBodyNews[0],
    ),
    NewsModel(
      id: '2',
      date: '22, Mars',
      title: 'Fatima Reyadh, first woman to coach men’s basketball team in Bahrain',
      category: 'NEWS',
      image:
          'https://cdn.siasat.com/wp-content/uploads/2022/10/IMG_20221012_214716_1200_x_900_pixel-780x470.jpg',
      body: _kBodyNews[1],
    ),
    NewsModel(
      id: '3',
      date: 'Yesterday',
      title:
          'Former NBA Player Ben Gordon Charged With Assaulting Son, Police',
      category: 'WOMEN',
      image:
          'https://images.news18.com/ibnlive/uploads/2022/10/ben-gordon-16656296163x2.jpg?impolicy=website&width=510&height=356',
      body: _kBodyNews[2],
    ),
    NewsModel(
      id: '4',
      date: 'TODAY',
      title:
          'DRAYMOND GREEN FINED BUT NOT SUSPENDED, SET TO REJOIN WARRIORS',
      category: 'NBA',
      image:
          'https://cdn.nba.com/manage/2022/10/kerr-draymond-768x432.jpg',
      body: _kBodyNews[3],
    ),
    NewsModel(
      id: '5',
      date: '21 MARS',
      title:
          'ZION WILLIAMSON TWISTS LEFT ANKLE, SAYS HE’S FINE',
      category: 'COACHS',
      image:
          'https://cdn.vox-cdn.com/thumbor/Z2RtHowWfISZoqyWF5H232F3SOM=/0x0:4781x7171/1400x933/filters:focal(1865x1195:2629x1959):no_upscale()/cdn.vox-cdn.com/uploads/chorus_image/image/71431492/usa_today_19123852.0.jpg',
      body: _kBodyNews[4],
    ),
  ];
  static List<String> _kBodyNews = [
    """
    <div>
    <p>Kylian Mbappe's double in a performance of real endeavour saw Paris Saint-Germain earn a surprise 3-2 Champions League quarter-final first-leg win at holders Bayern Munich.</p>
<p>&nbsp;</p>
<p>Mbappe's opener was fumbled by Manuel Neuer into the bottom corner with less than three minutes on the clock at a snow-covered Allianz Arena, as Mauricio Pochettino's side threw themselves at everything from first whistle to last in a match of incredible tempo and intensity.</p>
<p>&nbsp;</p>
<p>They doubled their advantage before half-time after Bayern switched off from a corner and left Marquinhos to turn Neymar's ball forward beyond Neuer, although the PSG captain was injured in the process and forced off moments later.</p>
<p>&nbsp;</p>
<p>Eric Maxim Choupo-Moting pulled a goal back with the interval approaching from Benjamin Pavard's cross with another, from Joshua Kimmich, allowing Thomas Muller to head past Keylor Navas and level up on the hour mark.</p>
<p>Neymar and Mbappe had caused real problems when allowed to combine and punished Bayern again for PSG's third eight minutes later, with the latter's disguised finish inside Neuer's near post giving the French side a sensational first-leg advantage - and three away goals - ahead of Tuesday's second leg at the Parc des Princes.</p>
<p>&nbsp;</p>
<p>In the process, they stopped Bayern setting a new club record of 20 European Cup games without defeat, by inflicting their first in the Champions League since Liverpool won 3-1 at the Allianz Arena in March 2019.</p>
    </div>
    """,
    """
    <div>
    <p><em>Christian Pulisic and N'Golo Kante are available for Chelsea's Champions League quarter-final first leg against Porto; follow Porto vs Chelsea via our dedicated live blog on Sky Sports website and app on Wednesday; kick-off at 8pm</em></p>
<p>&nbsp;</p>
<p>Team news, stats, kick-off time ahead of the Champions League quarter-final first leg between Porto and Chelsea on Wednesday.</p>
<h3>Team news</h3>
<p><strong>Chelsea&nbsp;</strong>will have Christian Pulisic and N'Golo Kante fit after hamstring issues for Wednesday's first-leg last-eight clash with Porto.</p>
<p>&nbsp;</p>
<p>Thomas Tuchel confirmed Tammy Abraham will also be in the squad, though Kante is unlikely to start after his latest muscle complaint.</p>
<div class="sdc-article-widget sdc-site-oddschecker" data-component-name="sdc-site-oddschecker">
<div class="ocw QXJ0aWNsZSBQcm9tbw==" data-oc-no="1">&nbsp;</div>
</div>
<p><strong>Porto&nbsp;</strong>will take on Chelsea without their suspended two top goalscorers, Sergio Oliveira and Mehdi Taremi, for Wednesday's match in Seville.</p>
    </div>
    """,
    """
    <div>
    <p>Birmingham's players sent a letter to the club's board last week detailing grievances with facilities, travel, and budget restrictions; the WSL side were beaten 6-0 by league leaders Chelsea on Sunday; Fran Kirby, Beth Mead, Katie McCabe, and others speak out in support of Blues players</p>
<p>&nbsp;</p>
<p><strong>The PFA is supporting Birmingham City Women players after they wrote a letter to the club's board raising issues around facilities, travel, and budget restrictions.</strong></p>
<p>The FA is looking into whether Birmingham City have breached the terms of their WSL licence, following the concerns raised in the letter.</p>
<p>&nbsp;</p>
<p>In the letter first, which was reported by the&nbsp;<em>Sunday Telegraph,</em>&nbsp;the players said they were experiencing working conditions that "prevent us from performing our jobs to the best of our ability".</p>
<div class="sdc-article-widget sdc-site-oddschecker" data-component-name="sdc-site-oddschecker">
<div class="ocw QXJ0aWNsZSBQcm9tbw==" data-oc-no="1">&nbsp;</div>
</div>
<p>The PFA says it has been "in close dialogue" with senior representatives from the Birmingham City squad throughout the season.</p>
<p>"There have been concerns regarding the squad's size throughout the campaign, particularly the potential impact on the players' health and fitness," a statement read.</p>
<p>&nbsp;</p>
<p>"Following injuries in January, the PFA contacted The FA ahead of a Women's Super League fixture with Tottenham Hotspur.</p>
<div class="ad ad--teads">
<div class="sdc-site-au " data-ad-format="teads" data-type="" aria-hidden="true">&nbsp;</div>
</div>
<p>"Due to the limited number of players available, we felt there was a potential risk to those who were not fully match-fit or carrying injuries if the match went ahead. The game was subsequently cancelled.</p>
    </div>
    """,
    """
    <div>
    <p>"We are privileged to take ownership of one of the founding members of the Football League and to build a fresh future for the fans, staff and players of Derby County. We are looking forward to working with Wayne Rooney and his team."</p>
<p><em>Derby County have confirmed a deal to allow No Limit Sports to become the new owners of the club has been agreed.</em></p>
<p>The sale needs to be cleared by the EFL's Owners and Directors Test but a transaction has been agreed with the buyers and current owner Mel Morris.</p>
<p>&nbsp;</p>
<p>No Limit Sports is fronted by Spanish businessman Erik Alonso, who had an offer to buy Sheffield Wednesday rejected earlier this year after working as an advisor to their owner Dejphon Chansiri.</p>
<div class="sdc-article-widget sdc-site-oddschecker" data-component-name="sdc-site-oddschecker">
<div class="ocw QXJ0aWNsZSBQcm9tbw==" data-oc-no="1">&nbsp;</div>
</div>
<p>The Derventio group - led by Sheikh Khaled, a member of the Abu Dhabi royal family - agreed a deal to buy the club in November but it stalled, with several expected completion dates missed.</p>
<p>Derby County will make no further comment until the deal with No Limit Sports has been completed but the prospective new owners issued a statement speaking of their 'privilege' at taking over the club.</p>
<p>&nbsp;</p>
<h4>"We are proud and delighted to announce No Limits Sports Limited have approached the EFL for approval to be the new owners of Derby County Football Club, following agreement with the club's current owner Mel Morris," the statement said.</h4>
<h2>"We are privileged to take ownership of one of the founding members of the Football League and to build a fresh future for the fans, staff and players of Derby County.</h2>
    </div>
    """,
    """
    <div>
    <p>The right-back, who was in the Premier League Team of the Year last season for title winners Liverpool, was left out of Gareth Southgate's squad for the recent internationals following a drop in form this season for Jurgen Klopp's side.</p>
<p>&nbsp;</p>
<p><strong>Trent Alexander-Arnold answered his critics following his recent England snub with a superb display in Liverpool's 3-0 win at Arsenal on Saturday Night Football.</strong></p>
<p>The right-back, who was in the Premier League Team of the Year last season for title winners Liverpool, was left out of Gareth Southgate's squad for the recent internationals following a drop in form this season for Jurgen Klopp's side.</p>
<p>&nbsp;</p>
<p>But he reacted on Saturday with an unplayable cross for Diogo Jota's opener in the second half, putting in an impressive all-round display as Liverpool started their late charge for the top four.</p>
<div class="sdc-article-widget sdc-site-oddschecker" data-component-name="sdc-site-oddschecker">
<div class="ocw QXJ0aWNsZSBQcm9tbw==" data-oc-no="1">&nbsp;</div>
</div>
<p>Here's what his manager and the Sky Sports pundits had to say about the 22-year-old right back as he looks to work his way back into Southgate's plans for Euro 2020.</p>
<ul>
<li><strong><a href="https://www.skysports.com/football/arsenal-vs-liverpool/report/429127">Arsenal 0-3 Liverpool - Match report and free highlights</a></strong></li>
<li><strong><a href="https://www.skysports.com/football/news/11095/12264856/mikel-arteta-issues-apology-to-arsenal-supporters-after-liverpool-defeat">Arteta in shock after loss | Nev: Arsenal fed like lions</a></strong></li>
<li><strong><a href="https://www.skysports.com/football/news/11669/12265306/liverpools-return-to-form-against-arsenal-suggests-they-could-finish-a-difficult-season-on-a-high">Are Liverpool back?</a>&nbsp;|&nbsp;<a href="https://www.skysports.com/football/arsenal-vs-liverpool/teams/429127">How the teams lined up</a>&nbsp;|&nbsp;<a href="https://www.skysports.com/football/arsenal-vs-liverpool/stats/429127">Match stats</a></strong></li>
</ul>
<p>&nbsp;</p>
<h4>"Trent Alexander-Arnold showed his class, again. I don't want to make another discussion about Trent or stuff like that. I said it was Gareth [Southgate's] decision.</h4>
<div class="ad ad--teads">
<div class="sdc-site-au " data-ad-format="teads" data-type="" aria-hidden="true">&nbsp;</div>
</div>
<p>"He is blessed with the choice he has in that position especially, but Trent is in a good shape. If somebody says he is not then I have to say he is wrong, that is all. But I am not responsible for [Southgate's] decisions."</p>
    </div>
    """,
  ];
}
