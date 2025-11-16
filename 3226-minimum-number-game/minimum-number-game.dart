class Solution {
  List<int> numberGame(List<int> nums) {

    nums.sort();
    List<int> arr = List<int>.filled(nums.length, 0);

    for (int i = 0; i < nums.length; i += 2) {

      int aliceElement = nums[i];
      int bobElement = nums[i + 1];

      arr[i] = bobElement;
      arr[i + 1] = aliceElement;
    }

    return arr;
  }
}