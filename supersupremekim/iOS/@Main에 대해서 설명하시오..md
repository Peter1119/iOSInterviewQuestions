# 🍎 @Main에 대해서 설명하시오.



Xcode 12부터 AppDelegate 파일 안, AppDelegate 클래스 위에 쓰여져 있는 것인데, 스위프트 프로그램의 진입 포인트를 마킹해 놓은 것이다.



앱이 시작되는 순간 @Main을 통해 UIApplicationMain 메소드가 호출되고, 이것이 응용프로그램 객체 UIApplication을 (앱의 life cycle 담당) 만든다. 또한 시스템은 AppDelegate클래스의 인스턴스(app delegate - 앱 내용이 그려질 창을 만듦)를 생성하고 이를 UIApplication 객체에 할당한다. 마지막으로 시스템은 앱을 실행한다.



cf) 프로그램은 단 하나의 진입 포인트가 있어야만 한다.

