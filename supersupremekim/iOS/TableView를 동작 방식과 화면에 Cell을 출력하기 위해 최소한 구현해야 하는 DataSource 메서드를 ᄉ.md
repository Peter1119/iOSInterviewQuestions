# 🍎 TableView를 동작 방식과 화면에 Cell을 출력하기 위해 최소한 구현해야 하는 DataSource 메서드를 설명하시오



### row의 갯수를 리턴하는 tableview numberOfRowInSection 메소드와, UITableviewcell을 리턴하는 tableview cellForRowAt 메소드가 필수 메소드이다.

### 두번째 cellForRowAt 메소드는 tableview 화면에 보여질 각 셀을 만들 때마다 호출되는데, tableview의 identifier에 맞는 reusable cell을 deque시켜서 cell을 구성하고 해당 cell을 리턴해주는 방식으로 진행된다.