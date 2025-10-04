# Optional이란?

옵셔널은 타입 뒤에 ?를 붙이면 해당 변수는 Optional 변수가 되는데 

Optional은 enum이다. 값이 존재한다면 case .some() 으로,

값이 없다면 case .none 으로 되는데 

nil은 실제 값이 없는 것이 아니고 "값이 없음을 의미한다."라고 한 단계 쌓여있는 상태이다. 

다시 말해 nil은 **값이 없음을 표현하는 키워드**이다.



## 사용하는 이유는?

메모리 공간이 형성이 됐는데 만약 값이 없다면 에러가 발생한다. 이를 방지하기 위해서 옵셔널 타입을 사용하는 것인데 에러가 나지 않도록 임시적인 타입을 담아두는 개념이다. 따라서 String과 String?는 다른 타입이다. 

옵셔널 값을 사용하기 위해서는 한번 Unwrapping 과정을 거쳐야 한다. 



### Wrapping

옵셔널 변수들은 현재의 값이 존재하는 것인지 nil인 것인지 wrap 되어 있어서 모른다. 그렇기 때문에 wrap된 상태에서는 value값이 있는지 없는지 관계없이 value가 바로 출력되지 않고 Optional("hello")와 같이 출력된다. 



### Unwrapping

1. Forced Unwrapping

   바로 value의 값을 출력하기 위해서는 변수 뒤에 !를 붙이면 value값이 바로 나온다. 다만 값이 있다고 확신하는 경우에만 사용하는 것이 좋다. 그렇지 않으면 런타입 에러가 발생한다. 

2. ```if something != nil { print(something!) } ``` 사용

   If 문을 사용해서 nil이 아님을 확인 후에 강제 추출 

3. Optional Binding

   옵셔널 바인딩을 사용하면 느낌표 없이 Optional 타입의 변수 값을 출력할 수 있어서 더 안전한 형태로 값을 얻을 수 있다. 

   + if let, guard let

```swift
if let 변수명 = Optional 변수 {
 // 임시 변수에 Optional 변수의 value값이 할당된다면 스코프의 코드를 실행한다.
}
```

4. Nil-Coalescing(닐 코얼레싱)

   옵셔널 표현식 뒤에 기본값을 제시하여 옵셔널의 가능성을 없애는 방식이다.

   ```something ?? "내 이름"```



#### as, as? as!

+ 타입 캐스팅 - 해당 타입인지 확인하는 것이 타입캐스팅

  업 캐스팅 : as

  다운캐스팅 : as?, as!

  ​	as? - 뒤 타입이 맞는지 확인하고 맞으면 바인딩 틀리면 nil
  ​	as! - 강제로 타입변환 시도, 변환이 안맞으면 크래쉬 발생

#### try!, try?

+ try? 
  에러가 발생할 수 있다. 핸들링 해라 
  트라이 해봐서 괜찮으면 바인딩하고 안되면 nil
+ try!
  강제로 트라이해라

try의 원래 목적은 에러가 발생할 때 핸들링해주는 것을 기회로 주겠다는 의미이고 정식으로 사용하기 위해서는 try는 무조건 do-catch 문법에 사용되며 오류 체크를 하기위함이다. 



## Optional Chaining

옵셔널 타입으로 선언된 값에 접근하여, 프로퍼티, 메서드를 사용할 때, 접근연산자(.) 앞에 물음표(?)를 붙여야 한다. 

해당 값이 옵셔널의 가능성을 내포한다는 의미이고 

결과는 항상 옵셔널 타입으로 리턴이 된다. 

옵셔널 체이닝 과정 중에 하나라도 nil을 return 한다면 이어지는 표현식은 평가하지 않고 nil을 return한다. 



```instance?.method?()?.value```

--> instance가 옵셔널이다. method가 없을 수 있으며 함수의 retrun값이 없을 수 있다. 



```dictionay?["something"]?.value```

--> 딕셔너리가 없을 수 있으며, 딕셔너리 결과값이 없을 수 있다. 



```instance?.method()```

--> 인스턴스가 옵셔널이면 메서드가 실행이 될까? 

case 1. 리턴값이 없는 함수의 경우

+ 인스턴스가 nil이 아니면 --> 메서드 실행
+ 인스턴스가 nil이면 --> nil 반환

case 2. 리턴값이 있는 함수

+ 인스턴스가 nil이 아니면 --> 옵셔널 타입으로 반환됨
+ 인스턴스가 nil이면 --> nil 반환

참고

https://velog.io/@sossont/iOS-%EC%96%B4%ED%94%8C-%EB%A7%8C%EB%93%A4%EA%B8%B0-Swift-Optional

http://monibu1548.github.io/2018/05/12/swift-optional/



