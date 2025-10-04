# iOS Background Mode

https://medium.com/cashwalk/ios-background-mode-9bf921f1c55b

<img src="https://miro.medium.com/max/5064/1*QW4wCQMLo8wUDLBBAd-mwA.jpeg" alt="img" style="zoom:25%;" />

### 1. Not Running

- App을 실행하지 않은 상태로, App이 실행되기 전 상태 또는 실행되었지만 System에 의해 종료된 상태

### 2. Foreground

- App이 실행되어 사용자에게 보여지고 있는 상태
- 오직 하나의 App만 Foreground 상태를 가지고 inActive와 Active의 두 가지 상태로 나뉘어짐
- InActive: Foregound 상태에서 전화가 오거나, 잠금상태, 멀티태스킹(Split?) 스크린에서는 InActive 상태
- Active: inActive가 아닌 상태 

### 3. Background

- Foregound 상태에서 HomeScreen으로 이동한 상태

- Background 상태로 전환되기 전에 호출된 Task가 끝나지 않은 경우 Background 상태에서도 여전히 실행됨
- Background 상태로 전환된 후 호출된 Task는 App이 Foreground 상태로 전환된 후에 실행됨

### 4. Suspend

- App이 Background 상태로 전환된 후 더 이상 작업을 수행하지 않으면 System에서 App을 Suspend 상태로 변경
- App은 여전히 메모리에 존재하며 Suspend 상태가 될 당시의 상태를 저장하고 있지만, CPU나 배터리를 소모하지 않음
- Suspend 상태의 App은 Foreground 상태의 App을 위해 메모리 부족 등의 이유로 System에 의해 언제든지 종료. 이후 App을 실행하면 이전 상태의 화면은 나오지 않고 App이 재시작됩니다.



##### Background 제약사항

- 사용자 이벤트를 받기 어려움
- 공유 시스템 리소스 해제, 이미지 객체 참조 해제 등 메모리 제한
- 특정 유형의 앱만 백그라운드에서 실행 가능함

- 가능한 작은 메모리 공간을 사용해야 함 (시스템 리소스 해제, 메모리에서 해제 후 데이터를 디스크에 작성)
- priority에 의해 백그라운드 태스크는 포그라운드 태스크보다 더 낮은 자원 할당
- 포 그라운드는 메모리 및 기타 시스템 리소스보다 우선 순위를 가지며 시스템은 이러한 리소스를 사용할 수 있도록 필요에 따라 백그라운드 앱을 종료





##### 참고

https://developer.apple.com/documentation/uikit/app_and_environment/scenes/preparing_your_ui_to_run_in_the_background/about_the_background_execution_sequence
