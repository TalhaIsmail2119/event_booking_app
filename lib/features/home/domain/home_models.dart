class EventModel {
  final String id;
  final String title;
  final String location;
  final String image;
  final String dateDay;
  final String dateMonth;
  final int going;

  EventModel({
    required this.id,
    required this.title,
    required this.location,
    required this.image,
    required this.dateDay,
    required this.dateMonth,
    required this.going,
  });
}

class CategoryModel {
  final String name;
  final String icon;
  final int colorHex;

  CategoryModel({
    required this.name,
    required this.icon,
    required this.colorHex,
  });
}

class NearbyModel {
  final String title;
  final String subtitle;
  final String icon;

  NearbyModel({
    required this.title,
    required this.subtitle,
    required this.icon,
  });
}
