# 🐥 Optional 이란 무엇인지 설명하시오



### Optional - 스위프트의 특성 중 안전성을 담보해주는 기능. 값이 있을 수도 없을 수도 있음을 나타내는 표현이다. 옵셔널과 옵셔널이 아닌 타입을 철저히 다른 타입으로 인식하기 때문에 컴파일할 때 오류를 걸러낼 수 있다. 예를 들어서 앱이 실행되다가 네트워킹 등 수 많은 경우들에 의해서 값이 아직 들어오지 않은 인스턴스로 다른 작업을 하는 코드를 만나면 앱이 실행 중지된다. 이러한 경우, 옵셔널 바인딩 기능을 사용해서 앱이 실행 중지되는 것을 방지할 수 있다. 추가로 optional은 값이 있는 경우와 없는 경우 nil을 나타내는 enum 타입이어서, switch 문으로 옵셔널 값을 분기하여 데이터를 활용할 수 있다.
