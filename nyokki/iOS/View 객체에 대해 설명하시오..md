https://haningya.tistory.com/217

view의 형성 과정 : https://velog.io/@yongchul/iOSView%EC%9D%98-%ED%98%95%EC%84%B1%EA%B3%BC%EC%A0%95

rootViewController를 바꿔야하는 상황과 하는 방법 :https://mtsparrow.blogspot.com/2018/08/rootviewcontroller.html

window, view, ViewController : https://velog.io/@ellyheetov/Window-View-%EA%B7%B8%EB%A6%AC%EA%B3%A0-View-Controller



## UIView

뷰 객체는 사용자에게 컨텐츠를 보여주고 인터렉션에 대해서 다룬다. 

뷰 객체는 응용 프로그램이 사용자와 상호작용하는 주요 방법이기 때문에 여러 책임(?)들이 있다. 

1. 드로잉(사각형 그리기, 배경 그리기) 및 애니메이션
2. 레이아웃 및 서브뷰 관리
   서브뷰의 크기와 위치 조정 가능(frame)
   오토레이아웃을 사용하여 뷰 계층 구조의 변경에 대한 응답으로 뷰의 크기를 조정하고 위치를 변경하는 것을 정의
3. 이벤트 처리 
   뷰는 UIResponder의 하위 클래스이며 터치 및 기타 이벤트에 대한 응답할 수 있다.
   제스처 처리에 대한 gestureRecognizer을 설치할 수 있다. 



모든 처리는 메인 쓰레딩에서 처리한다. 



공식 문서 : https://developer.apple.com/documentation/uikit/uiview