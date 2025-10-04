# UINavigationController

``class UINavigationController: UIViewController`` 

UINavigationController는 하나의 뷰 컨트롤러가 아닌 여러 개의 뷰 컨트롤러의 계층을 만들고 관리해 주는 컨테이너 뷰 컨트롤러이다.

이때 UINavigationBar는 UINavigationController에 의해 제어가 된다. 화면의 순서는 stack이 관리하지만, 사용자가 이 스택을 조종하기 위한 인터페이스로 UINavigationBar가 있다. 

### 주요 역할 

+ 컨텐츠 뷰 컨트롤러(테이블뷰, 콜렉션뷰 등등)를 보여주고, 네비게이션 바 혹은 툴바와 같은 사용자 정의 뷰 두 가지를 보여주는 역할
+ 사용자의 액션에 응답하며, 새로운 콘텐츠 뷰 컨트롤러를 스택에 쌓거나 스택에서 뷰 컨트롤러를 제가하는 역할
+ 스택에 있는 각 뷰 컨트롤러는 앱의 데이터를 보여주는 역할 



네비게이션 뷰 컨트롤러는 컨텐츠 뷰컨트롤러를 관리하는데 스택구조로 담아 놓는다.

가장 아래쪽에 있는 것을 루트뷰 컨트롤러가 되며 가장 위에 있는 화면을 탑 뷰 컨트롤러가 된다. 

네비게이션 컨트롤러에는 뷰 간의 화면 전환을 하는 다양한 메소드들이 있다. 



네비게이션 바와 툴바에 관해서는 네비게이션 컨트롤러가 UINavigationBar 객체의 delegate가 될 수 있다. 

