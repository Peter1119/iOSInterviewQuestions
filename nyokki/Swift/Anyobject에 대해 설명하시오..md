#### Any

Any는 함수타입을 포함하여 모든 타입(기본 타입(String, Int, Double ...), 구조체, 열거형, 커스텀 클래스, g함수 타입, 옵셔널 타입)의 인스턴스를 나타낼 수 있습니다. 

```swift
var anyArr : [Any] = [1,"hi",true, 1.0]
```

위와 같이 any로 타입을 지정하게 되면 여러 자료형을 한번에 넣을 수 있다. 

정확하게는, 구조체로 구현된 값타입은 모두 들어올 수 있다. (구조체로 구현된 값타입만 들어올 수 있는 것이 아니라 class로 구현된 것도 들어 갈 수 있다. )



단점은 저장된 타입의 메모리 구조를 알 수 없기 때문에 타입 메서드를 사용하거나 타입 속성을 사용하기 위해서는 항상 타입캐스팅(다운캐스팅)을 해서 사용해야 한다. 

#### AnyObject

AnyObject는 클래스의 인스턴스만 담을 수 있는 타입이다. AnyObject는 모든 클래스가 암시적으로 준수하는 프로토콜이라고 정의되어 있다. 따라서 AnyObject는 모든 클래스 타입의 인스턴스를 나타낼 수 있습니다. 하지만 구조체나 열거형의 인스턴스 타입은 담을 수 없다. 

AnyObject 또한 인스턴스 메서드나 프로퍼티를 사용하기 위해서는 항상 타입 캐스팅(다운캐스팅)을 해주어야 한다.  



+ 사용 예시

  ```swift
  for (index, item) in array.enumerated() {
      // (0,  5)
      // (1, "안녕")
      // (2, 3.5)
      // ...
      
      switch item {
      case is Int:                             // item is Int
          print("Index - \(index): 정수입니다.")
      case let num as Double:                  // let num = item as Double
          print("Index - \(index): 소수 \(num)입니다.")
      case is String:                          // item is String
          print("Index - \(index): 문자열입니다.")
      case let person as Person:               // let person = item as Person
          print("Index - \(index): 사람입니다.")
          print("이름은 \(person.name)입니다.")
          print("나이는 \(person.age)입니다.")
      case is (String) -> String:              // item is (String) -> String
          print("Index - \(index): 클로저 타입입니다.")
      default:
          print("Index - \(index): 그 이외의 타입입니다.")
      }
  }
  ```

  

Any 또는 AnyObject는 언제 선택해서 사용하는가?

references를 작업하는 동안에는 AnyObjects를 사용하고 (*클래스의 인스턴스만 사용할 수 있기 때문에*)

값 타입을 작업할 때는 Any를 사용하는 것이 좋지만 사용을 피하는 것이 좋다. 



참고

https://medium.com/flawless-app-stories/any-anyobject-in-ios-803515bd95a6

https://zeddios.tistory.com/213

https://developer.apple.com/documentation/swift/anyobject

