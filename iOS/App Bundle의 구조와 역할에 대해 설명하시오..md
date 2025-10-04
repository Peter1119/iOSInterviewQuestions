# App Bundle

+ 실행 가능한 코드와 관련 리소스를 한 공간에 묶는 디렉토리 모음 

애플리케이션 번들은 애플리케이션이 성공적으로 작동하는데 필요한 모든 것을 저장한다. 

### 애플리케이션 번들에 들어가는 파일

+ Info.plist : Information Property list의 줄임말로 응용프로그램에 대한 구성 정보가 들어가 있는 구조화된 파일. 시스템은 이 파일의 존재 여부에 따라 애플리케이션 및 관련 파일에 대한 관련 정보를 식별(필수)

+ 실행파일(Executable): 모든 응용프로그램에는 실행 가능한 파일이 있어야한다. 이 파일에는 애플리케이션 entry point와 애플리케이션 타겟에 정적으로 연결된 모든 코드가 포함되어 있다. (필수)

+ 리소스파일: 위에서 말한 애플리케이션 실행 파일 밖에 있는 데이터 파일들을 의미한다. 일반적으로 이미지, 아이콘, 소리, nib 파일, 문자열 파일 등으로 구성된다.

+ 다른 지원 파일: iOS 애플리케이션 번들에는 custom data resource를 포함하는 것이 가능하지만 사용자 정의 프레임워크 또는 플러그인은 포함될 수 없다.

### iOS App Bundle 의 구조

<img src="/Users/shhong/Library/Application Support/typora-user-images/image-20210805211332122.png" alt="image-20210805211332122" style="zoom:50%;" />

+ **MyApp(필수)**
  
  애플리케이션 코드를 포함하는 실행 파일(Executable)
  
  실제 앱 이름에서 .app 확장자를 뗀 것이다. 번들 구조에서 반드시 있어야 한다. 
  
+ **애플리케이션 아이콘(필수/권장)**

+ **Info.plist(필수)**
  
  번들 ID, 버전 번호와 같은 애플리케이션에 대한 구성 정보가 포함되어 있음
  
+ Launch image(권장)
  
  위 이미지에서는 Default.png를 의미한다.
  
  애플리케이션이 window와 인터페이스를 로드할 때까지 launch이미지 중 하나를 임시 배경으로 사용한다. 이를 사용하지 않으면 검은 배경이 표시된다.
  
+ MainWindow.nib
  
  런타임시 앱을 로드할 기본 인터페이스 객체를 포함하고 있다. 보통 Window 객체와 App Delegate, scene delegate 객체의 인스턴스가 포함된다. 
  
+ Setting.bundle
  
  앱의 specific preferences를 포함하는 특별한 타입의 플러그인이다.
  
+ 커스텀 리소스 파일
  
  로컬화 되지 않은 리소스는 최상위 디렉토리에 배치되고 로컬 리소스는 애플리케이션 번들의 언어별 하위 디렉토리에 배치된다. 리소스는 nib파일, 이미지, 사운드 파일, 설정파일, 등등 애플리케이션에 필요한 기타 커스텀 데이터 파일로 구성된다. 



출처 

https://developer.apple.com/library/archive/documentation/CoreFoundation/Conceptual/CFBundles/BundleTypes/BundleTypes.html#//apple_ref/doc/uid/10000123i-CH101-SW1



참고

https://sihyungyou.github.io/iOS-app-bundle/

