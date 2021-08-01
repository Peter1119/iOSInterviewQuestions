# 🍎 App의 Not running, Inactive, Active, Background, Suspended에 대해 설명하시오



- ### Not running

  앱을 키지 않았거나 종료한 상태

- ### Inactive

  앱의 상태변화시에 거치게 됨. 이벤트는 받지 않음

- ### Background

  Suspended전의 상태. 앱이 보이지 않지만 뒤에서 돌아가고 있는 상태

- ### Suspended

  아무 코드도 실행하지 않고 시스템에서 임의로 리소스 해제 가능

- ### Active

  이벤트를 받고, 앱이 실행 중



applicationWillResignActive



applicationDidEnterBackground



applicationWillEnterForeground



applicationDidBecomeActive



applicationWillTerminate



willFinishLaunching



didFinishLaunching

- ### Active -> Background

### 홈키를 누르고 홈화면 이동

### 잠금 누름

### 앱에서 다른 앱 이동



- ### Active -> InActive (background 아님)

  ### App Switcher

  ### 전화 올 때

  ### 문자 확대

  ### 상단 스크롤 해서 알림센터 보는 경우

  ### 제어센터 보는 경우



