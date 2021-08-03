# 🍎 NotificationCenter 동작 방식과 활용 방안에 대해 설명하시오





### Notification Center - 등록된 옵저버들에게 정보를 broadcast 해주는 메커니즘.



### 동작 방식 - 노티피케이션센터에서 Nsnotification에 이름을 붙여서 노티피케이션을 post하면, 해당 NSNotification의 옵저버로 등록되어 있는 클래스가 노티피케이션을 받고, selector에서 지정한 함수가 실행된다. 원하는 정보를 같이 보내기 위해서는 userInfo를 dictionary형식으로 전달한다.



### 활용 방안 - 백그라운드 작업의 결과, 비동기 작업의 결과 등 현재 작업의 흐름과 다른 흐름의 작업으로부터 이벤트를 받으려고 할 때 notification을 많이 활용한다.