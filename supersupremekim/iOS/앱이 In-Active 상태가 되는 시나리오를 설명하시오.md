# 🍎 앱이 In-Active 상태가 되는 시나리오를 설명하시오.



### In-Active 상태

- ###### 앱이 Foreground 상태이지만 이벤트를 받지 못하는 상태

- ###### 다른 상태로 넘어가기 전에 앱은 반드시 이 상태를 거침



1. ### App Switcher로 전환될 때

2. ### 다른 앱 push 알림으로 이벤트 수신하지 못할 때





앱 실행 - not running -> Inactive -> Active

To background - Active -> Inactive -> Background (- suspended)

To Foreground - Background -> Inactive -> Active

앱 종료 - Background -> not running
