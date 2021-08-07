https://developer.apple.com/documentation/uikit/uiwindow

<img src="https://media.vlpt.us/images/ellyheetov/post/34761d80-2f33-40e7-a437-0ee4fad89c1f/Screen%20Shot%202021-02-11%20at%201.05.02%20PM.png" alt="post-thumbnail" style="zoom:50%;" />

Application은 하나의 window와 여러 개의 view들로 이루어져 있다. 

# window란

window란 UIWindow의 인스턴스이며 여러 개의 보이지 않는 view들 까지도 포함하는 container 역할을 하는데 최상위 container이다.

쉽게 액자라고 생각하면 된다. 

Window는 보이지 않으며 앱 종료시에만 사라지게 된다. 



역할

앱의 시각적 콘텐츠를 담는다.

뷰들과 다른 애플리케이션 객체들에게 터치 이벤트를 전달하는 중요한 역할을 한다. 

뷰 컨트롤러들과 협력한다. 



윈도우는 이벤트를 처리하고 앱 동작에 기본적인 많은 작업을 수행하기 위에 뷰컨트롤러와 함께 작동한다. UIKit은 대부분 window 관련 상호 작용을 처리하고 많은 앱 동작을 구현하는데 필요한 다른 개체와 함께 작동한다. 



