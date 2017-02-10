# DAY 23 - Property (2017.02.10)

subStringWithRange

## I. Property 기초지식

### 1. 접근자 (getter / setter)
#### getter: 인스턴스 변수의 값을 가져오는 메소드  

- getter메소드 명은 인스턴스 변수명과 같이 짓는다.  
- 인스턴스 변수 _name // 메소드 - (NSString *)name

#### setter: 인스턴스 변수의 값을 변결할 때 사용하는 메소드   

- setter 메소드 명은 인스턴스 변수명 앞에 set키워드를 붙인다. 
- 인스턴스 변수 _name // 메소드 -(void)setName:(NSString *)name

### 2. 접근자 예시  
#### Header
```objc
@interface NewClass : NSObject

-(NSString *)name;
-(void)setName:(NSString *)name;

@end
```

#### .m 구현
```objc
@implementation Person
{
	NSString *_name; 
}

-(NSString *)name {
	return _name;
}

-(void)setName:(NSString *)name
{
	_name = name;
}

@end
``` 

이처럼 수많은 메소드가 필요하지만 이를 간편하게 하기 위해 객체 지향 프로그램에서는 자동 접근자 메소드(Accessor Method)를 생성했다. 이러한 자동 접근자 메소드 역할을 하는 것이 프로퍼티이다.  

**즉, @property (NSString *)name**   
안에는 변수, setter, getter가 각각 하나씩 들어가 있는 것이다.  

### 3. Property 속성 

분 류 | 옵 션 | 설 명|
|:--:|:--:|:--:|
이름 재정의 | getter=newName<br>setter=newName | getter method 이름을 재지정<br>setter method 이름을 재지정
Acess 권한 | readonly<br>readwrite | 읽기 전용<br>읽기/쓰기 겸용 
쓰레드 처리 | atomic<br>nonatomic | 멀티쓰레드 시 method lock<br>non atomic
할당 방식 | retain<br>unsafe_retained<br>strong<br>weak<br>assign<br>copy | 객체를 retain해서 할당<br>조수만 할당<br>ARC에서의 오너쉽 객체(retain과 비슷)<br>ARC에서 unsafe_unretained과 유사<br>값할당<br>객체를 복사해서 할당  
null 관리 | nullable<br>nonnull<br>null_unspecified<br>nullresettable | null 유무에 따른 관리  

**cf. 보충설명**  
컴퓨터는 동시에 일을 처리하지 못하여 스레드라는 것을 만든다. 그리고 동시에 실행될 필요가 있는 프로세스들을 각각 다른 스레드에 배정하여 CPU는 이를 매우 빠른 속도로 왔다갔다하면서 처리한다.  

- atomic : 기본값이다. 이 메소드가 처리될 때에는 다른 스레드에서 메소드가 들어오는 것을 막는다. 하지만 과부하가 걸릴 수 있다.  
- nonatomic : 다른 스레드에서 메소드가 들어오는 막지 않아 충돌현상이 날 수 있다. 이러한 충돌현상을 교착상태(deadlock)이라고 한다.    

- copy : 주소를 할당하는 것이 아니라 실질적으로 복사를 하여 객체를 생성한다. copy의 경우에는 copyWithZone이라는 메소드가 내제되어 있다.  
- assign : 값 타입에서 사용한다.  

- null관리 : null 이라는 개념은 Objective-C에서 존재하지 않았고 Swift에서만 존재했다. 하지만 Swift와 Objective-C를 혼용 가능하게 하기 위해서 Objective-C에도 이러한 개념을 도입하였다.    

## II. ARC (Auto Reference Count)

### 1. 메모리 관리 방식 
- 명시적 해제: 모든 것을 개발자가 관리함  
- 가비지 콜렉터: 가비지 콜렋터가 수시로 확인해서 안 쓰는 객체를 해제시킴  
예) JAVA  
가비지 콜렉터가 계속해서 작동하고 수시로 확인해야 되기 때문에 시스템에 부담이 크다.  
- 레퍼런스 카운트  : 오너쉽 정책에 의해 객체의 해제를 정의한다.  

### 2. 레퍼런스 카운팅 
```objc
NSString *str1 = [[NSString alloc] init];
NSString *str2 = [[NSString alloc] init];
NSString *str3 = [[NSString alloc] init];
str2 = [[NSString alloc] init];

[str1 release];
[str2 release];
[str3 release];
```

![ARC](https://github.com/projectlife724/i.wonsuk.choi/blob/master/Notes/Images/DAY%2022/ARC.png?raw=true)

> 위처럼 했을 경우, 새로운 str2객체는 원래 srt2 주소값에 연결되어 기존에 있는 str2객체는 프로그램이 종료되기 전까지는 계속 메모리에 남게 된다. 이러한 현상을 메모리 누수(memory leak) 또는 좀비라고 표현한다.  


### 3. ARC 규칙
> 위와 같은 메모리 문제가 계속해서 발생하여 애플에서는 조치를 취하는데....

![애플 ARC 발표](https://github.com/projectlife724/i.wonsuk.choi/blob/master/Notes/Images/DAY%2022/WWDC%202011%20ARC.png?raw=true)

- retain, release, retainCount, autorelease, dealloc을 직접 호출 할 수 없다.
- 구조체 내의 객체 포인터를 사용할 수 없다.  
- id나 void *type을 직접 형변환시킬 수 없다.
- NSAutoreleasePool 객체를 사용할 수 없다.

### 4. 새로운 지시어  
- strong
- weak 

![strong 순환구조](https://github.com/projectlife724/i.wonsuk.choi/blob/master/Notes/Images/DAY%2022/순환%20참조.png?raw=true)

> 여러 개의 객체들이 서로 참조하는 순환참조 시스템일 경우, 위 그림처럼 객체2가 새로운 객체인 객체1을 참조할 하면 count가 1오른다. 그리하여 객체1이 해제된다고 하더라도 객체 2는 count가 1줄어들지만 완전히 소멸되지 않아 프로그램이 종료될 때까지 메모리에 존재하게 된다.   

![weak 순환구조](https://github.com/projectlife724/i.wonsuk.choi/blob/master/Notes/Images/DAY%2022/순환%20참조%20weak.png?raw=true)  

> 객체 5를 weak로 설정할 경우에는 객체 1이 해제 되고 count가 하나씩 감소하면서 모두 소멸된다.  



 
 
