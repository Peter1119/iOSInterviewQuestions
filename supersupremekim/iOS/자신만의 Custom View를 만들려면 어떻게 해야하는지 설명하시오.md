# 🍎 자신만의 Custom View를 만들려면 어떻게 해야하는지 설명하시오



### 1. Xib 사용하기

#### 	1. UIView를 상속하는 class 생성한다 

##### 				cf)uiview는 두개의 필수 생성자가 있다. override init 코드로 뷰 만들 때 사용됨. Required init 스토리 보				드를 통해서 view 연결할 때 사용됨



####     2. Nib 파일 생성 후, nib파일의 이름으로 해당 nib 파일을 가져오는 내용을 포함한, 뷰를 로드		하는 메소드를 작성하고, init과 required init에서 이 메소드를 실행한다.





### 2. 코드로 만들기

#### 코드로 뷰의 구성을 전부 작성.

#### init(frame) 이 실행된다.

#### 뷰컨트롤러에서 불러올 때는 해당 클래스의 인스턴스 만들고 addSubview 통해서 추가해줌