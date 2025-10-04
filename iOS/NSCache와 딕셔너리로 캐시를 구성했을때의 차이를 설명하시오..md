사전지식

캐시란? 

캐시는 애플리케이션의 성능을 크게 향상시킬 수 있는 객체 또는 데이터 모음이다. 
캐시를 사용함으로써 계산 비용이 많이 들 수 있는 일시적인 데이터와 함께 자주 접근하는 객체를 저장할 수 있다. 
캐싱된 객체를 다시 사용하면 해당 값을 다시 계산할 필요가 없기 때문에 성능상의 이점을 얻을 수 있다. 



하지만 대용량 데이터를 캐싱할 때는 다른 애플리케이션을 위한 RAM이 남아 있지 않을 정도로 많은 객체를 캐시할 수 있는데, 이 용량을 확보하기 위해 애플리케이션을 종료할 수 있다. 



iOS에서는 캐싱을 위한 NSCache 객체를 제공하여 생성 비용이 많은 객체를 임시로 저장할 수 있다. 



NSCache를 이용하여 image 등의 다량의 데이터를 효율적으로 처리한다. 



NSCache는 메모리 관리 문제를 해결하면서 캐시할 항목을 위한 저장 컨테이너이다. 

1. NSCache는 메모리 관리가 기본적으로 제공된다. 
   다른 앱에서 메모리를 더 사용하려고 하면 캐시되어 있던 데이터를 지우고 메모리를 해제한다.
2. NSCache는 Thread-safe하다.
   캐시 데이터를 읽고 쓰고 지울때마다 따로 lock을 해줄 필요가 없다.
3. NSDictionary는 Key 값을 copy 하지만 NSCache는 retain 카운트만 증가시킨다.
   복사를 지원하지 않는 객체까지 포용한다. 

????



NSCache클래스와 NSDictionary 클래스는 매우 유사하며 둘 다 key-value 쌍을 보유한다. 

그러나 NSCache는 반응 캐시(Reactive Cache)로, 메모리를 사용할 수 있을 때 주어진 데이터를 적극적으로 캐시하고 만약 메모리가 부족하면 다른 애플리케이션을 위한 메모리를 확보하기 위해 일부 요소를 자동으로 삭제한다. 삭제된 항목은 필요할 경우 다시 계산해야하는 추가적인 컴퓨팅 시간이 걸린다.



NSCache는 캐시된 요소의 갯수를 제한하고 캐시에 있는 모든 요소의 총 Cost를 제한하는 두 가지 유용한 제한 기능을 제공한다. 

```swift
let cache: NSCache<NSString, UIImage> = NSCache()
cache.countLimit = // 허용하는 key의 개수
cache.totalCostLimit = // cost 합계의 최댓값
```



NSDictionary에 비해 NSCache가 지닌 장점은 시스템 메모리가 꽉차면 자동으로 캐시의 메모리가 정리된다는 것

NSCache는 최근에 가장 적게 사용된 객체를 먼저 정리해준다. 

NSCache는 키를 복사하지 않고 리테인한다. 

NSDictionary는 스레드에 안전하지 않고 NSCache는 스레드에 안전하다. 





참고

https://gaki2745.github.io/swift/2019/10/10/Swift-Basic-08/

https://junyng.tistory.com/41

NSCachefh image cache 구현 : https://ontheswift.tistory.com/24

딕셔너리 캐싱 : https://aroundck.tistory.com/4717

