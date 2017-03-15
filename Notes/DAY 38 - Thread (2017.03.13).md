# DAY 38 - Thread (2017.03.13)

## I. Thread

### 1. 정의 

스레드는 어떠한 프로그램 내에서, 특히 **프로세스 내에서 실행되는 흐르의 단위를 말한다.** 일반적으로 한 프로그램은 하나의 스레드를 가지고 있지만, 프로그램 환경에 따라 둘 이상의 스레드를 동시에 실행할 수 있다. 이러한 실행 방식을 멀티스레드(multithread)라고 한다.  

### 2. iOS Thread

- 모든 app은 기본적으로 main thread를 가지고 있다.  
- **"Use UIKit classes only from your app's main thread"**

### 3. 언제 사용하는가  

- 동시에 작업이 필요한 경우  
 
- Multi Core Process를 사용하기 위해  

- **중요한 작업에 방해를 받지 않기 위해**  
예) UI 같이 중요한 작업은 메인 스레드에서만 사용하여 방해받지 않게 한다.  

- 상태를 계속 감시 해야 할 경우가 필요할 떄 

### 4. Multi Thread 사용 예시

- Network request / response

- Time control  
(백그라운드에서 계속해서 시간을 측정하고 있는 것을 의미함)

- Image download / upload

- Long time actions   
(말 그대로 연산이 많이 필요한 장기적 작업을 뜻함)


### 5. 동기 방식 / 비동기 방식 
- 비동기 (= Asynchronous: 동시에 일어나지 않는)
- 동기 (= synchronous: 동시에 일어나는)  

NSInvoke ?? 


## II. NSThread

### 1. 정의
- main thread 외 다른 스레드를 만드는 클래스
- UI는 절대 추가 thread에서 실행시키면 안 된다.
- Selector로 실행된 Method가 종료 후, 자연스럽게 Thread도 종료 된다.  

### 2. 구현방법  


