class Solution {
  List<bool> kidsWithCandies(List<int> candies, int extraCandies) {

    int maxCandies = candies.reduce(max);

    return candies.map((int kidCandies) {
      return kidCandies + extraCandies >= maxCandies;
    }).toList();
  }
}