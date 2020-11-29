// To parse this JSON data, do
//
//     final liveMatchesResponse = liveMatchesResponseFromJson(jsonString);

import 'dart:convert';

LiveMatchesResponse liveMatchesResponseFromJson(String str) => LiveMatchesResponse.fromJson(json.decode(str));

String liveMatchesResponseToJson(LiveMatchesResponse data) => json.encode(data.toJson());

class LiveMatchesResponse {
    LiveMatchesResponse({
        this.generatedAt,
        this.schema,
        this.results,
    });

    DateTime generatedAt;
    String schema;
    List<Result> results;

    factory LiveMatchesResponse.fromJson(Map<String, dynamic> json) => LiveMatchesResponse(
        generatedAt: DateTime.parse(json["generated_at"]),
        schema: json["schema"],
        results: List<Result>.from(json["results"].map((x) => Result.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "generated_at": generatedAt.toIso8601String(),
        "schema": schema,
        "results": List<dynamic>.from(results.map((x) => x.toJson())),
    };
}

class Result {
    Result({
        this.sportEvent,
        this.sportEventStatus,
    });

    SportEvent sportEvent;
    SportEventStatus sportEventStatus;

    factory Result.fromJson(Map<String, dynamic> json) => Result(
        sportEvent: SportEvent.fromJson(json["sport_event"]),
        sportEventStatus: SportEventStatus.fromJson(json["sport_event_status"]),
    );

    Map<String, dynamic> toJson() => {
        "sport_event": sportEvent.toJson(),
        "sport_event_status": sportEventStatus.toJson(),
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
        id: json["id"],
        scheduled: DateTime.parse(json["scheduled"]),
        startTimeTbd: json["start_time_tbd"],
        tournamentRound: TournamentRound.fromJson(json["tournament_round"]),
        season: Season.fromJson(json["season"]),
        tournament: Tournament.fromJson(json["tournament"]),
        competitors: List<Competitor>.from(json["competitors"].map((x) => Competitor.fromJson(x))),
        venue: json["venue"] == null ? null : Venue.fromJson(json["venue"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "scheduled": scheduled.toIso8601String(),
        "start_time_tbd": startTimeTbd,
        "tournament_round": tournamentRound.toJson(),
        "season": season.toJson(),
        "tournament": tournament.toJson(),
        "competitors": List<dynamic>.from(competitors.map((x) => x.toJson())),
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
    CountryNameEnum country;
    CountryCode countryCode;
    String abbreviation;
    Qualifier qualifier;

    factory Competitor.fromJson(Map<String, dynamic> json) => Competitor(
        id: json["id"],
        name: json["name"],
        country: json["country"] == null ? null : countryNameEnumValues.map[json["country"]],
        countryCode: json["country_code"] == null ? null : countryCodeValues.map[json["country_code"]],
        abbreviation: json["abbreviation"],
        qualifier: qualifierValues.map[json["qualifier"]],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "country": country == null ? null : countryNameEnumValues.reverse[country],
        "country_code": countryCode == null ? null : countryCodeValues.reverse[countryCode],
        "abbreviation": abbreviation,
        "qualifier": qualifierValues.reverse[qualifier],
    };
}

enum CountryNameEnum { HONG_KONG_CHINA, JAPAN, REPUBLIC_OF_KOREA, CHINA, SINGAPORE, GEORGIA }

final countryNameEnumValues = EnumValues({
    "China": CountryNameEnum.CHINA,
    "Georgia": CountryNameEnum.GEORGIA,
    "Hong Kong, China": CountryNameEnum.HONG_KONG_CHINA,
    "Japan": CountryNameEnum.JAPAN,
    "Republic of Korea": CountryNameEnum.REPUBLIC_OF_KOREA,
    "Singapore": CountryNameEnum.SINGAPORE
});

enum CountryCode { HKG, JPN, KOR, CHN, SGP, GEO }

final countryCodeValues = EnumValues({
    "CHN": CountryCode.CHN,
    "GEO": CountryCode.GEO,
    "HKG": CountryCode.HKG,
    "JPN": CountryCode.JPN,
    "KOR": CountryCode.KOR,
    "SGP": CountryCode.SGP
});

enum Qualifier { HOME, AWAY }

final qualifierValues = EnumValues({
    "away": Qualifier.AWAY,
    "home": Qualifier.HOME
});

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
        id: json["id"],
        name: json["name"],
        startDate: DateTime.parse(json["start_date"]),
        endDate: DateTime.parse(json["end_date"]),
        year: json["year"],
        tournamentId: json["tournament_id"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "start_date": "${startDate.year.toString().padLeft(4, '0')}-${startDate.month.toString().padLeft(2, '0')}-${startDate.day.toString().padLeft(2, '0')}",
        "end_date": "${endDate.year.toString().padLeft(4, '0')}-${endDate.month.toString().padLeft(2, '0')}-${endDate.day.toString().padLeft(2, '0')}",
        "year": year,
        "tournament_id": tournamentId,
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
    Category category;

    factory Tournament.fromJson(Map<String, dynamic> json) => Tournament(
        id: json["id"],
        name: json["name"],
        sport: Sport.fromJson(json["sport"]),
        category: Category.fromJson(json["category"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "sport": sport.toJson(),
        "category": category.toJson(),
    };
}

class Category {
    Category({
        this.id,
        this.name,
        this.countryCode,
    });

    String id;
    CountryNameEnum name;
    CountryCode countryCode;

    factory Category.fromJson(Map<String, dynamic> json) => Category(
        id: json["id"],
        name: countryNameEnumValues.map[json["name"]],
        countryCode: countryCodeValues.map[json["country_code"]],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": countryNameEnumValues.reverse[name],
        "country_code": countryCodeValues.reverse[countryCode],
    };
}

class Sport {
    Sport({
        this.id,
        this.name,
    });

    Id id;
    SportName name;

    factory Sport.fromJson(Map<String, dynamic> json) => Sport(
        id: idValues.map[json["id"]],
        name: sportNameValues.map[json["name"]],
    );

    Map<String, dynamic> toJson() => {
        "id": idValues.reverse[id],
        "name": sportNameValues.reverse[name],
    };
}

enum Id { SR_SPORT_1 }

final idValues = EnumValues({
    "sr:sport:1": Id.SR_SPORT_1
});

enum SportName { SOCCER }

final sportNameValues = EnumValues({
    "Soccer": SportName.SOCCER
});

class TournamentRound {
    TournamentRound({
        this.type,
        this.number,
        this.phase,
        this.name,
        this.cupRoundMatchNumber,
        this.cupRoundMatches,
        this.group,
    });

    Type type;
    int number;
    Phase phase;
    String name;
    int cupRoundMatchNumber;
    int cupRoundMatches;
    String group;

    factory TournamentRound.fromJson(Map<String, dynamic> json) => TournamentRound(
        type: typeValues.map[json["type"]],
        number: json["number"] == null ? null : json["number"],
        phase: json["phase"] == null ? null : phaseValues.map[json["phase"]],
        name: json["name"] == null ? null : json["name"],
        cupRoundMatchNumber: json["cup_round_match_number"] == null ? null : json["cup_round_match_number"],
        cupRoundMatches: json["cup_round_matches"] == null ? null : json["cup_round_matches"],
        group: json["group"] == null ? null : json["group"],
    );

    Map<String, dynamic> toJson() => {
        "type": typeValues.reverse[type],
        "number": number == null ? null : number,
        "phase": phase == null ? null : phaseValues.reverse[phase],
        "name": name == null ? null : name,
        "cup_round_match_number": cupRoundMatchNumber == null ? null : cupRoundMatchNumber,
        "cup_round_matches": cupRoundMatches == null ? null : cupRoundMatches,
        "group": group == null ? null : group,
    };
}

enum Phase { REGULAR_SEASON, PROMOTION_PLAYOFFS, PLAYOFFS }

final phaseValues = EnumValues({
    "playoffs": Phase.PLAYOFFS,
    "promotion_playoffs": Phase.PROMOTION_PLAYOFFS,
    "regular season": Phase.REGULAR_SEASON
});

enum Type { GROUP, CUP }

final typeValues = EnumValues({
    "cup": Type.CUP,
    "group": Type.GROUP
});

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
    CountryNameEnum countryName;
    String mapCoordinates;
    CountryCode countryCode;

    factory Venue.fromJson(Map<String, dynamic> json) => Venue(
        id: json["id"],
        name: json["name"],
        capacity: json["capacity"] == null ? null : json["capacity"],
        cityName: json["city_name"],
        countryName: countryNameEnumValues.map[json["country_name"]],
        mapCoordinates: json["map_coordinates"] == null ? null : json["map_coordinates"],
        countryCode: countryCodeValues.map[json["country_code"]],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "capacity": capacity == null ? null : capacity,
        "city_name": cityName,
        "country_name": countryNameEnumValues.reverse[countryName],
        "map_coordinates": mapCoordinates == null ? null : mapCoordinates,
        "country_code": countryCodeValues.reverse[countryCode],
    };
}

class SportEventStatus {
    SportEventStatus({
        this.status,
        this.matchStatus,
        this.homeScore,
        this.awayScore,
        this.period,
        this.clock,
        this.periodScores,
    });

    Status status;
    String matchStatus;
    int homeScore;
    int awayScore;
    int period;
    Clock clock;
    List<PeriodScore> periodScores;

    factory SportEventStatus.fromJson(Map<String, dynamic> json) => SportEventStatus(
        status: statusValues.map[json["status"]],
        matchStatus: json["match_status"] == null ? null : json["match_status"],
        homeScore: json["home_score"] == null ? null : json["home_score"],
        awayScore: json["away_score"] == null ? null : json["away_score"],
        period: json["period"] == null ? null : json["period"],
        clock: json["clock"] == null ? null : Clock.fromJson(json["clock"]),
        periodScores: json["period_scores"] == null ? null : List<PeriodScore>.from(json["period_scores"].map((x) => PeriodScore.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "status": statusValues.reverse[status],
        "match_status": matchStatus == null ? null : matchStatus,
        "home_score": homeScore == null ? null : homeScore,
        "away_score": awayScore == null ? null : awayScore,
        "period": period == null ? null : period,
        "clock": clock == null ? null : clock.toJson(),
        "period_scores": periodScores == null ? null : List<dynamic>.from(periodScores.map((x) => x.toJson())),
    };
}

class Clock {
    Clock({
        this.matchTime,
        this.stoppageTime,
        this.stoppageTimeAnnounced,
    });

    String matchTime;
    String stoppageTime;
    String stoppageTimeAnnounced;

    factory Clock.fromJson(Map<String, dynamic> json) => Clock(
        matchTime: json["match_time"],
        stoppageTime: json["stoppage_time"] == null ? null : json["stoppage_time"],
        stoppageTimeAnnounced: json["stoppage_time_announced"] == null ? null : json["stoppage_time_announced"],
    );

    Map<String, dynamic> toJson() => {
        "match_time": matchTime,
        "stoppage_time": stoppageTime == null ? null : stoppageTime,
        "stoppage_time_announced": stoppageTimeAnnounced == null ? null : stoppageTimeAnnounced,
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
        homeScore: json["home_score"],
        awayScore: json["away_score"],
        type: json["type"],
        number: json["number"],
    );

    Map<String, dynamic> toJson() => {
        "home_score": homeScore,
        "away_score": awayScore,
        "type": type,
        "number": number,
    };
}

enum Status { NOT_STARTED, LIVE }

final statusValues = EnumValues({
    "live": Status.LIVE,
    "not_started": Status.NOT_STARTED
});

class EnumValues<T> {
    Map<String, T> map;
    Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
        if (reverseMap == null) {
            reverseMap = map.map((k, v) => new MapEntry(v, k));
        }
        return reverseMap;
    }
}
