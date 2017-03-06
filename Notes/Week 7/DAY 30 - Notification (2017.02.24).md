# DAY 30 - Notification (2017.02.24)

## I. NSNotificationCenter

- 특정 이벤트가 발생하였음을 알리기 위해 불특정 다수의 객체에게 알리기 위해 사용하는 클래스  


특정 시점에 notify 함 => post 라고 함  
받은 객체는 notification message를 받았음을 알리

add Observer : 객체를 observer로 등록
Posting : 등록 객체  

posting이나 observing 둘 다 순서와 상관없음  

NSNotificationCenter 헤더 파일 보기 !

name = 키값
object = 필터역할  
BUT 굳이 필요없으므로 nil 입력.  

Post Notification  

userInfo 딕셔너리 값을 입력하면 됨.  

최대한 한 번만 불리도록 노력해야 된다.  ViewDidLoad에 만들지 않으면 계속 돌아간다.  

remove observer를 자주 할 필요는 없지만 한번씩 해야 된다.  


```objc
* Initializing
+ (NotificationCenter *)defaultCenter;

* Add Observer
- (void) addObserver:(id)observer selector:(SEL)aSelector
				name: (NSString *)aName object:(id)anObject;

* Post NOtification  
- (void)addObserver:{id}

