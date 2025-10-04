GCD 필요성 

멀티 코어 프로세서 시스템에 대한 응용 프로그램 지원을 최적화하기 위해 Apple에서 개발한 기술로 스레드 관리와 실행에 대한 책임을 어플리케이션 레벨에서 운영체제 레벨로 넘겨버렸다. 

작업 단위는 Block(swift에선 클로저)이라 불리며 DispatchQueue가 이 Block들을 관리합니다. 

애플에서는 쓰래드 클래스 대신 GCD 사용을 권장하고 있다. 

##### GCD 의 장점

- reduces the memory penalty for storing thread stacks in the app’s memory space.
  앱의 저장 공간에 스레드 스택을 저장하기 위한 메모리 패널티를 줄여준다.
- eliminates the code needed to create and configure your threads.
  스레드를 만들고 구성하는데 필요한 코드를 제거해준다.
- eliminates the code needed to manage and schedule work on threads.
  스레드에서 작업을 관리하고 스케쥴링하는데 필요한 코드를 제거한다.
- simplifies the code
  코드가 간소화된다. 



GCD API 동작 방식 : https://developer.apple.com/documentation/dispatch

## DispatchQueue

- GCD는 앱이 블록 객체 형태로 작업을 전송할 수 있는 FIFO 대기열(Queue)을 제공하고 관리한다.
- Queue에 전달된 작업은 시스템이 전적으로 관리하는 스레드 풀(a pool of threads)에서 실행된다.
- DispatchQueue는 2개의 타입( Serial / Concurrent )으로 구분되며 둘 모두 FIFO 순서로 처리한다.
- 앱을 실행하면 시스템이 자동으로 메인스레드 위에서 동작하는 Main 큐(Serial Queue)를 만들어서 작업을 수행하고, 그 외에 추가적으로 여러 개의 Global 큐(Cuncurrent Queue)를 만들어서 큐를 관리한다.
- 각 작업은 동기(sync) 방식과 비동기(async) 방식으로 실행 가능하지만 Main 큐에서는 async 만 사용 가능

### Serial / Concurrent

Serial Queue: 하나의 다른 쓰레드만 생성하여 작업들을 해당 쓰레드로만 보내는 큐. 순서가 중요한 작업을 수행할 때 사용

Concurrent Queue: 여러 개의 쓰레드를 생성하여 각각에 맞는 쓰레드에 작업을 보내는 큐.



### Main & Global

+ Main 

  + UI와 관련된 작업은 모두 main queue를 통해서 수행하며 Serial Queue에 해당된다.

  + main쓰레드를 의미하며 메인쓰레드는 메인큐와 같다.

  + MainQueue를 sync메소드로 동작시키면 Dead Lock 상태에 빠진다. async 사용해야 한다. 

    ```swift
    DispatchQueue.main.async{ }
    ```

  필요한 이유는?

+ Global

  + UI를 제외한 작업에서 사용하며 Concurrent Queue에 해당 -> 여러 개의 쓰레드를 사용한다. 

  + sync와 async 메소드 모두 사용 가능하다.

  + QoS(서비스의 품질)에 따라서 종류가 여러 개(6종류)이다. 

  + QoS클래스를 지정하여 우선순위 설정이 가능하다.
  
  + QoS가 높을 수록 많은 숫자의 쓰레드를 사용하게 된다. -> 작업 속도가 올라감(하지만 절대적으로 먼저 끝난다는 것은 아님, 작업에 따라 다름)
  
    ```swift
    DispatchQueue.global().async{ }
    DispatchQueue.global(qos: .utility).async{ }
    ```
  
+ Custom(프라이빗 큐)

  + 기본적으로 직렬 큐이다. 하지만 Concurrent 설정도 가능하다. 

  ```swift
  DispatchQueue(label: "customeSerial")
  DispatchQueue(label: "someQueue", attributes: .concurrent)
  ```

  

### QoS(Quality of Service)

시스템은 QoS 정보를 통해 스케쥴링, CPU 및 I/O 처리량, 타이머 대기 시간 등의 우선 순위를 조정
총 6개의 QoS 클래스가 있으며 4개의 주요 유형와 다른 2 개의 특수 유형으로 구분 가능
[낮은순] unspecified -> background -> utility -> default -> userInitiated -> userInteractive [높은순]



참고 

https://jinshine.github.io/2018/07/09/iOS/GCD(Grand%20Central%20Dispatch)/ 