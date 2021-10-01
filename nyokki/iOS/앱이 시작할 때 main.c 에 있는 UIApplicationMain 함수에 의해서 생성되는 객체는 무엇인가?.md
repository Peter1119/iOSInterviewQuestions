앱이 시작될 때, 앱을 담당하는 메인 런루프가 생성된다. 이벤트 처리(화면의 터치, 화면 돌리기 등)를 담당하며 어떤 함수를 실행시킬 것인지 선택하고 실행하는 역할이다.

함수 등의 실행 결과를 화면에 보여줘야 하며 화면을 다시 그리는 일이 필요할 때 화면을 다시 그리게 된다. 

메인 쓰레드는 1초에 60번 화면을 다시 그려야하는 역할도 가지고 있다. (지시하는 위치) 그렇기 때문에 

작업을 하는 시간이 오래 걸리게 되면(네트워크 작업) 1초에 60번 화면을 다시 그려야하는 역할도 하기 때문에 

버벅이는 현상이 일어나게 된다. 다시 말에 시간이 오래 걸리는 작업을 하고 다음 작업으로 넘어갈 때, 그 찰나에 화면을 다시 

그리기 때문에 버벅이는 것이다. 



<img src="https://docs-assets.developer.apple.com/published/52c7b459e7/76e68c08-6b09-4bac-8a00-44df7a097a43.png" alt="When an app launches, it loads its main UI file, asks the app delegate to initialize the app's data structures, and restores any previous interface state. " style="zoom:50%;" />

1. The app is launched, either explicitly by the user or implicitly by the system.
2. The Xcode-provided `main` function calls UIKit's [`UIApplicationMain(_:_:_:_:)`](https://developer.apple.com/documentation/uikit/1622933-uiapplicationmain) function.
3. The [`UIApplicationMain(_:_:_:_:)`](https://developer.apple.com/documentation/uikit/1622933-uiapplicationmain) function creates the [`UIApplication`](https://developer.apple.com/documentation/uikit/uiapplication) object and your app delegate.
4. UIKit loads your app's default interface from the main storyboard or nib file.
5. UIKit calls your app delegate's [`application(_:willFinishLaunchingWithOptions:)`](https://developer.apple.com/documentation/uikit/uiapplicationdelegate/1623032-application) method.
6. UIKit performs state restoration, which calls additional methods of your app delegate and view controllers.
7. UIKit calls your app delegate's [`application(_:didFinishLaunchingWithOptions:)`](https://developer.apple.com/documentation/uikit/uiapplicationdelegate/1622921-application) method .

<img src="https://t1.daumcdn.net/cfile/tistory/992B8C4E5B0A56AF09" alt="img"  />



# UIApplicationMain(_: _: _: _:)

Creates the application object and the application delegate and sets up the event cycle.

## Declaration

```swift
func UIApplicationMain(_ argc: Int32, 
                     _ argv: UnsafeMutablePointer<UnsafeMutablePointer<CChar>?>, 
                     _ principalClassName: String?, 
                     _ delegateClassName: String?) -> Int32
```

\-  **argc** : argv의 개수. 대게 main에 해당하는 파라미터입니다.

\- **argv** : argument의 변수 목록. 대게 main에 해당하는 파라미터입니다.

(C언어에서 main 함수는 프로그램의 진입점이다. int argc는 정보의 갯수를 의미하고 char argv[ ]는 메인함수에 전달되는 실질적인 정보로 문자열의 배열을 의미한다.)

\- **principalClassName** : 

[UIApplication]: https://developer.apple.com/documentation/uikit/uiapplication

클래스 또는 하위 클래스의 이름입니다. nil을 지정하면, UIApplication으로 가정됩니다.

\- **delegateClassName** : application delegate가 인스턴스화 되는 클래스 이름입니다. principalClassName이 UIApplication의 하위클래스를 지정하는 경우, 하위 클래스를 delegate로 지정 할 수 있습니다. 하위클래스 인스턴스는 앱의 delegate 메세지를 받습니다. 앱의 기본 nib파일에서 delegate 객체를 로드하는 경우, nil을 지정합니다.

# UIApplication

> The centralized point of control and coordination for apps running in iOS.
>
> (iOS에서 앱을 구동하는데 control하고 조정하는 중앙 지점?)

UIApplicationMain에 의해 생성되는 객체는 UIApplication 객체입니다. iOS앱은 UIApplication이라는 클래스의 객체입니다. 프로젝트의 main 함수는 기본적으로 UIApplication 클래스의 인스턴스를 만들어서 GUI를 사용하기 위한 runloop를 돌려주는 작업을 수행한다. 그 이후 앱 내에서 일어나는 모든 처리는 UIApplication 객체가 관리하게 된다. 



출처

 https://developer.apple.com/documentation/uikit/1622933-uiapplicationmain

https://developer.apple.com/documentation/uikit/app_and_environment/responding_to_the_launch_of_your_app/about_the_app_launch_sequence
