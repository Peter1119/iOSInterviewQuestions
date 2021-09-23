# 🏗 MVVM, Ribs, VIP 등 자신이 알고있는 아키텍쳐를 설명하시오

### MVVM 아키텍쳐는 Model과 View 그리고 ViewModel로 이루어진 아키텍쳐이다. Model에서는 어플리케이션 내에서 필요한 타입의 데이터를 갖고 있고, 비즈니스 로직을 다뤄서 데이터를 가공하여 viewmodel에 제공한다. viewModel은 view와 바인드 되어 있고 특정 로직에 따라 표현해야 하는 ui 요소를 본따고 있으며, model로부터 받은 데이터를 View에 표시하기 적합한 형태로 변형하여 View에 넘겨주고, view는 해당 내용을 그린다. 하지만 일방통행만은 아니다. view는 model과는 직접적으로 소통하지 않지만,  주로 user event를 viewmodel에 넘겨주기도 하면서 양방향으로 소통한다.

### mvvm의 장점은 view controller가 길어지지 않는다는 점과 각 파트가 나눠져있어서 가독성이 뛰어나다는 점, 그리고 에러가 생기면 에러가 생긴 단계에서만 수정을 하면 된다는 장점과, unit test를 하기 적합하다는 장점, 그리고 rxswift를 적용하기에 적합하다는 장점이 있다.

### MVC 아키텍쳐는 Model과 View와 Controller로 이뤄져 있는 아키텍쳐이다. 

### model은 data와 logic을 갖고 있고 view는 user interaction을 담당하며 controller는 view와 model의 중재자 역할을 한다. view가 user interaction을 받는 상황부터 설명하면, interaction을 받았을 때 controller에 input event를 전달하고 받은 내용을 바탕으로 model에 요청을 보내면 model에서 비즈니스 로직을 처리해서 필요한 데이터를 다시 controller에 보낸다. 컨트롤러는 해당 데이터를 뷰에 그리기에 적합한 type으로 바꿔서 view에 그리게 한다.

### Coordinator 는 화면 전환과 관련된 일을 하는 객체 coordinator가 각 뷰 컨트롤러에 주입되어 화면 전환 역할을 담당하는 디자인 패턴이다. coordinator 프로토콜을 채택한 coordintor 클래스 객체에서 각종 화면 전환과 관련된 메소드를 구현해놓고 사용한다. 또한 보통 뷰컨트롤러들의 instance화를 간편하게 하기 위해서 관련 프로토콜을 정의하고 타입 메소드로 뷰컨트롤러의 인스턴스화를 담당하는 메소드를 정의해놓고 사용한다.
