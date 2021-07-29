# 🍎 앱이 foreground에 있을 때와 background에 있을 때 어떤 제약사항이 있나요?



### foreground (active, inactive)

- 사용자가 앱을 보고 있는 상황. 시스템 자원의 우선 순위가 높은 상황



### background

- 앱이 사용자한테 보이지 않는 상태를 의미
- 사용자에게 보이지는 않지만 계속 실행될 수 있음 ex) 음악 어플, 네비게이션 어플

#### 제약사항

- 적은 메모리 공간을 사용해야 함
- 더 낮은 자원 할당 우선 순위
- 필요에 따라 백그라운드 앱 종료 시킴
- 사용자 이벤트 받기 어려움

#### 추가 시간 부여

Location Service, 외부 악세서리와 통신 (apple watch, homepods), 블루투스를 이용한 악세서리 사용, 앱 업데이트 진행, 푸시 알림



### 앱의 상태

1. Not running

   앱이 실행되지 않았거나, 시스템에 의해 종료

2. Inactive

   Foreground 상태지만, 이벤트 받지 못함

3. Active

   foreground 상태이며 이벤트를 받음

4. Background

   앱이 background에 있으며 코드를 실행하고 있음

5. Suspended

   background이며, 메모리에는 남아있으나 코드를 실행하고 있지 않음

각 상태의 메소드 안에서 구현하고 싶은 기능을 AppDelegate.swift에서 구현할 수 있음