# 🐥 class의 성능을 향상 시킬수 있는 방법들을 나열해보시오



성능 영향 요소 - allocation, reference counting, method dispatch

Stack - 단순 구조, 메모리 할당 해제 편리. 단순 구조 - O(1) 으로 속도 빠름

Struct, enum, tuple



Heap - 복잡 구조, heap영역에서 사용하지 않는 블록을 찾아 메모리 할당. 여러 스레드가 동시에 힙에 메모리를 할당할 수 있기 떄문에 무결성 보호 해야함. 





-> stack 비용 적고, 속도 빠름

복사된 인스턴스마다 기존 인스턴스와 구분되어져 stack에 저장되기 때문에 내부 값 변경해도 원래 값에 영향을 주지 않음. Reference count도 사용하지 않음



-> class

stack에는 reference 주소값을 할당하고, 실질적인 데이터는 heap에 할당. class, function

어떤 클래스의 인스턴스를 생성하고 복사하면 stack에 있는 주소값이 복사되기 때문에 주소값을 넘겨받은 인스턴스들은 모두 같은 값을 가리키게 됨. 



### 성능 향상 - heap allocation 피하기 - 딕셔너리를 만들 때 string 대신에 structure를 쓴다 , heap 영역의 메모리 해제 - structure라도 reference semantics를 따르는 타입의 프로퍼티를 가지면 reference counting은 발생한다. 구조체의 레퍼런스 개수가 많으면 오버헤드가 늘어나기 때문에 class 보다 reference counting이 많이 발생한다.  레퍼런스 카운팅 줄이기 - 구조체 안에 string을 structure나 enum등 값 타입으로 바꾼다.

