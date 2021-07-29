# SceneDelegate

- 사전 지식 

  > app Switcher란 홈버튼 더블클릭, 인디케이터바를 위로 스와이프 해서 나오는 화면을 말합니다.



SceneDelegate는 Xcode 11부터 iOS 앱 프로젝트 템플릿으로 자동 추가가 되었는데, iOS13 이상에서는 씬 델리게이트가 앱 델리게이트의 일부 역할을 담당하게 되었고 window 대신에 scene이라는 개념으로 대체가 되었다. 

scene에는 UI의 한 인스턴스를 표시하는데 필요한 windows와 view controller가 있다. 

#### scene이 생김으로서 장점?

기존에는 앱 하나에 윈도우 하나를 가지고 있었지만 이제 앱에서 둘 이상의 scene이 있을 수 있게 되었으며 이를 통해 멀티 윈도우 앱을 빌드할 수 있게 되었다.

예전에는 한 앱을 동시에 키는 것이 불가능 하였다. (Split View 와 다른가?? -> 관련 [자료1](https://eunjin3786.tistory.com/162), [자료2](https://developer.apple.com/documentation/uikit/app_and_environment/scenes/supporting_multiple_windows_on_ipad))

### SceneDelegate의 역할

앱의 라이프 사이클을 관리하는 역할을 하게 되었다. 

<img src="https://blog.kakaocdn.net/dn/qu1wo/btqvQEmRbsK/Yr0pISMfw56YNuZ17EdqO0/img.png" alt="img" style="zoom:50%;" />

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

참고
https://lena-chamna.netlify.app/post/appdelegate_and_scenedelegate/#AppDelegate%EC%99%80-SceneDelegate
