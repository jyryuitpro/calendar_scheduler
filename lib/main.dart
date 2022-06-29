import 'package:calendar_scheduler/screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() async {
  // 만약에 runApp을 실행하기 전에 다른 코드를 실행할 경우
  // 플러터 프레임워크가 준비가 된 상태인지 확인해줘야합니다.
  // 아래 코드를 실행하면 플러터 프레임워크가 준비가 된 상태가 될 때까지
  // 기다릴 수 있습니다.
  // runApp이 실행되면 아래 코드가 자동으로 실행이 됩니다.
  // 하지만 현재는 runApp이 실행되기 전에 다른 코드를 실행해야하기 때문에
  // 별도로 아래 코드를 실행해주어야 합니다.
  WidgetsFlutterBinding.ensureInitialized();

  await initializeDateFormatting();
  
  runApp(
    MaterialApp(
      theme: ThemeData(
        fontFamily: 'NotoSans',
      ),
      home: HomeScreen(),
    ),
  );
}
