## map

Map 함수는 컨테이너 내부의 기존 데이터를 변형하여 새로운 컨테이너를 생성한다.

```swift
let numbers: [Int] = [0, 1, 2, 3, 4]
var doubledNums; [Int] = numbers.map({(number: Int) -> Int in 
                                     return number * 2})
```



## filter

filter함수는 컨테이너 내부의 값을 걸러서 새로운 컨테이너로 추출한다. 

```swift
let numbers: [Int] = [0, 1, 2, 3, 4]
var doubledNums; [Int] = numbers.filter({(number: Int) -> Bool in 
                                     return number % 2 == 0 })
```



## reduce

reduce함수는 컨테이너 내부의 콘텐츠를 하나로 통합합니다.

```swift
let numbers: [Int] = [0, 1, 2, 3, 4]
// 0은 초기값
var doubledNums; [Int] = numbers.reduce(0, {(first: Int, second: Int) -> Int in 
                                     return first + second })
var doubledNums; [Int] = numbers.reduce(0) { $0 + $1 }
```



## flapMap

3가지 기능

1. nil이 아닌 결과들을 가지는 배열을 리턴 -> **compactMap 사용할 것**
2. 주어진 Sequence내의 요소들을 하나의 배열로써 리턴
3. 주어진 Optional이 nil이 아닌지 판단후 unwrapping하여 closure 파라미터로 전달.

```swift
let optionalArray: [Int?] = [1, 2, 3, 4, nil]
// Optinal Array :  [Optional(1), Optional(2), Optional(3), Optional(4), nil]

let flatMappedArray = optionalArray.flatMap { $0 }
// flatMapped Array :  [1, 2, 3, 4]



let nestedArray = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
let flatMappedNestedArray = nestedArray.flatMap { $0 }
// flatMapped Nested Array :  [1, 2, 3, 4, 5, 6, 7, 8, 9]

let optional: Int? = 8
let value = optional.flatMap { $0 > 0 ? $0 : -$0 }
// value :  Optional(8)
```



#### CompactMap

```swift
let optionalArray: [Int?] = [1, 2, 3, 4, nil]
// Optinal Array :  [Optional(1), Optional(2), Optional(3), Optional(4), nil]

/*
 * flatMap() vs compactMap()
 */

let flatMappedArray = optionalArray.flatMap { $0 }
// flatMapped Array :  [1, 2, 3, 4]

let compactMappedArray = optionalArray.compactMap { $0 }
// compactMapped Array :  [1, 2, 3, 4]
```

flatmap의 첫번째 기능과 동일하다.



map과 flatmap의 차이

```swift
func map<U>(_ transform: (Wrapped) throws -> U) rethrows -> U?
func flatMap<U>(_ transform: (Wrapped) throws -> U?) rethrows -> U?
```

Wrapped 과정에서 flatMap은 Optional안에 값이 있다면 추출해서 진행하고 map은 그렇지 않다.

이 차이점 때문에 flatMap은 Optional에서 Chaining이 가능하고 map은 불가능하다.









참고

https://yagom.github.io/swift_basic/contents/22_higher_order_function/

https://zeddios.tistory.com/448

https://ontheswift.tistory.com/22