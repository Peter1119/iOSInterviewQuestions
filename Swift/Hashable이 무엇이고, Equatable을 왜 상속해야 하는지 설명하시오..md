### 사전지식

Hash란?

해시 함수는 임의이 길이의 데이터를 고정된 길이의 데이터로 매핑하는 함수이다. 해시 함수에 의해 얻어지는 값은 해시 값, 해시 코드, 해시 체크섬 또는 간단하게 해시라고 한다. 그 용도 중 하나는 해시 테이블이라는 자료구조에 사용되며, **매우 빠른 데이터 검색을 위한 컴퓨터 소프트웨어에 널리 사용된다.** 해시 함수는 큰 파일에서 중복되는 레코드를 찾을 수 있기 때문에 데이터베이스 검색이나 테이블 검색의 속도를 가속할 수 있다. 



### Hashable Protocol

정의: 정수 해시 값을 생성하는 Hasher에 의해 해시 값을 hash할 수 있는 타입

즉 이 프로토콜을 채택한 타입은 유일한 값(해시값)으로 구분될 수 있다는 것이다. 

```swift
protocol Hashable: Equatable {
  var hashValue: Int { get }
  func hash(into hasher: inout Hasher)
}
```



**Hashable**은 **Equatable protocol**을 상속받고 있다. 

```swift
protocol Equatable {
  static func == (lhs: Self, rhs: Self) -> Bool
}
```



해시 값은 고유값이어야 하기 때문에 고유값인지 식별해줄 수있는 **==** 함수가 필요하다. 일반적으로 Int, String, Double 등 Apple에서 제공하는 다양한 기본 연산자들은 Hashable 타입을 이미 상속받고 있기 때문에 자연스럽게 ==연산자를 사용할 수 있었던 것이다. 



- set 또는 dictionary의 key로 hashable을 준수하는 모든 타입을 사용할 수 있다.

  - swift에서 dictionary는 Dictionary<Key Type, Value Type> 형태로 쓰인다.

  - 이때 유일한 제약사항은 Key Type이 반드시 해시가능한 타입이어야 한다(Hashable)

    딕셔너리의 키는 중복이 되지 않는다. Set 역시 중복된 값을 담을 수 없다.

  - 즉, **그 자체로 유일하게 표현이 가능한 방법을 제공해야한다는 뜻** 이다.

  - swift의 기본타입(String, Int, Double…)은 기본적으로 해시가능한 것들로 dictionary의 key type으로 사용가능하다.

  - 또한 swift의 enum(열거형) 또한 해시 가능하다.



사용할 때 ? 

개발하다 보면 커스텀으로 자료형을 구현하게 된다. 이때 struct이나 enum을 선언할 때 이 자료형들을 딕셔너리의 키나 set의 원소로 사용하기 위해서는 struct의 모든 프로퍼티와 enum의 연관값들은 모두 hashable해야한다. 



### Equatable

Equatable은 값의 비교가 가능함을 보장해주는 프로토콜이다. 이 프로토콜을 채택한 타입들은 ==연산자나 !=연산자를 사용해 값을 비교할 수 있다. Array에서 contain(_:)메소드를 사용할 수 있는 것도 Array가 Equatable 프로토콜을 채택하고 있기 때문이다. 



#### Hashable이 Equatable를 상속해야하는 이유?

Hashable은 해시값을 가질 수 있다는 것으로 해시값만 존재하는 것이다. 

이때 두 값, 인스턴스를 비교하기 위해서는 Equatable 상속이 필요하다. 





















참고

https://zeddios.tistory.com/498

https://www.zehye.kr/swift/2020/07/22/swift_hashable/

