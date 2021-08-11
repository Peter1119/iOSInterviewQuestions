### prepareorReuse가 존재하는 이유 

테이블뷰에서 성능을 위해 테이블뷰 셀을 reuse한다. 

사라지는 셀을 큐로 들어가고 하단 셀을 보여주기 위해 dequeue하여 reuse하는데 

이때 재사용되는 셀의 경우 초기화를 하거나 수정을 하지 않으면 재사용되기 전의 셀의 상태나 레이아웃 등이 그대로 남아있다.

그래서 이를 수정하기 위한 메소드이다. 

```swift
override func prepareForReuse() {
    super.prepareForReuse()
  //이 내부 안에 해당 셀 클래스 파일에 연결된 아울렛 변수들의 값을 모두 nil 및 초기값으로 초기화를 한다. 
  //이때 text가 있다면 이를 초기화하는 것뿐만 아니라 constraints등도 cellForRowAt에서 재설정해야 한다. 
}
```

이때 필요하다면 setNeedsLayout() 혹은 layoutIfNeeded() 메소드를 호출하여 보완하는 것이 좋다.



참고

https://g-y-e-o-m.tistory.com/134

