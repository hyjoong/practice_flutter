import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class dDayScreen extends StatelessWidget {
  const dDayScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[100],
      body: SafeArea(
        bottom: false,
        // Wrap with widget -> SafeArea 노치를 제외함
        child: Container(
          width: MediaQuery.of(context).size.width, // 가운대로 위젯들 정렬
          child: Column(
            // 아래에 사진을 추가하기위해서 Column으로 wrap
            children: [
              _TopPart(),
              _BottomPart(),
            ],
          ),
        ),
      ),
    );
  }
}

class _TopPart extends StatefulWidget {
  const _TopPart({Key? key}) : super(key: key);

  @override
  State<_TopPart> createState() => _TopPartState();
}

class _TopPartState extends State<_TopPart> {
  DateTime selectedDate = DateTime(
    DateTime.now().year,
    DateTime.now().month,
    DateTime.now().day,
  );

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();

    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'U&I',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'parisienne',
              fontSize: 80.0,
            ),
          ),
          Column(
            children: [
              Text(
                '우리 처음 만난날',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'sunflower',
                  fontSize: 30.0,
                ),
              ),
              Text(
                '${selectedDate.year}.${selectedDate.month}.${selectedDate.day}',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'sunflower',
                  fontSize: 20.0,
                ),
              ),
            ],
          ),
          IconButton(
              iconSize: 60.0,
              onPressed: () {
                // dialog
                showCupertinoDialog(
                  context: context,
                  barrierDismissible: true, // 요소 밖을 클릭하면 닫힘
                  builder: (BuildContext context) {
                    return Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        color: Colors.white,
                        height: 300.0,
                        child: CupertinoDatePicker(
                          mode: CupertinoDatePickerMode.date,
                          initialDateTime: selectedDate,
                          maximumDate: DateTime(
                            now.year,
                            now.month,
                            now.day,
                          ),
                          onDateTimeChanged: (DateTime date) {
                            setState(() {
                              selectedDate = date;
                            });
                          }, // 날짜나 시간이 바뀌었을 때
                        ),
                      ),
                    );
                  },
                );
              },
              icon: Icon(
                Icons.favorite,
                color: Colors.red,
              )),
          Text(
            'D+${DateTime(
              now.year,
              now.month,
              now.day,
            ).difference(selectedDate).inDays}',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'sunflower',
              fontSize: 50.0,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}

class _BottomPart extends StatelessWidget {
  const _BottomPart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      // 차지할 수 있는 최대 크기만 차지하라고 설정
      child: Image.asset(
        'asset/img/couple.jpg',
        fit: BoxFit.fill,
      ),
    );
  }
}
