class ArknightsResourceCalculator {
  late final Map<String, dynamic> _data;
  
  // 누적합 테이블
  late final List<List<int>> _cumExp;
  late final List<List<int>> _cumLmd;

  ArknightsResourceCalculator(Map<String, dynamic> jsonData) {
    _data = jsonData;
    _cumExp = _buildCumulativeTable(jsonData['exp_table']);
    _cumLmd = _buildCumulativeTable(jsonData['upgrade_cost_lmd_table']);
  }

  // Raw 리스트를 누적합 리스트로 변환하는 헬퍼 함수
  List<List<int>> _buildCumulativeTable(Map<String, dynamic> table) {
    return [
      _generatePrefixSum(List<int>.from(table['elite_0'])),
      _generatePrefixSum(List<int>.from(table['elite_1'])),
      _generatePrefixSum(List<int>.from(table['elite_2'])),
    ];
  }

  List<int> _generatePrefixSum(List<int> raw) {
    List<int> prefixSum = List.filled(raw.length + 1, 0);
    for (int i = 0; i < raw.length; i++) {
      prefixSum[i + 1] = prefixSum[i] + raw[i];
    }
    return prefixSum;
  }

  CalcResult calculate(int rarity, int curE, int curL, int tarE, int tarL) {
    int totalExp = 0;
    int totalLmd = 0;

    // [수정] List<int>.from()을 사용하여 명시적으로 타입을 변환합니다.
    final List<int> maxLevels = List<int>.from(_data['max_level_table']["${rarity}_star"]);
    final List<int> promoCosts = List<int>.from(_data['promotion_costs_lmd']["${rarity}_star"]);

    for (int e = curE; e <= tarE; e++) {
      int start = (e == curE) ? curL : 1;
      int limit = (e == tarE) ? tarL : maxLevels[e];
      
      totalExp += _cumExp[e][limit] - _cumExp[e][start];
      totalLmd += _cumLmd[e][limit] - _cumLmd[e][start];

      if (e < tarE) {
        totalLmd += (promoCosts[e] as num).toInt();
      }
    }
    return CalcResult(totalExp, totalLmd);
  }
}

class CalcResult {
  final int exp;
  final int lmd;
  CalcResult(this.exp, this.lmd);

  @override
  String toString() => "필요 EXP: $exp, 필요 LMD: $lmd";
}