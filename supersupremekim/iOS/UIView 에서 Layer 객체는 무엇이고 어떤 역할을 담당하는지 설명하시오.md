# 🍎  UIView 에서 Layer 객체는 무엇이고 어떤 역할을 담당하는지 설명하시오



### CALayer는 CoreAnimation이 제공하는 요소 중 하나. 각 View마다 루트 layer는 하나씩 존재한다.



### 뷰위에 컨텐츠나 애니메이션을 그리는 작업은 view가 직접 처리하지 않고 core animation에 위임함. 그러면 CALayer가 뷰 위에 컨텐츠와 애니메이션을 그리는 작업을 담당하게 됨.



### 뷰에 속한 루트 layer를 통해 shadow와 cornerRadius 값을 설정할 수 있다. 또한 cornerRadius 값에 따라서 안의 컨텐츠가 짤리거나 하는 경우가 발생할 수 있는데, Bool type인 clipsToBounds를 설정하면 바뀐 뷰 테두리 영역에 의해 안에 있는 내용을 자를 것인가 보존할 것인가를 설정할 수 있다.