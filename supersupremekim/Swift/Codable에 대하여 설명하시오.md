# 🐥 Codable에 대하여 설명하시오

### 어떤 타입이 codable을 채택하게 되면 이 타입은  decodable과 encodable 모두 가능하게 되는 프로토콜이다. 

### 어떤 data타입의 인스턴스를 swift 개발에서 활용할 수 있는 커스텀 타입의 인스턴스로 변환할 때, decodable을 채택한 커스텀 타입을 정의한다. 많이 활용하는 경우는 decodable을 채택한 타입을 만들어 JSON Decoder를 활용해서 데이터를 원하는 타입의 오브젝트로 변환하는 경우이다.

### 중요한 점은 codinkeys를 활용하지 않으면, 프로퍼티의 이름들을 json에 있는 속성들의 이름과 동일하게 설정해놓아야 한다는 것이다.



### encodable은 반대로, 스위프트 오브젝트를 data type의 오브젝트로 변환할 수 있게하는 프로토콜이다. 이 것도 역시 마찬가지도 JSONEncoder를 활용하면 json형태로 만들 수 있으며, 이렇게 변환된 data는 .utf8 형식을 활용하면 string 형태로 확인할 수 있다.

