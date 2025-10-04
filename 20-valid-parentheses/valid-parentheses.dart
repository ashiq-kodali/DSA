class Solution {
  bool isValid(String s) {
    List<String> stack = [];
    Map<String, String> bracketMap = {
      ')': '(',
      '}': '{',
      ']': '[',
    };
    for (String ch in s.split('')) {
      if (bracketMap.containsValue(ch)) {
        stack.add(ch);
      } else if (bracketMap.containsKey(ch)) {
        if (stack.isEmpty || stack.removeLast() != bracketMap[ch]) {
          return false;
        }
      }
    }
    return stack.isEmpty;
  }
}
