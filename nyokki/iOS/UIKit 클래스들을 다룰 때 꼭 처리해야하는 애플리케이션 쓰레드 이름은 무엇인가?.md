UIApplication -> UIWindow -> UIViewController -> UIView -> UISubView



UIKit과 관련된 클래스들은 Main Thread에서 다뤄져야한다. 

그 이유는 다음과 같다.

1. UIKit은 Thread-Safe하지 않기 때문이다. 
   UIKit은 nonatomic이며 ..거대한 프레임워크라 thread-safe하게 하는 것이 불가능하며..이를 가능하게 하려면 모두 atomic, NSLock 등의 처리를 해야하며 성능의 이슈를 발생..... 그렇구나 
   이를 한번에 처리하려면 UIKit이 MainThread에서 Synchronously하게 작동하면 해결된다.
2. ...... ??

위 부분 참고 https://medium.com/remember/%EC%99%9C-ui-%EC%B2%98%EB%A6%AC%EB%A5%BC-main-thread%EC%97%90%EC%84%9C-%ED%95%B4%EC%95%BC%ED%95%98%EB%82%98-5b2ba268f4eb



View가 비동기적으로 작동하게 되면 제각각의 순서로 뷰가 로드, 업데이트되면서 어떤 스레드에서는 뷰를 삭제했는데 다른 스레드에서 삭제한 뷰를 사용하는 등의 문제가 발생할 수 있다. 

