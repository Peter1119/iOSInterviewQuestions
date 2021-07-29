iOS 애플리케이션은 5가지 상태에 있습니다. 



1. Not Running
   앱이 실행되지 않았거나 완전히 종료되었을 때 상태
2. In-Active
   앱이 실행되면서 foreground에 진입하지만 어떠한 이벤트도 받지 않는 상태
   백그라운드에서 포그라운드로 진입할때의 상태
   포그라운드에서 백그라운드로 진입할때의 상태
3. Active
   앱이 실행 중이며 foreground에 있고 이벤트를 받고 있는 상태
4. Background
   앱이 백그라운드에 있으며 다른 앱으로 전환되었거나 홈버튼을 눌러 밖으로 나갔을 때의 상태
5. Suspended
   백그라운드에서 특별한 작업이 없을 경우 전환되는 상태 



이때 앱의 생명주기에 따라서 app delegate와 scene delegate에서 특정 메소드를 실행하게 합니다. 

1. Not Running
   1) **[application(_:willFinishLaunchingWithOptions:)](https://developer.apple.com/documentation/uikit/uiapplicationdelegate/1623032-application)**
      앱 실행을 준비하는 메소드
      필요한 주요 객체들을 생성하고 앱 실행 준비가 끝나기 직전에 호출
      [앱 실행 옵션](https://developer.apple.com/documentation/uikit/uiapplication/launchoptionskey)에 따라서 설정을 달리 할 수 있다.
      (필요한 주요 객체들은 무엇일까?)
   2) **[applicationDidFinishLaunching(_:)](https://developer.apple.com/documentation/uikit/uiapplicationdelegate/1623053-applicationdidfinishlaunching)**
      앱 실행을 위한 모든 준비가 끝난 후 화면이 사용자에게 보여지기 직전에 호출된다.
      주로 초기화 코드를 이곳에 작정
   3) **[applicationWillTerminate(_:)](https://developer.apple.com/documentation/uikit/uiapplicationdelegate/1623111-applicationwillterminate)**
      앱이 종료되기 직전에 호출된다.
      (하지만 메모리 확보를 위해 suspended 상태에서 앱의 종료나 백그라운드에서 사용자에 의한 종료시 혹은 오류로 인해 앱이 종료될 때에는 호출되지 않는다.)
2. In-Active
   1. **[sceneWillEnterForeground(_:)](https://developer.apple.com/documentation/uikit/uiscenedelegate/3197918-scenewillenterforeground)**
      앱이 백그라운드나 not running에서 foreground로 들어가기 직전에 호출된다.
      비활성화 상태를 거쳐 acitve 상태가 된다.
   2. **[sceneWillResignActive(_:)](https://developer.apple.com/documentation/uikit/uiscenedelegate/3197919-scenewillresignactive)**
      이 메소드는 일시적인 중단이 생기면 UIKit이 호출한다. 예를 들어, 사용자가 게임을 하다가 일시정지를 하게되면 이 메소드가 호출된다.
3. Active
   1. **[sceneDidBecomeActive](https://developer.apple.com/documentation/uikit/uiscenedelegate/3197915-scenedidbecomeactive)[(_:)](https://developer.apple.com/documentation/uikit/uiscenedelegate/3197915-scenedidbecomeactive)**
      앱이 비활성상태에서 활성상태로 진입한 직후에 호출된다. 
      앱이 실제로 사용되기 전에 마지막으로 준비할 수 있는 코드를 작성할 수 있다.
4. Background
   1. **[sceneDidBecomeActive](https://developer.apple.com/documentation/uikit/uiscenedelegate/3197915-scenedidbecomeactive)[(_:)](https://developer.apple.com/documentation/uikit/uiscenedelegate/3197915-scenedidbecomeactive)**
      앱이 백그라운드 상태로 들어갔을 때 호출된다. 
      Suspended 상태가 되기 전 중요한 데이터를 저장하는 등 종료하기 전에 필요한 작업을 한다. 
5. Suspended
   따로 호출되는 메소드는 없으며 백그라운드 상태에서 특별한 작업이 없을 때 이 상태가 된다. 

