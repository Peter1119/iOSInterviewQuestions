# 🍎 setNeedsLayout와 setNeedsDisplay의 차이에 대해 설명하시오



### 뷰의 실제 컨텐츠가 변경될 때 뷰를 다시 그려야함을 시스템에 알리는 것. 두가지의 메소드를 호출하여 이 작업을 수행



### setNeedsDisplay의 목표는 수정된 뷰가 있어서 draw메소드를 다음 드로우 주기에 호출하는 건데, 개발자가 직접 이 메소드를 호출하면 안돼서 setNeedsDisplay()를 통해서 시스템에서 자동으로 draw메소드를 다음 드로우 주기에 호출하게 하는 것. 

### 컨텐츠를 그리는 메소드이다.



### setNeedsLayout의 목표는 layoutSubView를 호출해서 뷰의 레이아웃을 업데이트 하는 것이다. 하지만 개발자가 직접 호출할 수 없음. 대신 setNeedsLayout호출하면 다음 setNeedsLayout()내부적으로 layoutSubViews()호출해서 다음 업데이트 주기 때 모든 레이아웃 업데이트. 비동기 액티비티다. 하지만 즉시 업데이트하려면 layoutIfNeeded()를 호출한다.  view의 크기나 autolayout 값 변경할 때 쓰이는 메소드이다.



대부분의 기본 유아이들은 해당 사항이 변경될 때마다 자동으로 두 메소드가 호출되지만, 커스텀으로 만든 uiview클래스 안에서는 명시적으로 호출되어야 업데이트 된다
