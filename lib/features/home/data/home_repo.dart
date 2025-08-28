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
        dateDay: "12",
        dateMonth: "JUNE",
        going: 28,
      ),
      EventModel(
        id: "3",
        title: "Tech Expo 2025",
        location: "Berlin Expo Center, Germany",
        image: "assets/images/event3.png",
        dateDay: "15",
        dateMonth: "JULY",
        going: 45,
      ),
      EventModel(
        id: "4",
        title: "Startup Meetup",
        location: "Dhaka Innovation Hub, Bangladesh",
        image: "assets/images/event4.png",
        dateDay: "18",
        dateMonth: "JULY",
        going: 60,
      ),
      EventModel(
        id: "5",
        title: "Art & Culture Festival",
        location: "Paris, France",
        image: "assets/images/event5.png",
        dateDay: "20",
        dateMonth: "AUG",
        going: 75,
      ),
      EventModel(
        id: "6",
        title: "Marathon 2025",
        location: "New York, USA",
        image: "assets/images/event6.png",
        dateDay: "22",
        dateMonth: "AUG",
        going: 120,
      ),
      EventModel(
        id: "7",
        title: "Food Carnival",
        location: "Istanbul, Turkey",
        image: "assets/images/event7.png",
        dateDay: "25",
        dateMonth: "AUG",
        going: 98,
      ),
      EventModel(
        id: "8",
        title: "Comedy Night Live",
        location: "London Theatre, UK",
        image: "assets/images/event8.png",
        dateDay: "28",
        dateMonth: "AUG",
        going: 150,
      ),
      EventModel(
        id: "9",
        title: "Robotics Workshop",
        location: "Tokyo Tech Park, Japan",
        image: "assets/images/event9.png",
        dateDay: "02",
        dateMonth: "SEP",
        going: 40,
      ),
      EventModel(
        id: "10",
        title: "Gaming Championship",
        location: "Seoul Arena, South Korea",
        image: "assets/images/event10.png",
        dateDay: "05",
        dateMonth: "SEP",
        going: 200,
      ),
    ];
  }

  Future<List<CategoryModel>> fetchCategories() async {
    return [
      CategoryModel(name: "Sports", icon: "sports_soccer", colorHex: 0xFFFF6B6B),
      CategoryModel(name: "Music", icon: "music_note", colorHex: 0xFFFFA143),
      CategoryModel(name: "Food", icon: "restaurant", colorHex: 0xFF2AC769),
      CategoryModel(name: "Art", icon: "brush", colorHex: 0xFF6C5CE7),
      CategoryModel(name: "Technology", icon: "devices", colorHex: 0xFF0984E3),
      CategoryModel(name: "Travel", icon: "flight", colorHex: 0xFF00B894),
      CategoryModel(name: "Education", icon: "school", colorHex: 0xFFD63031),
      CategoryModel(name: "Health", icon: "fitness_center", colorHex: 0xFF55EFC4),
      CategoryModel(name: "Business", icon: "business_center", colorHex: 0xFF2D3436),
      CategoryModel(name: "Theatre", icon: "theaters", colorHex: 0xFFFDCB6E),
    ];
  }

  Future<List<NearbyModel>> fetchNearby() async {
    return [
      NearbyModel(title: "Explore", subtitle: "Art & Design", icon: "explore"),
      NearbyModel(title: "Workshop", subtitle: "UI/UX", icon: "design_services"),
      NearbyModel(title: "Cafe Meetup", subtitle: "Food & Friends", icon: "local_cafe"),
      NearbyModel(title: "Jogging Group", subtitle: "Health & Fitness", icon: "directions_run"),
      NearbyModel(title: "Startup Talk", subtitle: "Entrepreneurship", icon: "lightbulb"),
      NearbyModel(title: "Movie Night", subtitle: "Cinema Lovers", icon: "movie"),
      NearbyModel(title: "Photography Walk", subtitle: "Street Shots", icon: "photo_camera"),
      NearbyModel(title: "Book Club", subtitle: "Readers Meetup", icon: "menu_book"),
      NearbyModel(title: "Coding Bootcamp", subtitle: "Programming", icon: "code"),
      NearbyModel(title: "Travel Buddies", subtitle: "Adventure Trips", icon: "hiking"),
    ];
  }
}

