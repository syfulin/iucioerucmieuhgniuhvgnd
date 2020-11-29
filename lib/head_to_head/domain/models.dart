// To parse this JSON data, do
//
//     final matchSummary = matchSummaryFromJson(jsonString);

import 'dart:convert';

MatchSummary matchSummaryFromJson(String str) =>
    MatchSummary.fromJson(json.decode(str));

String matchSummaryToJson(MatchSummary data) => json.encode(data.toJson());

class MatchSummary {
  MatchSummary({
    this.generatedAt,
    this.schema,
    this.sportEvent,
    this.sportEventConditions,
    this.sportEventStatus,
    this.statistics,
  });

  DateTime generatedAt;
  String schema;
  SportEvent sportEvent;
  SportEventConditions sportEventConditions;
  SportEventStatus sportEventStatus;
  Statistics statistics;

  factory MatchSummary.fromJson(Map<String, dynamic> json) => MatchSummary(
        generatedAt: json["generated_at"] == null
            ? null
            : DateTime.parse(json["generated_at"]),
        schema: json["schema"] == null ? null : json["schema"],
        sportEvent: json["sport_event"] == null
            ? null
            : SportEvent.fromJson(json["sport_event"]),
        sportEventConditions: json["sport_event_conditions"] == null
            ? null
            : SportEventConditions.fromJson(json["sport_event_conditions"]),
        sportEventStatus: json["sport_event_status"] == null
            ? null
            : SportEventStatus.fromJson(json["sport_event_status"]),
        statistics: json["statistics"] == null
            ? null
            : Statistics.fromJson(json["statistics"]),
      );

