# 🐥 property wrapper에 대해서 설명하시오



### Property wrapper는 어떤 타입 안에 중복되는 로직이 있다면 그 로직을 정의하는 타입을 만들어 코드를 dry하게 하는 것이다. 

### 선언하는 방식은, @propertyWrapper키워드를 프로퍼티를 가질 수 있는 타입 앞에 붙이고 (class, struct, enum) 이 타입 안에 wrapped value를 선언 정의한다. 사용할 때는 변수 선언부 앞에 해당 키워드를 적어준다.