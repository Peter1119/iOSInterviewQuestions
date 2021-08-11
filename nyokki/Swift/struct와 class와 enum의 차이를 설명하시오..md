## **Reference types & Value types**

클래스는 레퍼런스 타입(참조타입)이고 구조체와 열거형은 value type(값타입)이다. 

참조타입은 한 클래스 타입 객체를 다른 객체에 할당했을 때, 두 객체는 같은 인스턴스를 가리킨다. 그리고 하나를 수정하면 다른 하나도 수정이 되는 형태이다. 



반면에 구조체와 열거형은 할당할 때마다 새로운 복사본을 만들어낸다.



## Mutability

구조체와 열거형이 벨류타입이기 때문에 만일 구조체를 상수로 만들게 되면 모든 인스턴스는 수정이 불가능하다. 그 안에 있는 프로퍼티가 수정되는 것이 불가능하다. 

```swift
struct Cat {
    var name:String
}
let cat1 = Cat(name: "Kitty")
cat1.name = "Oscar"
// error: cannot assign to property

```

반면에 클래스는 상수로 할당되었을 때, 그 참조는 수정 불가능하지만 프로퍼티는 문제없이 수정이 가능하다. 

```swift
class Cat {
    var name:String?
}
let cat1 = Cat()
cat1.name = "Oscar"
// Working fine
```

게다가 구조체는 변수였을 때, 그 자신을 수정하는 것이 불가능하다. 대신에 이를 가능하게 하려면 mutation 키워드를 써야한다. 

```swift
struct Cat {
   private var vaccinated:Bool
   init() {
      self.init()
   }
   // Will not work without mutating keyword
   mutating func vaccinate() {
      self.vaccinated = true
   }
}
var cat1 = Cat()
cat1.vaccinate()

```

## Deinitializer

벨류타입과 참조타입 둘다 초기화 메소드를 가지고 있지만, deinit 메소드는 벨류타입에 존재하지 않는다. 레퍼런스 카운팅에 영향이 없기 때문에???

```swift
struct Cat {
   var name:String
   deinit {
   }
}
// Compiler Error : Deinitializers may only be declared within a class
```

## Generated init

초기화 메소드는 오직 구조체에서만 선택권으로 가능하다. (클래스는 필수)

```swift
struct Cat {
var name:String
var age:Int
}
let cat1 = Cat(name: "Lucy", age: 3)
```

## Inheritance

오직 클래스만 상속 할 수 있다. 

## Stored properties

구조체와 클래스와 달리, 열거형은 저장 프로퍼티를 가질 수 없다. 

??? 그럼 rawValue 는 ? 

```swift
enum Pet {
    
    var name:String 
//  error: enums must not contain stored properties
}
```







## 정리

#### 클래스

+ 프로퍼티와 메소드를 가질 수 있는 컨테이너 타입을 정의하기 위한 용도
+ 일반적으로 단일 상속 가능
+ 참조타입
+ iOS 프레임워크는 대부분의 큰 뼈대는 클래스로 구성
+ Extension 가능

#### 구조체

+ 프로퍼티와 메소드 정의 가능 
+ 상속 불가능 
+ Extension 가능
+ 값 타입
+ Swift의 큰 뼈대는 구조체

#### 열거형

+ 상속 불가
+ 값 타입
+ 유사한 종류의 여러 값을 한 곳에 모아 정의 한 것 
+ 열거형 자체가 하나의 데이터 타입
+ Extension 가능
+ Stored property 불가능

+ Computed Property example 

  ````swift
  enum ApiError {
        case NoInternetConnection
        case AuthenticationFail
        case ResponseTimeOut
        var errorMsg: String {
              switch self {
              case .NoInternetConnection:
                   return “Internet connection has problem!”
              
              case .AuthenticationFail:
                   return “Error has Authentication fail!”
              
              case .ResponseTimeOut:
                   return “Too longggggg :P”
              }
         }
  }
  ````

  

