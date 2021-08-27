## Safe Area

safe area 전에는 top/bottom layout guide가 존재했다.

하지만 아이폰의 변화(노치)에 따라 left/right의 마진이 필요했으며 이로 인해 Safe Area가 생겨났다. 



ViewController 생성시에 Default로 Safe Area가 설정되어 있다. 



SafeArea를 사용하지 않고 싶다면 Constraints의 기준을 Safe Area에서 Superview로 바꿔주면되고 

아예 사용하고 싶지 않다면 Use Safe Area Layout Guides의 체크를 꺼주면 된다.



참고

https://babbab2.tistory.com/134?category=932180