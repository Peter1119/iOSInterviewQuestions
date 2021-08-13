### Optional이란?

옵셔널은 변수 타입 뒤에 ?를 붙이면 해당 변수는 Optional 변수가 된다.

이 변수에 값이 들어갈 수도 있고 아닐 수도 있다. (nil)

`nil`은 Swift에서 `value`가 없는 것을 의미한다.  



Wrapping

옵셔널 변수들은 현재의 값이 존재하는 것인지 nil인 것인지 wrap 되어 있어서 모른다. 그렇기 때문에 wrap된 상태에서는 value값이 있는지 없는지 관계없이 value가 바로 출력되지 않고 Optional("hello")와 같이 출력된다. 



Forced Unwrapping

바로 value의 값을 출력하기 위해서는 변수 뒤에 !를 붙이면 value값이 바로 나온다. 다만 벨류가 있다고 확신하는 경우에만 사용하는 것이 좋다. 그렇지 않으면 런타입 에러가 발생한다. 



Optional Binding

옵셔널 바인딩을 사용하면 느낌표 없이 Optional 타입의 변수 값을 출력할 수 있어서 좀더 안전한 형태로 값을 얻을 수 있다. 

1. if let, guard let

```swift
if let 변수명 = Optional 변수 {
 // 임시 변수에 Optional 변수의 value값이 할당된다다.
}
```

2. as, as? as!
   타입 캐스팅 - 해당 타입인지 확인하는 것이 타입캐스팅
   as? - 뒤 타입이 맞는지 확인하고 맞으면 바인딩 틀리면 nil
   as! - 강제로 타입변환 시도, 변환이 안맞으면 크래쉬 발생

3. try!, try?
   try? 
   에러가 발생할 수 있다. 핸들링 해라 
   트라이 해봐서 괜찮으면 바인딩하고 안되면 nil
   try!
   강제로 트라이해라

   try의 원래 목적은 에러가 발생할 때 핸들링해주는 것을 기회로 주겠다는 의미이고 정식으로 사용하기 위해서는 try는 무조건 do-catch 문법에 사용되며 오류 체크를 하기위함이다. 

참고

https://velog.io/@sossont/iOS-%EC%96%B4%ED%94%8C-%EB%A7%8C%EB%93%A4%EA%B8%B0-Swift-Optional

http://monibu1548.github.io/2018/05/12/swift-optional/



