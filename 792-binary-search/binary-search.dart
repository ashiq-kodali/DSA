class Solution {
  int search(List<int> nums, int target) {

    int left = 0;
    int right = nums.length - 1;

    while (left <= right) {

      int mid = left + (right - left) ~/ 2;

      int midValue = nums[mid];

      if (midValue == target) {
        return mid;
      } else if (midValue < target) {
        left = mid + 1;
      } else { 
        right = mid - 1;
      }
    }

    return -1;
  }
}