  Map<String, dynamic> toJson() => {
        "generated_at":
            generatedAt == null ? null : generatedAt.toIso8601String(),
        "schema": schema == null ? null : schema,
        "sport_event": sportEvent == null ? null : sportEvent.toJson(),
        "sport_event_conditions":
            sportEventConditions == null ? null : sportEventConditions.toJson(),
        "sport_event_status":
            sportEventStatus == null ? null : sportEventStatus.toJson(),
        "statistics": statistics == null ? null : statistics.toJson(),
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
        id: json["id"] == null ? null : json["id"],
        scheduled: json["scheduled"] == null
            ? null
            : DateTime.parse(json["scheduled"]),
        startTimeTbd:
            json["start_time_tbd"] == null ? null : json["start_time_tbd"],
        tournamentRound: json["tournament_round"] == null
            ? null
            : TournamentRound.fromJson(json["tournament_round"]),
        season: json["season"] == null ? null : Season.fromJson(json["season"]),
        tournament: json["tournament"] == null
            ? null
            : Tournament.fromJson(json["tournament"]),
        competitors: json["competitors"] == null
            ? null
            : List<Competitor>.from(
                json["competitors"].map((x) => Competitor.fromJson(x))),
        venue: json["venue"] == null ? null : Venue.fromJson(json["venue"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "scheduled": scheduled == null ? null : scheduled.toIso8601String(),
        "start_time_tbd": startTimeTbd == null ? null : startTimeTbd,
        "tournament_round":
            tournamentRound == null ? null : tournamentRound.toJson(),
        "season": season == null ? null : season.toJson(),
        "tournament": tournament == null ? null : tournament.toJson(),
        "competitors": competitors == null
            ? null
            : List<dynamic>.from(competitors.map((x) => x.toJson())),
        "venue": venue == null ? null : venue.toJson(),
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
        id: json["id"] == null ? null : json["id"],
        name: json["name"] == null ? null : json["name"],
        country: json["country"] == null ? null : json["country"],
        countryCode: json["country_code"] == null ? null : json["country_code"],
        abbreviation:
            json["abbreviation"] == null ? null : json["abbreviation"],
        qualifier: json["qualifier"] == null ? null : json["qualifier"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "name": name == null ? null : name,
        "country": country == null ? null : country,
        "country_code": countryCode == null ? null : countryCode,
        "abbreviation": abbreviation == null ? null : abbreviation,
        "qualifier": qualifier == null ? null : qualifier,
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
        id: json["id"] == null ? null : json["id"],
        name: json["name"] == null ? null : json["name"],
        startDate: json["start_date"] == null
            ? null
            : DateTime.parse(json["start_date"]),
        endDate:
            json["end_date"] == null ? null : DateTime.parse(json["end_date"]),
        year: json["year"] == null ? null : json["year"],
        tournamentId:
            json["tournament_id"] == null ? null : json["tournament_id"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "name": name == null ? null : name,
        "start_date": startDate == null
            ? null
            : "${startDate.year.toString().padLeft(4, '0')}-${startDate.month.toString().padLeft(2, '0')}-${startDate.day.toString().padLeft(2, '0')}",
        "end_date": endDate == null
            ? null
            : "${endDate.year.toString().padLeft(4, '0')}-${endDate.month.toString().padLeft(2, '0')}-${endDate.day.toString().padLeft(2, '0')}",
        "year": year == null ? null : year,
        "tournament_id": tournamentId == null ? null : tournamentId,
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
  Sport sport;
  Referee category;

  factory Tournament.fromJson(Map<String, dynamic> json) => Tournament(
        id: json["id"] == null ? null : json["id"],
        name: json["name"] == null ? null : json["name"],
        sport: json["sport"] == null ? null : Sport.fromJson(json["sport"]),
        category: json["category"] == null
            ? null
            : Referee.fromJson(json["category"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "name": name == null ? null : name,
        "sport": sport == null ? null : sport.toJson(),
        "category": category == null ? null : category.toJson(),
      };
}

class Referee {
  Referee({
    this.id,
    this.name,
    this.countryCode,
    this.nationality,
  });

  String id;
  String name;
  String countryCode;
  String nationality;

  factory Referee.fromJson(Map<String, dynamic> json) => Referee(
        id: json["id"] == null ? null : json["id"],
        name: json["name"] == null ? null : json["name"],
        countryCode: json["country_code"] == null ? null : json["country_code"],
        nationality: json["nationality"] == null ? null : json["nationality"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "name": name == null ? null : name,
        "country_code": countryCode == null ? null : countryCode,
        "nationality": nationality == null ? null : nationality,
      };
}

class Sport {
  Sport({
    this.id,
    this.name,
  });

  String id;
  String name;

  factory Sport.fromJson(Map<String, dynamic> json) => Sport(
        id: json["id"] == null ? null : json["id"],
        name: json["name"] == null ? null : json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "name": name == null ? null : name,
      };
}

class TournamentRound {
  TournamentRound({
    this.type,
    this.number,
    this.phase,
  });

  String type;
  int number;
  String phase;

  factory TournamentRound.fromJson(Map<String, dynamic> json) =>
      TournamentRound(
        type: json["type"] == null ? null : json["type"],
        number: json["number"] == null ? null : json["number"],
        phase: json["phase"] == null ? null : json["phase"],
      );

  Map<String, dynamic> toJson() => {
        "type": type == null ? null : type,
        "number": number == null ? null : number,
        "phase": phase == null ? null : phase,
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
        id: json["id"] == null ? null : json["id"],
        name: json["name"] == null ? null : json["name"],
        capacity: json["capacity"] == null ? null : json["capacity"],
        cityName: json["city_name"] == null ? null : json["city_name"],
        countryName: json["country_name"] == null ? null : json["country_name"],
        mapCoordinates:
            json["map_coordinates"] == null ? null : json["map_coordinates"],
        countryCode: json["country_code"] == null ? null : json["country_code"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "name": name == null ? null : name,
        "capacity": capacity == null ? null : capacity,
        "city_name": cityName == null ? null : cityName,
        "country_name": countryName == null ? null : countryName,
        "map_coordinates": mapCoordinates == null ? null : mapCoordinates,
        "country_code": countryCode == null ? null : countryCode,
      };
}

class SportEventConditions {
  SportEventConditions({
    this.referee,
    this.venue,
  });

  Referee referee;
  Venue venue;

  factory SportEventConditions.fromJson(Map<String, dynamic> json) =>
      SportEventConditions(
        referee:
            json["referee"] == null ? null : Referee.fromJson(json["referee"]),
        venue: json["venue"] == null ? null : Venue.fromJson(json["venue"]),
      );

  Map<String, dynamic> toJson() => {
        "referee": referee == null ? null : referee.toJson(),
        "venue": venue == null ? null : venue.toJson(),
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
        status: json["status"] == null ? null : json["status"],
        matchStatus: json["match_status"] == null ? null : json["match_status"],
        homeScore: json["home_score"] == null ? null : json["home_score"],
        awayScore: json["away_score"] == null ? null : json["away_score"],
        winnerId: json["winner_id"] == null ? null : json["winner_id"],
        periodScores: json["period_scores"] == null
            ? null
            : List<PeriodScore>.from(
                json["period_scores"].map((x) => PeriodScore.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status == null ? null : status,
        "match_status": matchStatus == null ? null : matchStatus,
        "home_score": homeScore == null ? null : homeScore,
        "away_score": awayScore == null ? null : awayScore,
        "winner_id": winnerId == null ? null : winnerId,
        "period_scores": periodScores == null
            ? null
            : List<dynamic>.from(periodScores.map((x) => x.toJson())),
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
        homeScore: json["home_score"] == null ? null : json["home_score"],
        awayScore: json["away_score"] == null ? null : json["away_score"],
        type: json["type"] == null ? null : json["type"],
        number: json["number"] == null ? null : json["number"],
      );

  Map<String, dynamic> toJson() => {
        "home_score": homeScore == null ? null : homeScore,
        "away_score": awayScore == null ? null : awayScore,
        "type": type == null ? null : type,
        "number": number == null ? null : number,
      };
}

class Statistics {
  Statistics({
    this.teams,
  });

  List<Team> teams;

  factory Statistics.fromJson(Map<String, dynamic> json) => Statistics(
        teams: json["teams"] == null
            ? null
            : List<Team>.from(json["teams"].map((x) => Team.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "teams": teams == null
            ? null
            : List<dynamic>.from(teams.map((x) => x.toJson())),
      };
}

class Team {
  Team({
    this.id,
    this.name,
    this.abbreviation,
    this.qualifier,
    this.statistics,
    this.players,
  });

  String id;
  String name;
  String abbreviation;
  String qualifier;
  Map<String, int> statistics;
  List<Player> players;

  factory Team.fromJson(Map<String, dynamic> json) => Team(
        id: json["id"] == null ? null : json["id"],
        name: json["name"] == null ? null : json["name"],
        abbreviation:
            json["abbreviation"] == null ? null : json["abbreviation"],
        qualifier: json["qualifier"] == null ? null : json["qualifier"],
        statistics: json["statistics"] == null
            ? null
            : Map.from(json["statistics"])
                .map((k, v) => MapEntry<String, int>(k, v)),
        players: json["players"] == null
            ? null
            : List<Player>.from(json["players"].map((x) => Player.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "name": name == null ? null : name,
        "abbreviation": abbreviation == null ? null : abbreviation,
        "qualifier": qualifier == null ? null : qualifier,
        "statistics": statistics == null
            ? null
            : Map.from(statistics)
                .map((k, v) => MapEntry<String, dynamic>(k, v)),
        "players": players == null
            ? null
            : List<dynamic>.from(players.map((x) => x.toJson())),
      };
}

class Player {
  Player({
    this.id,
    this.name,
    this.substitutedIn,
    this.substitutedOut,
    this.goalsScored,
    this.assists,
    this.ownGoals,
    this.yellowCards,
    this.yellowRedCards,
    this.redCards,
  });

  String id;
  String name;
  int substitutedIn;
  int substitutedOut;
  int goalsScored;
  int assists;
  int ownGoals;
  int yellowCards;
  int yellowRedCards;
  int redCards;

  factory Player.fromJson(Map<String, dynamic> json) => Player(
        id: json["id"] == null ? null : json["id"],
        name: json["name"] == null ? null : json["name"],
        substitutedIn:
            json["substituted_in"] == null ? null : json["substituted_in"],
        substitutedOut:
            json["substituted_out"] == null ? null : json["substituted_out"],
        goalsScored: json["goals_scored"] == null ? null : json["goals_scored"],
        assists: json["assists"] == null ? null : json["assists"],
        ownGoals: json["own_goals"] == null ? null : json["own_goals"],
        yellowCards: json["yellow_cards"] == null ? null : json["yellow_cards"],
        yellowRedCards:
            json["yellow_red_cards"] == null ? null : json["yellow_red_cards"],
        redCards: json["red_cards"] == null ? null : json["red_cards"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "name": name == null ? null : name,
        "substituted_in": substitutedIn == null ? null : substitutedIn,
        "substituted_out": substitutedOut == null ? null : substitutedOut,
        "goals_scored": goalsScored == null ? null : goalsScored,
        "assists": assists == null ? null : assists,
        "own_goals": ownGoals == null ? null : ownGoals,
        "yellow_cards": yellowCards == null ? null : yellowCards,
        "yellow_red_cards": yellowRedCards == null ? null : yellowRedCards,
        "red_cards": redCards == null ? null : redCards,
      };
}
