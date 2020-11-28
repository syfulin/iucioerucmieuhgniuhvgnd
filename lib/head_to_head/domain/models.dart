// todo separate on files and make immutable

class MatchSummary {
  MatchSummary({
    this.generatedAt,
    this.schema,
    this.sportEvent,
    this.sportEventConditions,
    this.sportEventStatus,
  });

  DateTime generatedAt;
  String schema;
  SportEvent sportEvent;
  SportEventConditions sportEventConditions;
  SportEventStatus sportEventStatus;

  factory MatchSummary.fromJson(Map<String, dynamic> json) => MatchSummary(
        generatedAt: DateTime.parse(json['generated_at']),
        schema: json['schema'],
        sportEvent: SportEvent.fromJson(json['sport_event']),
        sportEventConditions:
            SportEventConditions.fromJson(json['sport_event_conditions']),
        sportEventStatus: SportEventStatus.fromJson(json['sport_event_status']),
      );

  Map<String, dynamic> toJson() => {
        'generated_at': generatedAt.toIso8601String(),
        'schema': schema,
        'sport_event': sportEvent.toJson(),
        'sport_event_conditions': sportEventConditions.toJson(),
        'sport_event_status': sportEventStatus.toJson(),
      };
}

class SportEvent {
  SportEvent({
    this.id,
    this.scheduled,
    this.startTimeTbd,
    this.tournamentRound,
    this.season,
    this.tournament,
    this.competitors,
    this.venue,
  });

  String id;
  DateTime scheduled;
  bool startTimeTbd;
  TournamentRound tournamentRound;
  Season season;
  Tournament tournament;
  List<Competitor> competitors;
  Venue venue;

  factory SportEvent.fromJson(Map<String, dynamic> json) => SportEvent(
        id: json['id'],
        scheduled: DateTime.parse(json['scheduled']),
        startTimeTbd: json['start_time_tbd'],
        tournamentRound: TournamentRound.fromJson(json['tournament_round']),
        season: Season.fromJson(json['season']),
        tournament: Tournament.fromJson(json['tournament']),
        competitors: List<Competitor>.from(
            json['competitors'].map((x) => Competitor.fromJson(x))),
        venue: Venue.fromJson(json['venue']),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'scheduled': scheduled.toIso8601String(),
        'start_time_tbd': startTimeTbd,
        'tournament_round': tournamentRound.toJson(),
        'season': season.toJson(),
        'tournament': tournament.toJson(),
        'competitors': List<dynamic>.from(competitors.map((x) => x.toJson())),
        'venue': venue.toJson(),
      };
}

class Competitor {
  Competitor({
    this.id,
    this.name,
    this.country,
    this.countryCode,
    this.abbreviation,
    this.qualifier,
  });

  String id;
  String name;
  String country;
  String countryCode;
  String abbreviation;
  String qualifier;

  factory Competitor.fromJson(Map<String, dynamic> json) => Competitor(
        id: json['id'],
        name: json['name'],
        country: json['country'],
        countryCode: json['country_code'],
        abbreviation: json['abbreviation'],
        qualifier: json['qualifier'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'country': country,
        'country_code': countryCode,
        'abbreviation': abbreviation,
        'qualifier': qualifier,
      };
}

class Season {
  Season({
    this.id,
    this.name,
    this.startDate,
    this.endDate,
    this.year,
    this.tournamentId,
  });

  String id;
  String name;
  DateTime startDate;
  DateTime endDate;
  String year;
  String tournamentId;

  factory Season.fromJson(Map<String, dynamic> json) => Season(
        id: json['id'],
        name: json['name'],
        startDate: DateTime.parse(json['start_date']),
        endDate: DateTime.parse(json['end_date']),
        year: json['year'],
        tournamentId: json['tournament_id'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'start_date':
            '${startDate.year.toString().padLeft(4, '0')}-${startDate.month.toString().padLeft(2, '0')}-${startDate.day.toString().padLeft(2, '0')}',
        'end_date':
            '${endDate.year.toString().padLeft(4, '0')}-${endDate.month.toString().padLeft(2, '0')}-${endDate.day.toString().padLeft(2, '0')}',
        'year': year,
        'tournament_id': tournamentId,
      };
}

class Tournament {
  Tournament({
    this.id,
    this.name,
    this.sport,
    this.category,
  });

  String id;
  String name;
  Category sport;
  Category category;

  factory Tournament.fromJson(Map<String, dynamic> json) => Tournament(
        id: json['id'],
        name: json['name'],
        sport: Category.fromJson(json['sport']),
        category: Category.fromJson(json['category']),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'sport': sport.toJson(),
        'category': category.toJson(),
      };
}

class Category {
  Category({
    this.id,
    this.name,
  });

