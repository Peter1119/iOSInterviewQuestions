Strong(강한 참조)

- 해당 인스턴스의 소유권을 가진다. 
- 소유하고 있기 때문에 자신이 참조하는 인스턴스의 retain count를 증가시킨다. 
- 값 지정 시점에 retain 되고 참조가 종료되는 시점에 release가 되어 retain count를 1 감소시킨다.
- 인스턴스 선언시 어떤 키워드도 앞에 붙혀주지 않으면 strong이 default이다.

Weak(약한 참조)

+ 해당 인스턴스의 소유권을 가지지 않고, 주소값만을 가지고 있는 포인터 개념이다. 
+ 자신이 참조하는 인스턴스의 retain count를 증가시키지 않는다. 때문에 release도 발생하지 않는다.
+ 자신이 참조는 하지만 weak 메모리를 해제시킬 수 있는 권한은 다른 클래스에 있다. 
+ 메모리가 해제될 경우 자동으로 레퍼런스가 nil로 초기화 해준다. 
+ nil이 될 수 있기 때문에 weak 속성은 var만 가능하고 optional이어야 한다. 



추가

Unowned(미소유 참조)

+ 인스턴스의 소유권을 가지지 않는다.
+ 자신이 참조하는 인스턴스의 retain count를 증가시키지 않는다. 
+ nil이 될 수 없다. optional로 선언해서는 안된다.



참고

https://devsrkim.tistory.com/entry/Swift-%EB%A9%94%EB%AA%A8%EB%A6%AC%EB%A5%BC-%EC%B0%B8%EC%A1%B0%ED%95%98%EB%8A%94-%EB%B0%A9%EB%B2%95-Strong-Weak-Unowned