import 'package:cli/cli.dart' as cli;
import 'package:http/http.dart' as http;
import 'package:intl/date_symbol_data_file.dart';
import 'package:intl/intl.dart';

void main(List<String> arguments) async {
  print('Hello world: ${cli.calculate()}!');
  // try{
  //   final httpPackageUrl = Uri.https('dart.dev', '/f/packages/http.json');
  //   final httpPackageInfo = await http.read(httpPackageUrl);
  //   print(httpPackageInfo);
  // }catch(error){
  //   print(error);
  // }

  var f = NumberFormat('###,###.0#', 'en_US');
  print(f.format(12345345.345));

  print(DateFormat.yMd('en_US').parse('1/10/2012'));
  print(DateFormat('Hms', 'en_US').parse('14:23:01'));
  print(DateFormat.yMEd().add_jms().format(DateTime.now()));
}
