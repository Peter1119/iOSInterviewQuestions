출처 : https://help.apple.com/xcode/mac/current/#/devbbdc5ce4f

앱 시닝이란 무엇일까?

단어 그대로 해석을 하면 앱을 얇게(thin)하게 한다는 의미로 해석된다. 얇게 ...?

이에 대한 출처는 WWDC 15에서 확인할 수 있었습니다. 

"App Thinning in Xcode"



# 앱 시닝이란?

앱 시닝이란 

> App Store와 운영 체제는 최소 설치 공간으로 사용자의 특정 디바이스 및 운영 체제 버전의 기능에 맞게 조정하여 iOS, tvOS 및 watchOS 앱 설치를 최적화하는 기술

을 의미합니다. 이를 통해 최소한의 디스크 사용과 빠른 다운로드 속도를 제공할 수 있습니다. 앱 시닝은 슬라이싱(slicing), 비트코드(bitcode), 주문형 리소스(on-demand resource)가 있습니다. 



### 슬라이싱(slicing)이란?

앱이 지원하는 여러 디바이스에 대해 그에 맞는 각각 App variant 번들을 생성하고 제공하는 프로세스입니다. variant에는 타겟 장치 및 운영 체제 버전에 필요한 리소스와 실행이 가능한(해당 버전이나 디바이스에서) 아키텍처를 갖고 있습니다. 개발자가 App store connect에 모든 버전의 앱을 업로드하면, 앱 스토어에서 App이 지원하는 디바이스와 운영 체제 버전을 기반으로 하는 서로 다른 variants를 만들고 제공합니다. asset catalog를 이용해야 이유는 앱스토어가 각 variants에 맞는 이미지, GPU 리소스, 적합한 데이터를 고르기 위해서 입니다. 그리고 사용자가 그 variants 중에서 가장 알맞은 app variant을 다운로드 받는 것입니다. 

<img src="https://help.apple.com/xcode/mac/current/en.lproj/Art/app_thinning_2x.png" alt="img" style="zoom:50%;" />

### 비트코드(bitcode)란?

비트코드는 기계언어로 번역되기 이전 단계의 Intermediate Representation을 말합니다. 짧게 표현하자면 컴파일된 프로그램의 중간 표현입니다. 현재 iOS에서는 비트코드가 default이나 option이고 watchOS와 tvOS의 경우는 비트코드가 필수입니다. 비트코드를 사용하여 업로드를 하면 애플이 애플리케이션을 다시 컴파일하여 앱 바이너리(app binary)를 생성합니다. 비트코드를 사용하지 않으면, 모든 경우의 디바이스 경우에 따라 바이너리로 생성하여 합쳐져서 fat binary라는 것이 업로드되지만, 비트코드를 사용하면 필요 경우에 따라 재컴파일하게 되므로 여기에서 최적화할 수 있습니다.



### 주문형 리소스(on-demand resource)란?

쉽게 말해서, 필요할 때 다운로드 받는다는 것입니다. 앱스토어는 주문형 리소스에 따라 slice하여 앱의 variants를 더욱 최적화시킵니다.  예를 든다면 사용자가 게임을 합니다. 현재 레벨보다 상위레벨은 필요하지 않으므로 갖고 있을 필요가 없습니다. 사용자의 레벨이 필요할 때 다운로드 받는 것입니다. 또한 인앱 구매를 예로 들 수 있습니다. 사용자의 선택에 따라 다운로드를 받는 것입니다.



 <img src="https://help.apple.com/xcode/mac/current/en.lproj/Art/on_demand_resources_2x.png" alt="img" style="zoom:50%;" />



참조

 https://ttuk-ttak.tistory.com/42

https://zeddios.tistory.com/655