참고 

https://icksw.tistory.com/256

https://hiddenviewer.tistory.com/253

https://corykim0829.github.io/swift/Understanding-Swift-Performance/#



다이나믹 디스패치 

간접 호출/접근 횟수마다 일정량의 런타임 오버헤드 비용을 증가시킨다. 



override가 필요없는 속성 선언에는 final키워드를 사용하며 이렇게 하면 컴파일러가 디스패치의 간접호출/접건을 생략할 수 있다. 



Private 키워드는 현재 파일에서만 선언이 노출되도록 제한을 하는데 이는 컴파일러가 간접 호출들을 제거한다. 

