# SceneDelegate

- ### 사전 지식 

  > app Switcher란 홈버튼 더블클릭, 인디케이터바를 위로 스와이프 해서 나오는 화면을 말합니다.

SceneDelegate는 Xcode 11부터 iOS 앱 프로젝트 템플릿으로 자동 추가가 되었는데, iOS13 이상에서는 씬 델리게이트가 앱 델리게이트의 일부 역할을 담당하게 되었고 window 대신에 scene이라는 개념으로 대체가 되었다. 

scene에는 UI의 한 인스턴스를 표시하는데 필요한 windows와 view controller가 있다. 

## scene이 생김으로서 장점?

기존에는 앱 하나(iPad)에 윈도우 하나를 가지고 있었지만 이제 앱에서 여러 개의 scene이 있을 수 있게 되었으며 이를 통해 멀티 윈도우 앱을 빌드할 수 있게 되었다.

예전에는 한 앱을 동시에 키는 것이 불가능 하였다. (Split View 와 다른가?? -> 관련 [자료1](https://eunjin3786.tistory.com/162), [자료2](https://developer.apple.com/documentation/uikit/app_and_environment/scenes/supporting_multiple_windows_on_ipad))

## SceneDelegate의 역할

앱의 라이프 사이클을 관리하는 역할을 하게 되었다. 

<img src="https://blog.kakaocdn.net/dn/qu1wo/btqvQEmRbsK/Yr0pISMfw56YNuZ17EdqO0/img.png" alt="img" style="zoom:50%;" />

### Scene-Based Life-Cycle

+ Unattaced State
  + 유저나 시스템이 앱의 새로운 씬을 요청하면 UIKit은 그 씬을 만들고 그것을 unattaced state로 둔다.
    + 유저가 요청한 씬은 foreground로 이동한다.
    + 시스템이 요청한 씬은 background로 이동해서 그 이벤트를 처리한다. (위치 처리 과정 대한 작업은 백그라운드에서 씬을 시작해도 된다.)

+ Foreground
  + Inactive: 앱이 실행 중인 상태이나 이벤트를 받지는 않음. Active 상태로 넘어가기 전에 앱은 반드시 거치는 상태. 알림 같은 특정 알림창이 화면을 덮어서 앱이 event를 받지 못하는 상태 
  + Active: 앱이 실행 중이고 이벤트를 받을 수 있는 상태. Foreground 앱의 일반적인 상태
+ Background 
  + 앱 사용 중에 다른 앱을 실행하거나 홈 화면으로 나갔을 때 상태. 백그라운드에서 동작하는 코드를 추가하면 suspended 상태로 넘어가지 않고 백그라운드 상태를 유지. 처음부터 background 상태로 실행되는 앱은 inactive 대신 background 상태로 진입. 음악을 실행하고 홈 화면으로 나가도 음악이 나오는 상태 
+ Suspended
  + 앱이 background 상태에서 추가적인 작업을 하지 않으면 곧바로 suspended 상태로 진입. 앱을 다시 실행할 경우 빠른 실행을 위해 메모리에는 올라가 있음. 메모리가 부족한 상황이 되면 iOS는 suspended 상태에 있는 앱들을 메모리에서 해제



**scene (_ : willConnectTo : options :)**

가장 중요한 기능은 입니다. scene이 앱에 추가될 때 호출됩니다.

**sceneDidDisconnect(_:)** 

scene의 연결이 해제될 때 호출됩니다. 연결은 다시 연결될 수도 있습니다.

**sceneDidBecomeActive(_:)** 

app switcher에서 선택되는 등 scene과 상호작용이 시작될 때 호출됩니다.

**sceneWillResignActive(_:)** 

사용자가 scene과의 상호작용을 중지할 때 호출됩니다. (다른 화면으로의 전환이 예입니다.)

**sceneWillEnterForeground(_:)** 

scene이 포그라운드로 진입할 때 호출됩니다.

**sceneDidEnterBackground(_:)**

scene이 백그라운드로 진입할때 호출됩니다.



## 추가

### AppDelegate.swift 파일

+ UILifeCycle은 이제 SceneDelegate.swift 파일이 한다.
+ Session LifeCycle에 대한 역할이 추가 되었다. 
  + Scene Session이 생성되거나 삭제될 때 AppDelegate에 알리는 메서드 추가
  + Scene Session은 앱에서 생성한 모든 scene의 정보를 관리함
+ 앱의 중요한 데이터 초기화
+ 앱의 scene 환경 설정
+ 앱 밖에서 발생한 알림(배터리 부족, 다운로드 완료 등)에 대응
+ 특정한 scene, view, view controller에 한정하지 않고 앱 자체 타겟 이벤트에 대응
+ 푸쉬 알림 서비스 같은 실행 시 요구되는 서비스 등록 



**참고**
https://lena-chamna.netlify.app/post/appdelegate_and_scenedelegate/#AppDelegate%EC%99%80-SceneDelegate

https://www.youtube.com/watch?v=fvF2K8mi-Bc

