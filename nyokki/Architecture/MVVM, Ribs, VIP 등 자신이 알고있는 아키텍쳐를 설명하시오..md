### 용어 정리 

#### Entity 

사전적 의미로는 ‘실체’, ‘존재’, ‘자주적인 것’, ‘본질’이다. 데이터베이스에서는 엔티티를 ‘실체’ 또는 ‘개체’라고 표현한다. 엔티티로 구성된 엔티티 집합이란 [정보](https://terms.naver.com/entry.nhn?docId=1140447&ref=y)의 세계에서는 의미 있는 정보의 단위 또는 우리가 관리하고자 하는 두 개 이상의 속성과 두 개 이상의 개체를 지닌 동질성의 의미를 가진 독립적인 집합이다.

출처: **[네이버 지식백과]** [엔티티](https://terms.naver.com/entry.naver?docId=1179872) [entity] (두산백과)

#### Repository

애플리케이션 개발에 관련된 정보를 보관해 둔 [데이터베이스](https://terms.naver.com/entry.nhn?docId=842806&ref=y). 정의(定義) 정보, 설계 정보, [프로그램](https://terms.naver.com/entry.nhn?docId=833746&ref=y) 및 시험 결과 등의 [응용 프로그램](https://terms.naver.com/entry.nhn?docId=815270&ref=y) 개발에 대한 각 공정 과정에서 발생한 정보를 축적해서 공정간에 공용하거나 궤환되도록 컴퓨터 이용 [소프트웨어](https://terms.naver.com/entry.nhn?docId=837523&ref=y) 공정 툴이 지원된다.

출처: **[네이버 지식백과]** [리포지토리](https://terms.naver.com/entry.naver?docId=845827) [repository] (IT용어사전, 한국정보통신기술협회)



# 아키텍처란?

### 아키텍처에 대한 기본 요구 사항

+ 시스템 구성 및 동작 원리를 나타내고 있다.
+ 시스템 구성 요소에 대해 설계 및 구현을 지원하는 수준으로 자세히 기술된다.
+ 구성 요소 간의 관계 및 시스템 외부 환경과외 관계가 묘사된다.

---------> **서비스의 동작 원리를 나타낸다.**



### 좋은 아키텍처의 요소 

1. Distribution

   각 객체들의 역할이 분명한가?

   한 객체는 하나의 역할만 수행하도록 해서, 프로그램의 복잡도를 낮추는가? 

2. Testability

   테스트가 가능한가?

3. Ease of use

   사용하기 편리하고(길이가 짧고 가독성이 좋은 코드), 유지보수 비용이 적은가?



# MVVM

MVVM은 Model, View, ViewModel을 나타낸다. 

### Model

데이터 구조를 정의하고 ViewModel에게 결과를 알려준다. 

Model은 View와 이어지지 않는다. 



데이터 모델, 비지니스 로직 등이 포함되어 있다. (Model, Repository, Service)

모델은 데이터의 CRUD(Create, Read, Update, Delete)에 대한 함수와 코드가 작성되어 있으며 

이는 ViewModel에 의해서 시작되고 작업을 마치면 ViewModel에게 알려준다. 

### View

ViewController에 작성하며 view는 사용자와 상호작용이 직접적으로 일어나는 곳이다.

이벤트가 일어나면 ViewModel에게 알려주며 ViewModel은 이 요청에 대한 결과 데이터를 보여준다. 

### ViewModel

View와 Model 사이를 연결해준다.

View를 나타내주기 위한 로직을 처리하며 View는 ViewModel에 의존한다. 

ViewModel은 사용자와 상호작용에 대한 이벤트를 View가 보내주면 그에 맞는 이벤트를 처리하여 Model에게 알려주며 Model은 이를 반영한 데이터를 다시 ViewModel에게 알려주고 이 결과를 View에게 전달하여 View에 나타나게 되는 것이다. 








참고

https://gwangyonglee.tistory.com/49

https://42kchoi.tistory.com/292

https://jiyeonlab.tistory.com/38

https://youtu.be/M58LqynqQHc



클린코드 클린 아키텍처 

https://www.youtube.com/watch?v=KUEe1tc2CbE