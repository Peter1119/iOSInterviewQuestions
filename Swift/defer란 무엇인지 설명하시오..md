## defer란?

자신이 속해있는 코드블럭의 scope를 빠져나가기 직전에 실행되는 구문이다. 

이때 scope를 빠져나가는 것은 정상 종료 뿐 아니라 에러를 만나 비정상 종료도 포함한다. 어떤 종료를 하던지 스코프를 빠져나가기 직전에 defer문 내부의 코드를 실행하고 종료한다. 



참고

https://jusung.gitbook.io/the-swift-language-guide/language-guide/25-access-control

https://github.com/Sueaty/iOS-Interview-KR/blob/main/Swift/Defer.md