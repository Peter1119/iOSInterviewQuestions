# 🍎 SceneDelegate에 대해 설명하시오



#### iOS 버전 13이후부터는 UI Lifecycle 역할을 맡게 되었다.

#### Mutiple Window를 지원함에 따라서 프로세스는 하나지만 여러 개의 window에 대한 처리를 할 수 있다. 각 scene은 각자의 life 사이클을 갖고, 동시에 active일 수 있다.

#### Appdelegate에는 Scene Session이 생성되거나 삭제될 때 AppDelegate에 알리는 메소드가 추가 되었다.

#### scene의 상태에 따라 notification을 받는다.

#### 메소드는 scene에 영향을 미치는 상태 변화에 응답한다.



### 메소드

- scene(_:willConnectTo:options:)

  scene이 app에 추가됨

- sceneDidDisconnect(_:)

  UIKit이 scene을 app에서 제거함

- sceneDidBecomeActive(_:)

  scene이 active되어 사용자 이벤트를 받을 수 있음

- sceneWillResignActive(_:)

  scene이 곧 active 상태에서 벗어나 사용자 이벤트를 받을 수 없음

- sceneWillEnterForeground(_:)

  scene이 곧 foreground에 올라가 사용자에게 보여짐

- sceneDidEnterBackground(_:)

  scene이 background로 들어감