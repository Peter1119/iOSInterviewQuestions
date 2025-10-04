델리게이트의 사전적 정의는 위임(자)이며

Protocol을 이용해서 권한을 위임하고 일을 처리하는 방식의 디자인 패턴이다. 



가장 대표적으로는 테이블뷰, 테이블뷰 데이터소스의 델리게이트를 활용하는 것이 대표적이다. 



```swift
struct Cookie {
    var size : Int = 5
    var hasAChocolateChips : Bool = true
}

class Bakery {
    var delegate : BakeryDelegate?
    
    func makeCookie() {
        var cookie = Cookie()
        cookie.size = 10
        cookie.hasAChocolateChips = false
        
        delegate?.cookieWasBaked(cookie)
    }
}

protocol BakeryDelegate {
    func cookieWasBaked(_ cookie : Cookie)
}

class BakeryShop : BakeryDelegate {
    func cookieWasBaked(_ cookie: Cookie) {
        print("쿠키가 나왔습니다. 쿠키의 크기는 \(cookie.size)입니다.")
    }
}

let shop = BakeryShop()
let bakery = Bakery()

bakery.delegate = shop

bakery.makeCookie()

```

