class FilterController extends GetxController {
  RxString selectedFilter = ''.obs;

  String espressoImageUrl = 'assets/nice.jpeg';
  String defaultImageUrl = 'assets/Almond Joy Coffee Creamer.jpeg';

  void setFilter(String filter) {
    selectedFilter.value = filter;
  }
}
