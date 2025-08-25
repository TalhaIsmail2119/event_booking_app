import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../data/home_repo.dart';
import '../../domain/home_models.dart';


final _repoProvider = Provider<HomeRepository>((ref) => HomeRepository());

final eventsProvider = FutureProvider<List<EventModel>>((ref) async {
  return ref.read(_repoProvider).fetchEvents();
});

final categoriesProvider = FutureProvider<List<CategoryModel>>((ref) async {
  return ref.read(_repoProvider).fetchCategories();
});

final nearbyProvider = FutureProvider<List<NearbyModel>>((ref) async {
  return ref.read(_repoProvider).fetchNearby();
});
