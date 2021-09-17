## Delegate

델리게이션을 이해하기 위해서는 프로토콜을 먼저 이해해야한다. 프로토콜은 특정 작업 혹은 기능들을 구현하기 위한 메소드, 프로퍼티 그리고 기타 다른 요구사항들의 청사진이다. 

조금 쉽게 말하자면 해당 이름에 걸맞는 기능을 하기 위해서 구현해야 하는 것들의 리스트이다. 



그럼 델리게이션이랑 프로토콜이랑 무슨 상관이 있는 걸까? 

이 델리게이션을 프로토콜로 만들기 때문이다. 델리게이션은 사전상의 의미로 "위임하다."라는 뜻이다. 사전 뜻 그대로 원하는 class, enum, struct에 프로토콜을 채택하여 해야 할 일들을 위임시킨다는 것이다. 

Delegate 패턴에는 protocol, sender, receiver가 있으며 

protocol : 해야할 일의 목록

sender : 일을 시키는 객체

receiver: 일을 하는 객체



### Retain Cycle

참조하는 값은 메모리의 Heap이라는 영역에 해당된다. 

Heap이라는 영역에 메모리가 저장되기 위해선 공간이 필요한데 바로 그 공간을 레퍼런스가 바라보고 있는 것이다.

<img src="https://blog.kakaocdn.net/dn/drOpsX/btqON8au8dV/x6nxnWdWbq4wjey67G5IJ0/img.png" alt="img" style="zoom:50%;" />

여기서 Retain은 위 사진처럼 레퍼런스를 이용하여 인스턴스를 만들때 생겨난다. 
retain은 ARC에서 참조값을 +1해준다. 참고로 반대는 release로 참조값을 -1해준다. 

<img src="https://blog.kakaocdn.net/dn/bC4uAu/btqOzAGG8HE/4KmPFU9ki5mD9Pxp632BM1/img.png" alt="img" style="zoom:50%;" />

Retain이 필요한 이유는 메모리 누수를 방지하기 위해서 필요하다. 

이 방법은 연결 상태 Strong, Weak , unowned으로 각각 상황에 따라 약하게 연결할지 강하게 연결할지 결정하는 것이다. 

이때 델리게이트는 프로토콜이기 때문에 retain이 발생하지 않는 것일까? 

델리게이트를 형성하는 것은 해당 프로토콜을 채택한 객체에게 위임을 하는 것이기 때문에 어떤 객체가 델리게이트를 하게 된다면 참조값이 증가한다. 만일 서로가 서로의 대리자가 되어 참조한다면 둘의 참조값이 증가하였기 때문에 두 클래스 모두 해제가 된다고 해도 서로 참조값은 0이 되지 않고 메모리 누수가 생기게 된다. 

클래스에서 프로토콜을 채택할 때에는 Class-only-Protocol이라는 프로토콜을 만들어주어야 하고 이는 클래스 타입으로 만들어지기 때문에 Retain된다.



참조

https://jwonylee.github.io/iOSInterviewquestions/Delegate-retain

