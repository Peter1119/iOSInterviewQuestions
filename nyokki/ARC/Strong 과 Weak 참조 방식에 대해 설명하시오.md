### Strong Reference(강한 참조)

- 해당 인스턴스의 소유권을 가진다. 
- 소유하고 있기 때문에 자신이 참조하는 인스턴스의 retain count를 증가시킨다. 
- 값 지정 시점에 retain 되고 참조가 종료되는 시점에 release가 되어 reference count를 1 감소시킨다.
- 인스턴스 선언시 어떤 키워드도 앞에 붙혀주지 않으면 strong이 default이다.



### Weak Reference(약한 참조)

+ 해당 인스턴스의 소유권을 가지지 않고, 주소값만을 가지고 있는 포인터 개념이다. 
+ 자신이 참조하는 인스턴스의 reference count를 증가시키지 않는다. 때문에 release도 발생하지 않는다.
+ 자신이 참조는 하지만 weak 메모리를 해제시킬 수 있는 권한은 다른 클래스에 있다. 다시 말해, 약한 참조의 경우, 참조하고 있던 인스턴스가 사라지면 nil로 초기화가 된다. 
+ 메모리가 해제될 경우 자동으로 레퍼런스가 nil로 초기화 해준다. 
+ nil이 될 수 있기 때문에 weak 속성은 var만 가능하고 optional이어야 한다. 
+ 소유자에 비해 짧은 생명주기를 가진 인스턴스를 참조할 때 주로 사용한다. 



### Unowned Reference(비소유 참조)

+ 인스턴스의 소유권을 가지지 않는다.
+ 자신이 참조하는 인스턴스의 reference count를 증가시키지 않는다. 
+ nil이 될 수 없다. optional로 선언해서는 안된다.(Swift 5.3 이전 버전) -> 초기화 함수에서 초기화를 해줘야 한다.
+ Swift 5.3 이후 버전에서는 Optional로 선언해도 된다. 단 비소유 참조의 경우, 참조하고 있던 인스턴스가 사라지면(nil이 되면) weak reference와 다르게(nil로 자동으로 초기화) nil로 초기화가 되지 않고, 해당 데이터에 접근하면 에러가 발생한다. -> 에러가 발생하지 않으려면 해당 데이터에 nil 값을 먼저 넣어주어야 한다. 
+ 소유자보다 인스턴스의 생명주기가 더 길거나, 같은 경우에 사용한다. 



참고

https://devsrkim.tistory.com/entry/Swift-%EB%A9%94%EB%AA%A8%EB%A6%AC%EB%A5%BC-%EC%B0%B8%EC%A1%B0%ED%95%98%EB%8A%94-%EB%B0%A9%EB%B2%95-Strong-Weak-Unowned