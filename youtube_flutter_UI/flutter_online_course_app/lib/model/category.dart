class Category {
  final String name;
  final int numOfCourses;
  final String image;
  final bool bestSeller;

  Category(this.name, this.numOfCourses, this.image, this.bestSeller);
}

List<Category> categories = categoriesData
    .map((item) => Category(
        item['name'], item['courses'], item['image'], item['bestSeller']))
    .toList();

var categoriesData = [
  {
    "name": "Marketing1",
    'courses': 17,
    'image': "assets/images/marketing.png",
    'bestSeller': true
  },
  {
    "name": "Marketing2",
    'courses': 15,
    'image': "assets/images/marketing.png",
    'bestSeller': false
  },
  {
    "name": "Marketing3",
    'courses': 6,
    'image': "assets/images/marketing.png",
    'bestSeller': false
  },
  {
    "name": "UX Design1",
    'courses': 25,
    'image': "assets/images/ux_design.png",
    'bestSeller': true
  },
  {
    "name": "UX Design2",
    'courses': 10,
    'image': "assets/images/ux_design.png",
    'bestSeller': false
  },
  {
    "name": "Photography1",
    'courses': 13,
    'image': "assets/images/photography.png",
    'bestSeller': false
  },
  {
    "name": "Photography2",
    'courses': 5,
    'image': "assets/images/photography.png",
    'bestSeller': false
  },
  {
    "name": "Business",
    'courses': 17,
    'image': "assets/images/business.png",
    'bestSeller': true
  },
];
