# DAY 24 - Application Life Cycle (2017.02.13)

## 1. Main Function
```objc
int main(int argc, char * argv[]){
	
	@autoreleasepool  {
		
		return UIApplicationMain(argc, argv, nil,
								NSStringFromClass([AppDelegate class]));
	
	}

}
```

> 모든 C게열 언어에서 시작 지점은 main function으로 불러오는 방법 또한 비슷하다. 다만, iOS 프로그래밍에서는 main function을 별도로 입력할 필요 없고, 위와 같이 주어진다. 

## 2. Structure & Main Run Loop of an App
![Structure of an App](https://developer.apple.com/library/content/documentation/iPhone/Conceptual/iPhoneOSProgrammingGuide/Art/core_objects_2x.png)

> 시작과 동시에 UIApplicationMain function은 app 구동에 필요한 여러 가지 작업을 처리한다.  

![Main Run Loop](http://res.cloudinary.com/eightcruz/image/upload/v1477382200/lgb7a2k7q9z2jy9buuqg.png)

> 터치를 받으면 OS를 통하여 지정된 포트로 데이터가 전송된다. 
main run loop는 일종의 thread로 데이터의 처리 순서 등을 결정한다.  

## 3. Event에 대한 처리 
 

touch -> view가 처리 

background에 있는데 계속해서 메모리를 많이 차지하면 suspended 처리될 수 있음 
예) 게임을 하다가 다른걸 하고 몇 분 후에 게임으로 돌아가면 게임을 처음부터 시작해야 되는 현상  

![execution state](https://developer.apple.com/library/content/documentation/iPhone/Conceptual/iPhoneOSProgrammingGuide/Art/high_level_flow_2x.png)

## Call to the methods of your app delegate object

```objc
application:willFinishLaunchingWithOptions:
// 어플리케이션이 최초 실행될 떄 호출되는 메소드  

application:didFinishLaunchingWithOptions:
// 어플리케이션 실행된 직후 사용자의 화면에 보여지기 직전에 호출  

applicationDidBecomeActive:
// 어플리케이션이 active상태로 전환된 직후 호출

applicationWillResignActive:
// 어플리케이션이 inactive상태로 전환되기 직전 호출

applicationDidEnterBackground:
// 어플리케이션 백그라운드 상태로 전환된 직후 모습 

applicationWillEnterForeground:
// 어플리케이션이 active 상태가 되기 직전에, 화면에 보여지기 직전의 시점에 호출

applicationWillTerminate:
// 어플리케이션이 종료되기 직전에 호출
```

## Steps of Interruptions

## Steps Entering Background (생명 주기 매소드)

- Audio and AirPlay (음악)

- Location updates (위치 정보)

- Voice over IP (인터넷을 이용하는 음성통화)

- Newsstand downloads (뉴스 스탠드 다운로드)

- External accessory communication (기타 하드웨어 악세사리)  
=> 핸드폰에 장착시켜 사용하는 카드리더기 등

- Bluetooth LE accessories (블루투스 악세사리 사용)

- Background fetch (네트워크를 통한 일반적인 다운로드나 미완료된 작업)  
=> 일반적으로 무조건 미완료된 파일을 계속해서 진행해서 받는 것은 아니고 10-20초 사이에 완성될 수 있는 파일은 다운받는 것이라고 한다. 다만, 이것을 계속 초기화하여 연장하는 편법 등도 있다.  

- Remote notifications (PushNotification)


appdelegate UIVIewController 델리게이트와 메소드 재정의

viewWllAppear등에서 너무 많은 데이터를 로드하려 하면 안 됨.  


한 객체는 다른 객체를 소유하는 경우가 다수임
view가 viewcontroller 에 메세지 전달 수단 필요
UIApplication 
하위 계층의 아이가 상위 계층의 아이에게 메세지를 전달하는 수단
하위 계층의 아이는 프로토콜에 있는 메소드를          
