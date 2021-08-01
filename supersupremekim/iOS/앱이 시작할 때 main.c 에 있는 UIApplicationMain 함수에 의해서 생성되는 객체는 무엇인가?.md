# 🍎앱이 시작할 때 main.c 에 있는 UIApplicationMain 함수에 의해서 생성되는 객체는 무엇인가?



### UIApplication 싱글턴 객체

모든 앱은 하나의 UIApplication 인스턴스가 있다.

유저의 아이폰에서 앱이 실행될 때, UIApplication이 실행되고 있는 어플리케이션 오브젝트에 해당된다.

UIApplication을 통해 appdelegate에 접근할 수 있다.

`let appDelegate = UIApplication.shared.delegate as! AppDelegate`