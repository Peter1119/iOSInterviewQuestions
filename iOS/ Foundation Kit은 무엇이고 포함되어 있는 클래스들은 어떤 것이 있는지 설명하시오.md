# Foundation

프로그램의 중심을 담당하는 프레임워크이다. 사실 가장 기본적인 `원시 데이터 타입`(String, Int, Double)부터가 `Foundation`에 포함되어있기 때문에, 프레임워크를 상속하지 않으면 아무것도 할 수 없다고 봐도 무방하다.

`Foundation` 내에 포함된 클래스들은 앞에 `NS`가 붙으며 주로 사용하는 기능들은 다음과 같다.

### 기본

`Number, Data, String`: 원시 데이터 타입 사용   
`Collection`: Array, Dictionary, Set 등과 같은 컬렉션 타입 사용   
`Date and Time`: 날짜와 시간을 계산하거나 비교하는 작업  
`Unit and Measurement`: 물리적 차원을 숫자로 표현 및 관련 단위 간 변환 기능  
`Data Formatting`: 숫자, 날짜, 측정값 등을 문자열로 변환 또는 반대 작업  
`Filter and Sorting`: 컬렉션의 요소를 검사하거나 정렬하는 작업 

### 애플리케이션 지원

`Resources`: 애플리케이션의 에셋과 번들 데이터에 접근 지원  
`Notification`: 정보를 퍼뜨리거나 받아들이기는 기능 지원  
`App Extension`: 확장 애플리케이션과의 상호작용 지원   
`Error and Exceptions`: API와의 상호작용에서 발생할 수 있는 문제 상황에 대처할 수 있는 기능 지원    

### 파일 및 데이터 관리

`File System`: 파일 또는 폴더를 생성하고 읽고 쓰는 기능 관리          
`Archives and Serialization`: 속성 목록, JSON, 바이너리 파일들을 객체로 변환 또는 반대 작업 관리        
`iCloud`: 사용자의 iCloud 계정을 이용해 데이터를 동기화하는 작업 관리

### 네트워킹

`URL Loading System`: 표준 인터넷 프로토콜을 통해 URL과 상호작용하고 서버와 통신하는 작업         
`Bonjour`: 로컬 네트워크를 위한 작업

​     

#### 추가

Foundation은 코코아 프레임워크 계층구조에서 Core Service에 들어가 있고 UIKit은 가장 위인 Cocoa Touch 계층에 있다.

![img](https://media.vlpt.us/post-images/wan088/04203e00-bff7-11e9-aaf8-abce3fc63ae8/image.png)

#### Cocoa Touch 계층

하위 계층의 프레임워크를 사용하여 애플리케이션을 직접 구현하는 프레임워크       
`UIKit`, `GameKit`, `MapKit`

#### Media 계층

상위 계층인 코코아 터치 계층에 그래픽 관련 서비스나 멀티미디어 관련 서비스를 제공         
`Core Graphics`, `Core Text`, `Core Audio`, `Core Animation`, `AVFoundation`

#### Core Service 계층

문자열 처리, 데이터 집합 관리, 네트워크, 주소록 관리, 환경 설정 등 핵심적인 서비스들을 제공         
또한 GPS, 나침반, 가속도 센서나 자이로스코프 센서와 같이 디바이스의 하드웨어 특성에 기반한 서비스도 제공         
`Foundation`, `Core Foundation`, `Core Location`, `Core Motion`, `Core Animation`, `Core Data`

#### Core OS 계층

커널, 파일 시스템, 네트워크, 보안, 전원 관리, 디바이스 드라이버 등이 포함        
iOS가 운영 체제로서 기능을 하기 위한 핵심적인 영역