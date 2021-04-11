class Sight {
  final String name;
  final Coordinates coordinates;
  final String url;
  final String details;
  final String type;

  Sight({
    this.name,
    this.type,
    this.url,
    this.details,
    this.coordinates,
  });
}

class Coordinates {
  final double lat;
  final double lon;

  Coordinates({
    this.lat,
    this.lon,
  });
}
