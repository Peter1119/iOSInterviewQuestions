구조체와 열거형은 값타입이다. 기본적으로 값타입의 프로퍼티들은 해당 인스턴스 메소드 내에서 수정할 수 없다. 

그러나 특정 메소드 내에서 구조체 또는 열거형 프로퍼티를 수정해야 하는 경우, mutating 키워드를 가지고 해당 메소드의 동작을 변경하도록 선택할 수 있다. 

그런 다음 메소드는 메소드 내에서 프로퍼티를 변경할 수 있으며 메소드가 끝나면 변경된 내용이 원래 구조체에 다시 기록된다. 

```swift
struct Point {
    var x = 0.0, y = 0.0
    mutating func moveBy(x deltaX: Double, y deltaY: Double) {
        x += deltaX
        y += deltaY
    }
}
var somePoint = Point(x: 1.0, y: 1.0)
somePoint.moveBy(x: 2.0, y: 3.0)
```







참고

https://velog.io/@wonhee010/mutating

https://zeddios.tistory.com/258

https://docs.swift.org/swift-book/LanguageGuide/Functions.html#ID173