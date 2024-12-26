import 'dart:math';

List<Map<String, dynamic>> genList(int n) {
  final Random random = Random();

  return List.generate(n, (i) {
    String randomText = random.nextInt(1000000).toString(); // 生成随机文本
    return {'index': i, 'text': randomText};
  });
}
