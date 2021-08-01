GCD 필요성 

멀티 코어 프로세서 시스템에 대한 응용 프로그램 지원을 최적화하기 위해 Apple에서 개발한 기술로 스레드 관리와 실행에 대한 책임을 어플리케이션 레벨에서 운영체제 레벨로 넘겨버렸다. 

작업 단위는 Block(swift에선 클로서)이라 불리며 DispatchQueue가 이 Block들을 관리합니다. 

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



### Main & Global

+ Main 

  + UI와 관련된 작업은 모두 main queue를 통해서 수행하며 Serial Queue에 해당된다.

  + MainQueue를 sync메소드로 동작시키면 Dead Lock 상태에 빠진다. async 사용 

    ```swift
    DispatchQueue.main.async{ }
    ```

+ Global

  + UI를 제외한 작업에서 사용하며 Concurrent Queue에 해당

  + sync와 async 메소드 모두 사용 가능하다.

  + QoS클래스를 지정하여 우선순위 설정이 가능하다.

    ```swift
    DispatchQueue.global().async{ }
    DispatchQueue.global(qos: .utility).async{ }
    ```

### QoS(Quality of Service)

시스템은 QoS 정보를 통해 스케쥴링, CPU 및 I/O 처리량, 타이머 대기 시간 등의 우선 순위를 조정
총 6개의 QoS 클래스가 있으며 4개의 주요 유형와 다른 2 개의 특수 유형으로 구분 가능
[낮은순] unspecified -> background -> utility -> default -> userInitiated -> userInteractive [높은순]



참고 

https://jinshine.github.io/2018/07/09/iOS/GCD(Grand%20Central%20Dispatch)/ 