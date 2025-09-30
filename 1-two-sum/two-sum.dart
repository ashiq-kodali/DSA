class Solution {
  List<int> twoSum(List<int> n, int t) {
     Map<int, int> a = {};
     for (int i = 0; i < n.length; i++) {
    int b = t - n[i];
    if (a.containsKey(b)) {
      return [a[b]!, i];
    }
    a[n[i]] = i;
  }
   return [];
    
  }
}