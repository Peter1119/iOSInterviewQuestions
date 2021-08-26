## Codable

자신을 변환하거나 외부표현으로 변환할 수 있는 타입



JSON과 같은 외부 데이터를 우리가 만들 애플리케이션에서 사용하기 편하도록 객체에 맵핑하기 위해 사용한다. 

+ Decodable: 자신을 외부표현에서 디코딩할 수 있는 타입(자신 <- 외부표현)
+ Encodable: 자신을 외부표현으로 인코딩할 수 있는 타입(자신 -> 외부표현)



Codable은 프로토콜이며 class, struct, enum에 채택할 수 있다. 



이때 Codable처리할 때, 스네이크표현법을 카멜표현법으로 바꾸거나 JSON에 있는 이름과 다른 이름을 사용하고 싶다면 CodingKey를 따로 정의 하면 된다. 







참고

https://adora-y.tistory.com/entry/iOS-Codable%EC%97%90-%EA%B4%80%ED%95%98%EC%97%AC

https://zeddios.tistory.com/373

https://shark-sea.kr/entry/Swift-Codable-%EC%95%8C%EC%95%84%EB%B3%B4%EA%B8%B0