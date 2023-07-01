import 'package:rss_feed/controller/xml_controller.dart';
import 'package:test/test.dart';

void main() {
  late XMLHandler xmlHandler;
  setUp(() => xmlHandler = XMLHandler());
  test('XMLHandler List ensure that it is not empty', () {
    expect(xmlHandler.getXMLURLs, isNotEmpty);
  });
}
