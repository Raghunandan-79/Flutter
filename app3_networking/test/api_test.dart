import 'package:app3_networking/services/apis.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test("Test API", () async {
    final response = await API.getMemes();
    print(response.data!.memes);
    expect(response.success, true);
  });
}
