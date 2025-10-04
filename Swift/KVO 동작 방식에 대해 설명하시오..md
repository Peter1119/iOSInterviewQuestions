### KVO(Key-Value Observing)

##### 특정 키의 값의 변화를 감지하기 위한 기능

모델 객체의 어떤 값이 변경되었을 경우 이를 UI에 반영하기 위해서 컨트롤러는 모델 객체에 observing을 도입하여 델리게이트에 특정 메시지를 보내 처리할 수 있도록 하는 것



즉, 변수에 코드를 붙여 변수가 변경될 때마다 코드가 실행되도락 하는 방법을 의미한다. Didset, willset과 유사한데 KVO는 타입 정의 바깥에서 observe를 추가한다는 점이 다르다. KVO는 스위프트 코드로는 그리 좋지않다. 그 이유는 Object-c런타임에 의존하고 있기 때문이다. 그래서 NSObject를 상속받기 위해 @objc를 반드시 붙여줘야 한다. 



Example

```swift
class SomeClass: NSObject {
  @objc dynamic var value: String = ""
}

let someObject = SomeClass()

someObject.observe(\.value) { (object, change) in
  print("SomeClass object value changed to \(object.value)")
}

someObject.value = "test"  // TEST
```



참고

https://www.zehye.kr/ios/2020/03/19/11iOS_KVO/

https://velog.io/@delmasong/KVOKey-Value-Observing