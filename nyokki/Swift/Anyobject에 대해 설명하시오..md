#### Any

Any는 함수타입을 포함하여 모든 타입의 인스턴스를 나타낼 수 있습니다. 

```swift
var anyArr : [Any] = [1,"hi",true,1.0]
```

위와 같이 any로 타입을 지정하게 되면 여러 자료형을 한번에 넣을 수 있다. 

정확하게는, 구조체로 구현된 값타입은 모두 들어올 수 있다. (구조체로 구현된 값타입만 들어올 수 있는 것이 아니라 class로 구현된 것도 들어 갈 수 있다. )

#### AnyObject

AnyObject는 프로토콜이다. AnyObject는 모든 클래스가 암시적으로 준수하는 프로토콜이라고 정의되어 있다. 따라서 AnyObject는 모든 클래스 타입의 인스턴스를 나타낼 수 있습니다. 

매번 타입 체크 및 형변환을 해야하기 때문이다. 



Any 또는 AnyObject는 언제 선택해서 사용하는가?

references를 작업하는 동안에는 AnyObjects를 사용하고 값 타입을 작업할 때는 Any를 사용하는 것이 좋다. 

하지만 둘다 사용하는 것을 피하는 것이 좋다. 



참고

https://medium.com/flawless-app-stories/any-anyobject-in-ios-803515bd95a6

https://zeddios.tistory.com/213

https://developer.apple.com/documentation/swift/anyobject

