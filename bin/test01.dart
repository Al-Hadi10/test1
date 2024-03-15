void main() {
  // Create a list of fruits
  List<Map<String, dynamic>> fruits = [
    {"name": "Apple", "color": "Red", "price": 2.5},
    {"name": "Banana", "color": "Yellow", "price": 1.0},
    {"name": "Grapes", "color": "Purple", "price": 3.0},
  ];

  // Display details of each fruit
  displayFruitDetails(fruits);

  // Apply a discount of 10%
  applyPriceDiscount(fruits, 10);

  // Display details after discount
  print("\nFruit Details After Applying 10% Discount: ");
  displayFruitDiscount(fruits);
}

// Function to display details of each fruit
void displayFruitDetails(List<Map<String, dynamic>> fruits) {
  print("Original Fruit Details before Discount: ");
  for (var fruit in fruits) {
    print("Name: ${fruit['name']}, Color: ${fruit['color']}, Price: \$${fruit['price']}");
  }
}

void displayFruitDiscount(List<Map<String, dynamic>> fruits) {
  //print("Fruit Details:");
  for (var fruit in fruits) {
    print("Name: ${fruit['name']}, Color: ${fruit['color']}, Price: \$${fruit['price']}");
  }
}

// Function to apply discount to each fruit's price
void applyPriceDiscount(List<Map<String, dynamic>> fruits, double discountPercentage) {
  for (var fruit in fruits) {
    double price = fruit['price'];
    double discountedPrice = price - (price * discountPercentage / 100);
    fruit['price'] = discountedPrice;
  }
}
