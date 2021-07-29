Type Method

# main()

> 앱의 최상위 레벨의 entry point를 제공한다.

## Declaration

```swift
@MainActor static func main()
```

[`UIApplicationDelegate`](https://developer.apple.com/documentation/uikit/uiapplicationdelegate) 은 UIKit app의 메인 entry point로서 역할을 할 수 있도록 main 메소드를 실행합니다. 이 시스템은 앱을 시작하기 위해 이 매소드를 호출하고 절대로 사용자나 개발자가 직접 호출하지 않습니다. @main 속성이 표시된 앱의 정확히 하나의 entry point를 가질 것입니다. 



1. main 함수는 Xcode에서 제공된 함수이며 UIKit의 [`UIApplicationMain(_:_:_:_:)`](https://developer.apple.com/documentation/uikit/1622933-uiapplicationmain)을 호출한다. 

2. [`UIApplicationMain(_:_:_:_:)`](https://developer.apple.com/documentation/uikit/1622933-uiapplicationmain)는 UIApplication 객체를 만들고 앱 델리게이트를 만든다. 
3. UIKit은 메인 스토리보드나 nib 파일로부터 앱의 디폴드 인터페이스를 만든다.
4. UIKit은 앱 델리게이트의 [`UIApplicationMain(_:_:_:_:)`](https://developer.apple.com/documentation/uikit/1622933-uiapplicationmain)를 호출한다. 
5. UIKit은 앱의 델리게이트와 뷰 컨트롤러가 추가적인 메소드를 부를수 있는 restoration 상태를 수행한다. 
6. UIKit은 앱 델리게이트의  [`application(_:didFinishLaunchingWithOptions:)`](https://developer.apple.com/documentation/uikit/uiapplicationdelegate/1622921-application)메소드를 호출한다. 

초기화가 끝나면 시스템은 씬 델리게이트와 앱 델리게이트를 이용하여 앱의 생명주기를 관리하고 UI를 표시한다.



Xcode 12부터 적용됨 

진입 포인트 마킹 



참고

https://developer.apple.com/documentation/uikit/uiapplicationdelegate/3656306-main

