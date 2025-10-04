## Result 

Result타입은 스위프트 표준 라이브러리에 도입되어 있다. Result 타입은 비동기 API와 같은 복잡한 코드에서 에러를 보다 간단하고 명확하게 처리할 수 있게 도와준다. 

Result 타입은 success와 failure 두 가지 case가 존재하는 enum이다. 둘 다 제네릭을 사용하여 구현되므로 개발자가 정한 타입의 연관값을 가질 수 있다. 다만 failure의 연관값은 swift의 error 타입을 채택한 타입이어야 한다. 



이때 에러를 throw하고 싶다면 Result타입에서 제공하는 get()메서드가 있다. 이 메서드는 성공한 값이 있으면 반환하고 그렇지 않으면 error를 throw하는 메서드이다. 



참고

https://tech.burt.pe.kr/swift/what-new/swift-5.0/result-type

https://hryang.tistory.com/21