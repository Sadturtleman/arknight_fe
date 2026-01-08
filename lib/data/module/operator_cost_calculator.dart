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

    // 1. 해당 성급의 정예화 단계별 최대 레벨 가져오기 (예: 6성은 [50, 80, 90])
    final List<int> maxLevels = _data['max_level_table']["${rarity}_star"];
    final List<int> promoCosts = _data['promotion_costs_lmd']["${rarity}_star"];

    for (int e = curE; e <= tarE; e++) {
      int start = (e == curE) ? curL : 1;
      
      // 핵심: 목표 단계가 아니면 해당 단계의 '최대 레벨'까지만 더함
      int limit = (e == tarE) ? tarL : maxLevels[e];
      
      // 누적합 계산 시 인덱스가 배열 범위를 넘지 않도록 제한
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