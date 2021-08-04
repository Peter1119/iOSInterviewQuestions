NotificationCenter의 동작방식

"특정 객체가 NotificationCenter에 등록된 event를 발생(post)시키면 NotificationCenter가 이 정보를 흩뿌려주고(broadCasting) 해당 event를 처리할 것이라고 등록된 observer들이 Event에 대한 행동을 취하는 것이 NotificationCenter 동작 방식이다."



<img src="https://t1.daumcdn.net/cfile/tistory/99E985335A12E50F1F" alt="img" style="zoom:50%;" />

NotificationCenter는 델리게이트 패턴과 함께 어플리케이션 내에서 객체가 서로 상호작용할 수 있는 방법 중 하나이다. 



사용 절차는 다음과 같다.

이벤트가 발생할 객체에 NotificationCenter를 등록시킨다. 

Event에 대한 행동을 취해줄 객체에 observer를 등록시킨다. 

## 활용방안 추가 할것 
