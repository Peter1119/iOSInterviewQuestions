## Intrinsic Size

컨텐츠의 본질적인 크기

Auto Layout은 기본적으로 뷰의 위치와 크기를 모두 정의하도록 Constraint를 구성해야 한다. 하지만 특정 뷰에서는 Content에 따라 고유한 크기를 갖는다. 따라서 이 경우에는 크기를 지정하지 않아도 오류 없이 뷰가 구성이 된다. 

뷰마다 지원하는 Intrinsic content Size가 차이가 있다. 

|                                              | **Intrinsic Contet Size Height** | **Intrinsic Contet Size Height** |
| :------------------------------------------: | :------------------------------: | :------------------------------: |
|                  **UIView**                  |                X                 |                X                 |
|                 **UISlider**                 |                O                 |                X                 |
| **UILabel, UIButton, UISwitch, UITextField** |                O                 |                O                 |
|           **TextView, ImageView**            |      Content에 따라 변화함       |                                  |





참고

https://babbab2.tistory.com/135

https://velog.io/@wonhee010/Intrinsic-Content-Size

https://developer.apple.com/documentation/uikit/uiview/1622600-intrinsiccontentsize

https://developer.apple.com/library/archive/documentation/UserExperience/Conceptual/AutolayoutPG/AnatomyofaConstraint.html#//apple_ref/doc/uid/TP40010853-CH9-SW21