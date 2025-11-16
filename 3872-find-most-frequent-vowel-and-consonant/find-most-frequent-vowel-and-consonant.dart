class Solution {
  int maxFreqSum(String s) {

    List<int> freq = List.filled(26, 0);

    final int aCode = 'a'.codeUnitAt(0);

    for (final int charCode in s.codeUnits) {
      final int index = charCode - aCode;
      freq[index]++;
    }

    final Set<int> vowelIndices = {0, 4, 8, 14, 20};

    int maxVowelFreq = 0;
    int maxConsonantFreq = 0;

    for (int i = 0; i < 26; i++) {
      final int count = freq[i];
      if (vowelIndices.contains(i)) {
        maxVowelFreq = max(maxVowelFreq, count);
      } else {
        maxConsonantFreq = max(maxConsonantFreq, count);
      }
    }

    return maxVowelFreq + maxConsonantFreq;
  }
}