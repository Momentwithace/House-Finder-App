class House{
  late String name;
  late String address;
  late String imageUrl;

  House(this.name, this.address, this.imageUrl);

  static List<House> generateRecommended(){
    return [
      House(
      "ADA Dome", 
      "P23A, Chapo's Drive Vi", 
      "assets/images/house.jpeg"
      ),
      House(
      "Le Chapol Paradisa",  
      "P23A, Kaduna People", 
      "assets/images/straight-house.jpeg"
      ),
      House(
      "Ace Of Spade Villa", 
      "G34E, Ace Drive Vi", 
      "assets/images/banana-house.jpeg"
      ),
       House(
      "Juno Building", 
      "P21G Emily Akinola, Yaba", 
      "assets/images/house4.jpeg"
      ),
      House(
      "House One",  
      "P12H, Ogunmola Drive VI", 
      "assets/images/house1.jpeg"
      ),
      House(
      "IdanVilla", 
      "G34E, Idan Drive Vi", 
      "assets/images/house2.jpeg"
      ),
    ];
  }

  static List<House> generateBestOffer(){
    return [
      House(
      "ADA Dome", 
      "P23A, Chapo's Drive Vi", 
      "assets/images/house3.jpeg"
      ),
      House(
      "Le Chapol Paradisa",  
      "P23A, Kaduna People", 
      "assets/images/house5..jpeg"
      ),
      House(
      "Ace Of Spade Villa", 
      "G34E, Ace Drive Vi", 
      "assets/images/banana-house.jpeg"
      ),
      
    ];
  }
}