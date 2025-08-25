import '../domain/home_models.dart';

class HomeRepository {
  Future<List<EventModel>> fetchEvents() async {
    await Future.delayed(const Duration(milliseconds: 500));
    return [
      EventModel(
        id: "1",
        title: "International Band Music Concert",
        location: "36 Guild Street London, UK",
        image: "assets/images/event1.png",
        dateDay: "10",
        dateMonth: "JUNE",
        going: 20,
      ),
      EventModel(
        id: "2",
        title: "Jo Malone’s London Concert",
        location: "Radius Gallery, USA",
        image: "assets/images/event2.png",
        dateDay: "10",
        dateMonth: "JUNE",
        going: 28,
      ),
    ];
  }

  Future<List<CategoryModel>> fetchCategories() async {
    return [
      CategoryModel(name: "Sports", icon: "sports_soccer", colorHex: 0xFFFF6B6B),
      CategoryModel(name: "Music", icon: "music_note", colorHex: 0xFFFFA143),
      CategoryModel(name: "Food", icon: "restaurant", colorHex: 0xFF2AC769),
    ];
  }

  Future<List<NearbyModel>> fetchNearby() async {
    return [
      NearbyModel(title: "Explore", subtitle: "Art & Design", icon: "explore"),
      NearbyModel(title: "Workshop", subtitle: "UI/UX", icon: "design_services"),
    ];
  }
}
