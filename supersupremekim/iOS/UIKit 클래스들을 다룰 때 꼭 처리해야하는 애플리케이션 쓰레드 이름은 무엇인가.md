# 🍎 UIKit 클래스들을 다룰 때 꼭 처리해야하는 애플리케이션 쓰레드 이름은 무엇인가



UIKit 클래스를 다룰 때는 앱의 main thread나 main dispatchQueue에서만 처리해야 한다. UIResponder를 상속한 클래스나 앱의 유저 인터렉션을 다룰 때 특히나 더 이 점에 유의해야 한다.