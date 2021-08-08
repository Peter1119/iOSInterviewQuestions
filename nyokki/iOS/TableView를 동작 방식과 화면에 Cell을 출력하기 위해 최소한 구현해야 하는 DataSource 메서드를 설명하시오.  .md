## TableView

뷰 컨트롤러는 테이블뷰 데이터소스와 델리게이트를 설정한다. 

테이블뷰 델리게이트 프로토콜에는 필수 구현 메소드는 없으며 테이블뷰 섹션 헤더, 푸터 구성, 셀 삭제 및 재정렬, 테이블 행에서 스와이프 기능 등의 기능을 관리한다. 

테이블뷰 데이터소스 개체는 테이블뷰 데이터소스 프로토콜을 준수하며 다음 두 필수 구현 메소드가 있다.

```swift
func tableView(UITableView, cellForRowAt: IndexPath) -> UITableViewCell
테이블뷰의 특정 위치에 삽입할 셀에 대한 데이터 소스를 요청합니다.
func tableView(UITableView, numberOfRowsInSection: Int) -> Int
테이블뷰의 지정된 섹션에 있는 행 수를 반환하도록 데이터 소스에 지시합니다.
```



동작방식

1. 테이블뷰의 dequeueReusableCell(withIdentifier:for:) 메소드를 호출해서 셀 객체를 검색한다.
2. 셀을 구성한다.
3. 셀을 테이블뷰로 반환한다. 

테이블뷰는 테이블의 각 행에 대해 셀을 만들지 않는다. 



의문점 

갑자기 궁금해서 알아본 view, awakeFromNib 호출 타이밍

**호출 순서.**

**1. loadView view**

**2. DidLoad**

**3. awakeFramNib**

**4. viewWillAppear**

**5. ViewDidAppear**



출처 : https://memohg.tistory.com/58



Prefetch(tableviewdelegate)와 관련된 참고 자료 

10개의 셀을 미리 받아오고 serial로 작업한다

concurrent로 했다가 cpu에 부담이 간다고 하여 수정

https://jinnify.tistory.com/58



