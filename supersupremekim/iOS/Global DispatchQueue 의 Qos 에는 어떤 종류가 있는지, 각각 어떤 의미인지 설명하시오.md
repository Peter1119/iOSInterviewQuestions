# 🍎 Global DispatchQueue 의 Qos 에는 어떤 종류가 있는지, 각각 어떤 의미인지 설명하시오.



1. ### userInteractive

   - main thread 에서 작업. ui 새로고침 또는 애니메이션 수행과 같이 사용자와 상호작용
   - 작업이 신속하게 수행되지 않으면 ui 중단 상태될 수 있음
   - 순식간에 끝난다

2. ### userInitiated

   - 사용자가 시작한 작업, 저장된 문서를 열거나, 사용자 인터페이스에서 무언갈를 클릭할 때 작업 수행처럼 즉각적인 결과 필요할 때
   - 사용자와 상호작용을 위해서는 작업이 필요함
   - 몇 초 그 이하

3. ### default

   - QoS정보 할당되지 않은 작업은 default에서

4. ### utility

   - 데이터 다운로드, import와 같은 즉각적 결과 필요하지 않음
   
5. ### background

   - background에서 작동, 동기화 및 백업 사용자가 볼 수 없는 작업
   - 상당한 시간이 걸림