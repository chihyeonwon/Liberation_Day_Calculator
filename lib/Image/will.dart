import 'package:flutter/material.dart';

class WillImage extends StatefulWidget {
  const WillImage({Key? key}) : super(key: key);

  @override
  State<WillImage> createState() => _WillImageState();
}

class _WillImageState extends State<WillImage> {

  /* Dialog 띄우기 */
  void showDialogPop() {
    showDialog(
      context: context,
      barrierDismissible:
      false, //다이얼로그 바깥을 터치 시에 닫히도록 하는지 여부 (true: 닫힘, false: 닫히지않음)
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            //제목 정의
            '군단장 윌',
          ),
          content: SingleChildScrollView(
            //내용 정의
            child: ListBody(
              children: <Widget>[
                Text(
                  '피격 데미지 10% 증가',
                ),
                Text(
                  '1인 or 2인 가능(단,2인일 경우 최종데미지 50% 감소)',
                ),
              ],
            ),
          ),
          actions: <Widget>[
            //버튼 정의
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // 현재 화면을 종료하고 이전 화면으로 돌아가기
              },
              child: Text(
                '취소',
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
          child: InkWell(
            onTap:showDialogPop,
            child: Image.asset(
              'asset/img/will.png',

              // 화면의 반만큼 높이 구현
              height: MediaQuery.of(context).size.height/2,
            ),
          )
      ),
    );
  }
}

