class House{
  late String name;
  late String address;
  late String imageUrl;

  House(this.name, this.address, this.imageUrl);

  static List<House> generateRecommended(){
    return [
      House(
      "Le Chapol Paradisa", 
      "P23A, Chapo's Drive Vi", 
      "assets/images/house1.jpeg"
      ),
      House(
      "ADA Dome", 
      "P23A, Kaduna People", 
      "assets/images/house3.jpeg"
      ),
      House(
      "Ace Of Spade Villa", 
      "G34E, Ace Drive Vi", 
      "assets/images/house2.jpeg"
      ),
    ];
  }
}