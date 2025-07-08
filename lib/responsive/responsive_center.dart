import 'package:flutter/material.dart';

class ResponsiveCenter extends StatelessWidget {
  final double maxContentWidth;
  final EdgeInsetsGeometry padding;
  final Widget child;

  const ResponsiveCenter({
    super.key,
    required this.maxContentWidth,
    required this.padding,
    required this.child,
  });

  /*
    Constraints (제약)
    1. Constraints go down (제약 조건이 아래로 전달)
      부모에서 자식으로 너비와 높이의 제약, 허용 범위가 전달
    2. Sizes go up (크기 정보가 위로 전달)
      부모로부터 허용 범위에 대한 제약 조건을 부여받은 자식 위젯은 그 범위 내에서 자신의 크기 결정한 후 부모 위젯에 전달
      즉, 자식은 허용 범위 내에서 '크기'를 결정해서 부모한테 전달하고, 부모는 이 정보를 기반으로 자신과 다른 자식 위젯의 크기와 위치 결정
      
      자식 위젯이 배치 방식을 결정 == 부모에게 전달 받은 동일한 제약이더라도 자식 위젯에 따라 배치 방식이 다를 수 있음
      즉, 어떤 위젯은 허용 범위 내에서 크기를 최대한으로 키우는 반면(ex. Container) 어떤 위젯은 최소한으로 줄임(ex. Text)

    3. Parent set position (부모가 위치를 결정)
      크기가 결정되면, 부모 위젯이 자식 위젯의 정확한 위치 결정


    느슨한 제약과 엄밀한 제약
    1. 느슨한 제약(Loose Constraints) 
      부모로부터 전달받은 제약이 max 값만 지정되어있음 
      0부터 max 값 사이에서 자유롭게 크기를 결정함 

    2. 엄밀한 제약(Tight Constraints)
      max값과 min값이 같음 
      정확하게 사이즈를 정해주는 것
   */

  @override
  Widget build(BuildContext context) {
    return Center(
      // 스크린으로부터 loose constraints 전달 받음
      child: SizedBox(
        // tight constraints 전달 받음
        width: maxContentWidth,
        child: Padding(padding: padding, child: child),
      ),
    );
  }
}
