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

class _TopPart extends StatelessWidget {
  const _TopPart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                '2022-07-20',
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
                          onDateTimeChanged: (DateTime date){
                            print(date);
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
            'D+1',
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
      child: Image.asset(
        'asset/img/couple.jpg',
        fit: BoxFit.fill,
      ),
    );
  }
}