  String id;
  String name;

  factory Category.fromJson(Map<String, dynamic> json) => Category(
        id: json['id'],
        name: json['name'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
      };
}

class TournamentRound {
  TournamentRound({
    this.type,
    this.name,
    this.cupRoundMatchNumber,
    this.cupRoundMatches,
    this.phase,
    this.tournamentMatchNumber,
  });

  String type;
  String name;
  int cupRoundMatchNumber;
  int cupRoundMatches;
  String phase;
  int tournamentMatchNumber;

  factory TournamentRound.fromJson(Map<String, dynamic> json) =>
      TournamentRound(
        type: json['type'],
        name: json['name'],
        cupRoundMatchNumber: json['cup_round_match_number'],
        cupRoundMatches: json['cup_round_matches'],
        phase: json['phase'],
        tournamentMatchNumber: json['tournament_match_number'],
      );

  Map<String, dynamic> toJson() => {
        'type': type,
        'name': name,
        'cup_round_match_number': cupRoundMatchNumber,
        'cup_round_matches': cupRoundMatches,
        'phase': phase,
        'tournament_match_number': tournamentMatchNumber,
      };
}

class Venue {
  Venue({
    this.id,
    this.name,
    this.capacity,
    this.cityName,
    this.countryName,
    this.mapCoordinates,
    this.countryCode,
  });

  String id;
  String name;
  int capacity;
  String cityName;
  String countryName;
  String mapCoordinates;
  String countryCode;

  factory Venue.fromJson(Map<String, dynamic> json) => Venue(
        id: json['id'],
        name: json['name'],
        capacity: json['capacity'],
        cityName: json['city_name'],
        countryName: json['country_name'],
        mapCoordinates: json['map_coordinates'],
        countryCode: json['country_code'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'capacity': capacity,
        'city_name': cityName,
        'country_name': countryName,
        'map_coordinates': mapCoordinates,
        'country_code': countryCode,
      };
}

class SportEventConditions {
  SportEventConditions({
    this.neutralVenue,
    this.venue,
    this.attendance,
    this.weatherInfo,
  });

  bool neutralVenue;
  Venue venue;
  int attendance;
  WeatherInfo weatherInfo;

  factory SportEventConditions.fromJson(Map<String, dynamic> json) =>
      SportEventConditions(
        neutralVenue: json['neutral_venue'],
        venue: Venue.fromJson(json['venue']),
        attendance: json['attendance'],
        weatherInfo: WeatherInfo.fromJson(json['weather_info']),
      );

  Map<String, dynamic> toJson() => {
        'neutral_venue': neutralVenue,
        'venue': venue.toJson(),
        'attendance': attendance,
        'weather_info': weatherInfo.toJson(),
      };
}

class WeatherInfo {
  WeatherInfo({
    this.pitch,
    this.weatherConditions,
  });

  String pitch;
  String weatherConditions;

  factory WeatherInfo.fromJson(Map<String, dynamic> json) => WeatherInfo(
        pitch: json['pitch'],
        weatherConditions: json['weather_conditions'],
      );

  Map<String, dynamic> toJson() => {
        'pitch': pitch,
        'weather_conditions': weatherConditions,
      };
}

class SportEventStatus {
  SportEventStatus({
    this.status,
    this.matchStatus,
    this.homeScore,
    this.awayScore,
    this.winnerId,
    this.periodScores,
  });

  String status;
  String matchStatus;
  int homeScore;
  int awayScore;
  String winnerId;
  List<PeriodScore> periodScores;

  factory SportEventStatus.fromJson(Map<String, dynamic> json) =>
      SportEventStatus(
        status: json['status'],
        matchStatus: json['match_status'],
        homeScore: json['home_score'],
        awayScore: json['away_score'],
        winnerId: json['winner_id'],
        periodScores: List<PeriodScore>.from(
            json['period_scores'].map((x) => PeriodScore.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        'status': status,
        'match_status': matchStatus,
        'home_score': homeScore,
        'away_score': awayScore,
        'winner_id': winnerId,
        'period_scores':
            List<dynamic>.from(periodScores.map((x) => x.toJson())),
      };
}

class PeriodScore {
  PeriodScore({
    this.homeScore,
    this.awayScore,
    this.type,
    this.number,
  });

  int homeScore;
  int awayScore;
  String type;
  int number;

  factory PeriodScore.fromJson(Map<String, dynamic> json) => PeriodScore(
        homeScore: json['home_score'],
        awayScore: json['away_score'],
        type: json['type'],
        number: json['number'] == null ? null : json['number'],
      );

  Map<String, dynamic> toJson() => {
        'home_score': homeScore,
        'away_score': awayScore,
        'type': type,
        'number': number == null ? null : number,
      };
}
