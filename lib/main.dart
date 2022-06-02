import 'package:flutter/material.dart';
import 'package:kakao/profile_dto.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<ProfileDto> updateFriendList = [
    ProfileDto(imagePath: 'assets/minsoo.png', name: '남민수', stateMessasge: '나영이짱짱맨'),
    ProfileDto(imagePath: 'assets/android.png', name: '김안드', stateMessasge: '안드 공부를 하자'),
  ];
  List<ProfileDto> friendList = [
    ProfileDto(imagePath: 'assets/hw.png', name: '박효완', stateMessasge: 'ill see you'),
    ProfileDto(imagePath: 'assets/js.png', name: '최재성', stateMessasge: ''),
    ProfileDto(imagePath: 'assets/jw.png', name: '최종원', stateMessasge: ''),
    ProfileDto(imagePath: 'assets/mh.png', name: '박민현', stateMessasge: ''),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,

        ///// 앱바 오른쪽 버튼들
        actions: [
          ///// 친구추가
          Padding(
            padding: const EdgeInsets.only(
              right: 15,
            ),
            child: Image.asset(
              'assets/add_user.png',
              width: 20,
              height: 20,
            ),
          ),

          ///// 뮤직
          Padding(
            padding: const EdgeInsets.only(
              right: 15,
            ),
            child: Image.asset(
              'assets/music.png',
              width: 20,
              height: 20,
            ),
          ),

          ///// 검색
          Padding(
            padding: const EdgeInsets.only(
              right: 15,
            ),
            child: Image.asset(
              'assets/search.png',
              width: 20,
              height: 20,
            ),
          ),

          ///// 설정
          Padding(
            padding: const EdgeInsets.only(
              right: 15,
            ),
            child: Image.asset(
              'assets/setting.png',
              width: 20,
              height: 20,
            ),
          ),
        ],

        ///// 앱바 타이틀
        title: const Text(
          "친구",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ///// 내 프로필
            Padding(
              padding: const EdgeInsets.all(
                10,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ///// 내 프로필 이미지
                  ClipRRect(
                    borderRadius: BorderRadius.circular(
                      20,
                    ),
                    child: Image.asset(
                      'assets/nayoung.png',
                      width: 60,
                      height: 60,
                    ),
                  ),

                  const SizedBox(
                    width: 10,
                  ),

                  ///// 내 프로필 텍스트
                  SizedBox(
                    height: 60,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          '김나영',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          '하 오늘이 발표날이다...',
                          style: TextStyle(
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            ///// 구분선
            Padding(
              padding: const EdgeInsets.all(
                10,
              ),
              child: Container(
                height: 1,
                width: double.infinity,
                color: const Color(0xffeeeeee),
              ),
            ),

            ///// 내 멀티프로필
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 5,
              ),
              child: Text(
                '내 멀티프로필',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.black45,
                ),
              ),
            ),

            ///// 멀티프로필 이미지 + 텍스트
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 5,
              ),
              child: Row(
                children: [
                  ///// 이미지
                  Container(
                    padding: const EdgeInsets.all(
                      8,
                    ),
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        13,
                      ),
                      border: Border.all(
                        color: const Color(0xfff0f0f0),
                      ),
                      color: const Color(0xfff9f9f9),
                    ),
                    child: Image.asset(
                      'assets/plus.png',
                    ),
                  ),

                  const SizedBox(
                    width: 10,
                  ),

                  ///// 텍스트
                  const Text(
                    '친구별로 다른 프로필을 설정해보세요!',
                    style: TextStyle(
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),
            ),

            ///// 구분선
            Padding(
              padding: const EdgeInsets.all(
                10,
              ),
              child: Container(
                height: 1,
                width: double.infinity,
                color: const Color(0xffeeeeee),
              ),
            ),

            ///// 생일인 친구
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 5,
              ),
              child: Text(
                '생일인 친구',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.black45,
                ),
              ),
            ),

            ///// 생일인 친구 이미지 + 텍스트
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 5,
              ),
              child: Row(
                children: [
                  ///// 이미지
                  Container(
                    padding: const EdgeInsets.all(
                      8,
                    ),
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        13,
                      ),
                      border: Border.all(
                        color: const Color(0xfff37d6a),
                      ),
                      color: const Color(0xfff27d6a),
                    ),
                    child: Image.asset(
                      'assets/birthday.png',
                    ),
                  ),

                  const SizedBox(
                    width: 10,
                  ),

                  ///// 텍스트
                  const Text(
                    '친구의 생일을 확인해보세요!',
                    style: TextStyle(
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),
            ),

            ///// 구분선
            Padding(
              padding: const EdgeInsets.all(
                10,
              ),
              child: Container(
                height: 1,
                width: double.infinity,
                color: const Color(0xffeeeeee),
              ),
            ),

            /////  업데이트 한 친구
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 5,
              ),
              child: Text(
                '업데이트한 친구 12',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.black45,
                ),
              ),
            ),

            ///// 업데이트 한 친구 리스트
            Container(
              width: double.infinity,
              height: 85,
              padding: const EdgeInsets.symmetric(
                vertical: 10,
              ),
              child: ListView.separated(
                shrinkWrap: true,
                itemCount: updateFriendList.length,
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      ///// 이미지
                      ClipRRect(
                        borderRadius: BorderRadius.circular(
                          13,
                        ),
                        child: Image.asset(
                          updateFriendList[index].imagePath,
                          fit: BoxFit.cover,
                          height: 35,
                          width: 35,
                        ),
                      ),

                      const SizedBox(
                        height: 10,
                      ),

                      ///// 이름
                      Text(
                        updateFriendList[index].name,
                        style: const TextStyle(
                          fontSize: 11,
                        ),
                      ),
                    ],
                  );
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    width: 15,
                  );
                },
              ),
            ),

            ///// 구분선
            Padding(
              padding: const EdgeInsets.all(
                10,
              ),
              child: Container(
                height: 1,
                width: double.infinity,
                color: const Color(0xffeeeeee),
              ),
            ),

            ///// 친구
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 10,
              ),
              child: Text(
                '친구 441',
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.black45,
                ),
              ),
            ),

            ///// 친구 리스트
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 15,
              ),
              child: ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: friendList.length,
                itemBuilder: (context, index) {
                  return Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ///// 이미지
                      ClipRRect(
                        borderRadius: BorderRadius.circular(
                          13,
                        ),
                        child: Image.asset(
                          friendList[index].imagePath,
                          fit: BoxFit.cover,
                          height: 35,
                          width: 35,
                        ),
                      ),

                      const SizedBox(
                        width: 15,
                      ),

                      ///// 이름 + 상태명
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          ///// 이름
                          Text(
                            friendList[index].name,
                            style: const TextStyle(
                              fontSize: 14,
                            ),
                          ),

                          ///// 상태명
                          if (friendList[index].stateMessasge != "")
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 5,
                              ),
                              child: Text(
                                friendList[index].stateMessasge,
                                style: const TextStyle(
                                  fontSize: 11,
                                  color: Color(0xffbbbbbb),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ],
                  );
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    height: 15,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
