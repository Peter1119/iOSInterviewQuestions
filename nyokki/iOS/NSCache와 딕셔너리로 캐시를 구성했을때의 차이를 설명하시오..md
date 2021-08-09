1. NSCache는 메모리 관리가 기본적으로 제공된다. 
   다른 앱에서 메모리를 더 사용하려고 하면 캐시되어 있던 데이터를 지우고 메모리를 해제한다.
2. NSCache는 Thread-safe하다.
   캐시 데이터를 읽고 쓰고 지울때마다 따로 lock을 해줄 필요가 없다.
3. NSDictionary는 Key 값을 copy 하지만 NSCache는 retain 카운트만 증가시킨다.
   복사를 지원하지 않는 객체까지 포용한다. 

????



