출처

 https://developer.apple.com/documentation/uikit/1622933-uiapplicationmain

https://developer.apple.com/documentation/uikit/app_and_environment/responding_to_the_launch_of_your_app/about_the_app_launch_sequence

<img src="https://docs-assets.developer.apple.com/published/52c7b459e7/76e68c08-6b09-4bac-8a00-44df7a097a43.png" alt="When an app launches, it loads its main UI file, asks the app delegate to initialize the app's data structures, and restores any previous interface state. " style="zoom:50%;" />

1. The app is launched, either explicitly by the user or implicitly by the system.
2. The Xcode-provided `main` function calls UIKit's [`UIApplicationMain(_:_:_:_:)`](https://developer.apple.com/documentation/uikit/1622933-uiapplicationmain) function.
3. The [`UIApplicationMain(_:_:_:_:)`](https://developer.apple.com/documentation/uikit/1622933-uiapplicationmain) function creates the [`UIApplication`](https://developer.apple.com/documentation/uikit/uiapplication) object and your app delegate.
4. UIKit loads your app's default interface from the main storyboard or nib file.
5. UIKit calls your app delegate's [`application(_:willFinishLaunchingWithOptions:)`](https://developer.apple.com/documentation/uikit/uiapplicationdelegate/1623032-application) method.
6. UIKit performs state restoration, which calls additional methods of your app delegate and view controllers.
7. UIKit calls your app delegate's [`application(_:didFinishLaunchingWithOptions:)`](https://developer.apple.com/documentation/uikit/uiapplicationdelegate/1622921-application) method .