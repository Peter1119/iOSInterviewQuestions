## Property Wrappers

프로퍼티 래퍼는 프로퍼티가 저장되는 방식을 관리하는 코드와 프로퍼티를 정의하는 코드를 미리 작성하여 중복되는 코드를 생략하는 재사용성을 높히는 방식이다. 



프로퍼티 래퍼의 생성 방법은 구조체, 클래스, enum 등을 만들고 그 앞에 @propertyWrapper라고 명시를 해준다. 실제로 저장값은 wrappedValue로 정의하고 추가로 제공하고 싶은 정보가 있다면 projectedValue를 정의하면 된다. 

이 프로퍼티래퍼를 사용하는 방법은 프로퍼티를 정의하고 **@프로퍼티래퍼명**으로 attribute를 붙인다. 그러면 이 프로퍼티가 get/set이 일어날 때마다 property wrapper의 getter/setter 코드가 실행된다.





참고

https://wlaxhrl.tistory.com/90

https://zeddios.tistory.com/1221

https://docs.swift.org/swift-book/LanguageGuide/Properties.html