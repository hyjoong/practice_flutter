import 'package:flutter/material.dart';
import 'package:hello_world/constants/color.dart';

class NumberScreen extends StatefulWidget {
  const NumberScreen({Key? key}) : super(key: key);

  @override
  State<NumberScreen> createState() => _NumberScreenState();
}

class _NumberScreenState extends State<NumberScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PRIMARY_COLOR,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          // fromLTRB(left, top, right, bottom) 으로도 가능
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '랜덤숫자 생성기',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.settings,
                        color: RED_COLOR,
                      ))
                ],
              ),
              Expanded(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      123,
                      456,
                      789,
                    ]
                        .asMap()
                        .entries
                    // asMap().entries로 key, value값 가져올 수 있음
                    // (0:123), (1:456), (2:789)
                        .map(
                          (x) => Padding(
                            padding:
                                EdgeInsets.only(bottom: x.key == 2 ? 0 :16.0),
                            child: Row(
                              children: x.value
                                  .toString()
                                  .split('')
                                  .map(
                                    (y) => Image.asset(
                                      'asset/img/$y.png',
                                      height: 70.0,
                                      width: 50.0,
                                    ),
                                  )
                                  .toList(),
                            ),
                          ),
                        )
                        .toList()),
              ),
              SizedBox(
                // Cointainer도 사용되지만 여러 용도로 사용이 가능하지만 width, height만 조절할거라서 SizedBox 사용
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: RED_COLOR, // 활성화 됐을 때 색상
                  ),
                  onPressed: () {},
                  child: Text('생성하기'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
