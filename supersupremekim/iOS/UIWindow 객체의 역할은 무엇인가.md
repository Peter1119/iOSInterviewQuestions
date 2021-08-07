# 🍎 UIWindow 객체의 역할은 무엇인가



- ### 앱의 시각적 컨텐츠를 담는다

- ### 터치 이벤트를 전달한다



### window - 뷰들을 담는 컨테이너

#### 스크린에 표시되는 뷰의 계층 구조에서 최상위 뷰의 역할을 할 고정적인 객체의 역할을 한다.

#### 단 하나의 window 객체만 생성하고, 이 객체를 통해서 rootviewcontroller를 설정할 수 있다.



### 스토리 보드를 쓰지 않는 경우, 메인 window를 직접 생성해야 한다. 방법은 window에 UIWindowScene을 직접 넣어줘야 한다.

구체적으로는 plist파일에 Application scene manifest의 하위 속성 중 Storyboard Name 항목을 삭제하고, Scene delegate 파일에서 앱을 런치할 때 실행되는 메소드인 제일 첫번째 메소드에서 windowScene을 생성하고 클래스의 옵셔널로 되어 있던 window 속성에 씬을 주입해주고, window에 root viewcontroller를 생성하여 설정해주는 것이다.

