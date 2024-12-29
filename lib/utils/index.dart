import 'dart:math';

final Random random = Random();

List<Map<String, dynamic>> genList(int n) {
  return List.generate(n, (i) {
    String randomText = random.nextInt(1000000).toString(); // 生成随机文本
    return {'index': i, 'text': randomText};
  });
}

String randomString() {
  return random.nextInt(1000000).toString();
}
