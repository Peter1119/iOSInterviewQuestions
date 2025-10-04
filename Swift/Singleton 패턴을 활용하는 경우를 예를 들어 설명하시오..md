### 싱글턴패턴

특정 용도로 객체를 하나만 생성하여 공용으로 사용하고 싶을 때 사용하는 디자인 패턴

#### 사용하는 이유 

+ 데이터 공유 (여러 객체에서 공용으로 객체를 사용할 때 )

+ 메모리 절약

#### Example

```swift
class UserInfo {
    static let shared = LoginInfo()

    var id: String?
    var password: String?
    var name: String?

    private init() { }
}
```

앱 내에서 반복적으로 사용되는 유저 데이터를 저장

매번 인스턴스를 만들거나 매개변수를 통해서 참조할 필요 없이 UserInfo.shared와 같이 접근

새로운 인스턴스가 생성되는 것을 막기 위해 private init()사용



사용자 기본 설정과 같은 단일 데이터 저장소를 사용하거나 

앱이 실행하는 동안 앱을 제어하는 객체로 사용될 때, 

알림을 통해(Notification) 다른 객체 간에 정보 전달을 할 때 사용된다. 