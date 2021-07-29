# 🍎 UIApplication



### 앱이 시작될 때, 시스템은 UIApplicationMain메소드를 호출한다. 이 메소드는 싱글턴 UIApplication 객체를 생성한다.

### 사용자의 터치 등이 시스템에 의해 이벤트로 생성되는데, 이 이벤트를 UIApplication이 받아서 UIControl에 전달. UIControl 객체에 의해 이벤트 메시지가 적절한 대상에게 전달된다.

### UIApplication은 UIApplicationDelegate 프로토콜을 채택해 중요한 런타임 이벤트(앱 시작, 종료, 메모리 부족 등)을 델리게이트가 처리하게 한다.



### 델리게이트 - uiapplication의 인스턴스 프로퍼티. app object의 대리자.

### 모든 앱은 앱과 관련된 메시지에 응답하기 위해 app delegate 객체를 갖는다.