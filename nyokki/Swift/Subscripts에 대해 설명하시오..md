### 서브스크립트

1. 서브스크립트는 class, struct, enum에서 콜렉션 등의 멤버 요소에 쉽게 접근하기 위한 방법이다. 
2. 서브스크립트는 메서드이다. 



인스턴스의 이름 뒤에 대괄호로 감싼 index 값을 써줌으로써 인스턴스 내부 컬렉션 멤버의 특정 값에 접근할 수 있다. 

+ 서브스크립트를 사용하지 않을 경우 접근

  ```swift
  class ExampleClass {
      var Array = [1, 2, 3, 4, 5]
  }
  
  let ex = ExampleClass()
  ex.Array[1]
  ```

+ 서브스크립트를 사용할 경우 접근

  ```swift
  class SubscriptClass {
      var Array = [1, 2, 3, 4, 5]
      
      subscript (index: Int) -> Int {
          get {
              return Array[index]
          }
          set {
              Array[index] = newValue
          }
      }
  }
  
  let sc = SubscriptClass()
  sc[1]
  ```



서브스크립트의 get블록은 필수 구현 사항이다. get만 구현하면 read-only 계산 속성이 된다. 

set블록은 선택사항이고 기본 파라미터 newValue가 제공된다. 



만일 타입 서브스크립트로 구현하고 싶은 경우에는 메서드 앞에 static 또는 class(only class의 경우, 상속시 재정의 가능) 키워드를 붙여주면 된다. 





참고

https://icksw.tistory.com/21

