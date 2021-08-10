참고: https://velog.io/@zeke/difference-between-setNeedsLayoutsetNeedsDisplay

참고 진짜: https://zeddios.tistory.com/359



사전 지식

#### main run loop

(참고 자료:

 https://developer.apple.com/library/archive/documentation/Cocoa/Conceptual/Multithreading/RunLoopManagement/RunLoopManagement.html,

https://babbab2.tistory.com/68)

기기에서 앱 아이콘을 터치하게 되면 @main을 찾아 UIApplication, AppDelegate, SceneDelegate 객체를 생성한다. 그리고 main run loop가 실행된다. main run loop는 터치이벤트, 위치의 변화, 디바이스의 회전 등의 각종 이벤트들을 처리하게 된다. 이러한 처리 과정은 각 이벤트들에 알맞는 핸들러를 찾아 그들에게 처리 권한을 위임하며 진행된다. 

이렇게발생한 이벤트들을 모두 처리하고 권한이 다시 main run loop로 돌아오는 시점을 update cycle이라고 한다. 

![img](https://media.vlpt.us/images/zeke/post/8fec2313-8bb2-46a0-9e1e-7771629d3870/9936863F5ACA0D5C06.png)

main run loop에서 이벤트가 처리되는 과정에서 크기나 위치가 이동하는 애니메이션과 같은 layout이나 position값을 바꾸는 핸들러가 실행될 때가 있는데, 이러한 변화는 즉각적으로 반영되는 것이 아니다. 

시스템은 이런 변화하는 view를 체크하고 모든 핸들러가 종료된 후에 main run loop로 권한이 돌아오는 update cycle 시점에 view들의 값을 바꿔주어 position이나 layout의 변화를 적용시킨다. 

<img src="https://media.vlpt.us/images/zeke/post/2317e4ed-6e53-4fe1-990e-03d72bc7813a/R1280x0-3.png" alt="post-thumbnail" style="zoom: 67%;" />

Q. layout과 draw의 차이는? 

A. 

+ Layout : 뷰의 크기와 위치
+ draw : 뷰의 CGrect을 그리는 것

참고자료 : https://itpeace.tistory.com/44



### setNeedsLayout

setNeedsLayout()은 UIView의 인스턴스 메소드이다. 

##### 정의: receiver(수신자)의 현재 레이아웃을 무효화하고, 다음 업데이트 주기 동안 레이아웃 업데이트를 트리거한다. 



이 메소드는 즉각적인 업데이트를 강제하지 않지만, 다음 업데이트 주기를 기다리기 때문에 View를 업데이트하기 전에 여러 View의 레이아웃을 무효화하는데 사용할 수 있다. 이와 같은 행위로 모든 레이아웃 업데이트를 하나의 업데이트 주기에 통합할 수 있고 한번에 처리할 수 있기 때문에 일반적으로 성능향상에 도움이 된다. 



setNeedsLayout()을 호출하면 내부적으로 layoutSubView()를 호출해서 다음 업데이트 주기 때 모든 레이아웃을 업데이트 해준다. 

layoutSubView()는 하위 View의 크기와 위치를 결정하기 위해 설정한 constraints를 사용한다. 



### setNeedsDisplay

이 메소드는 다음 드로잉 사이클동안 View를 업데이트해야 함을 시스템에 알린다. View를 업데이트하기 위해 다음 드로잉 사이클때 까지 기다리기 때문에 여러 View에서 이 메소드를 호출하여 동시에 업데이트할 수 있다. View의 내용이 변경되면 해당 변경사항을 직접 다시 그리지 않고 대신 setNeedsDisplay메소드를 사용하여 View를 무효화한다. 그리고 시스템은 드로잉 작업을 하기 전에 현재 실행루프가 끝날 때까지 대기한다. 



이때 View를 업데이트하는 것은(그리는 것) draw메소드를 통해서 View업데이트를 한다. 

draw메소드는 재정의 할 필요가 없고 직접 호출하면 안되며 setNeedsDisplay()메소드를 호출해야 한다. 



