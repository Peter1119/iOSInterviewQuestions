# 🍎 GCD API 동작 방식과 필요성에 대해 설명하시오



동작 방식 - DispatchQueue.main - main thread queue . 기본적으로 serial queue (직렬 큐)로 동작



DispatchQueue.global - background thread queue 기본적으로 Concurrent Queue(병렬 큐)로 동작

둘다 큐라 큐에 추가된 순서대로 계속 시작됨

QoS를 이용해 우선 순위를 정해줄 수 있음 -> 앱의 에너지 효율이 좋아짐



userInteractive

userInitiated

default

utility

background

unspecified



나만의 큐를 만들 수 도 있음

DispatchQueue(label: "name") attribute .concurrent 지정 안해주면 그냥 Serial Queue가 됨



필요성 - 서버와 데이터 통신할 때 많이 쓰는데, 이 작업을 비동기로 처리하지 않고 동기 방식으로 차례대로 실행시킨다면, 통신 작업이 끝날 때까지 기다려야해서 앱이 멈춘다. 그래서 이러한 작업들을 GCD API를 활용하여 비동기 방식으로 처리한다. 작업 간 순서가 중요할 때 필요하다.

