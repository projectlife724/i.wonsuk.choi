# DAY 15 - REVIEW & Switch문

## I. 아직 부족한 부분  
### 1. 초기화 메소드

**예제) 초기화 메소드 사용하기**

```objc
- (instancetype)initWithName:(NSString *)name;
{
    self = [super init];
    if (self)
        self.name = name;
    
    return self;
```

### 2. if함수 (including BOOL type)

**예제) 기입된 날짜가 생일인지 확인하는 메소드** 

```objc
- (bool)whenIsBirthDay:(NSString *)birthDay;
{
    NSString *currentDate = @"2017.01.31";
    
    NSArray *tempList = [currentDate componentsSeparatedByString: @"."];
    NSUInteger year = [[tempList objectAtIndex:0] integerValue];
    NSUInteger month = [[tempList objectAtIndex:1] integerValue];
    NSUInteger day = [[tempList objectAtIndex:2] integerValue];
    
    NSUInteger myYear = [self.birthDay integerValue];
    NSUInteger myMonth = [self.birthDay integerValue];
    NSUInteger myDay = [self.birthDay integerValue];
    
    if (year == myYear && month == myMonth && day == myDay)
    {
        NSLog(@"오늘은 당신의 생일이 맞습니다.");
        return YES;
    }
    else
    {
        NSLog(@"오늘은 당신의 생일이 아닙니다");
        return NO;
    }
}
```

기 호 | 예 제 | 설 명  
|:--:|:--:|:--:| 
== | A == B | A와 B가 같다.
>= | A >= B | A가 B크거나 같다. 
<= | A <= B | A가 B보다 작거나 같다.
> | A > B | A가 B보다 크다. 
< | A < B | A가 B보다 작다.  


## II. Switch문 

```objc
switch (상태값) {
	case 상태값1:
			//해당 상태값일 때 실행될 내용 
		break;
	case 상태값2:
			//해당 상태값일 때 실행될 내용
		break;
	default:
			//해당되는 상태값이 없을 때 실행될 내용  
	}
```

상태값: 항상 Integer라고 생각하면 된다. 물론 항상 그런 것은 아니지만 일단 항상 그런걸로 이해하고 진행하자!


**예제) 달을 입력했을 때, 달의 마지막 날을 반환하는 메소드**  

```objc
@implementation Calendar

- (NSUInteger) lastDayOfMonth:(NSUInteger)month
{
    NSUInteger evenMonth = 30;
    NSUInteger oddMonth = 31;
    
    switch (month) {
        case 1:
            NSLog(@"%lu월의 마지막 날은 %lu일입니다.", month, oddMonth);
            break;
        case 2:
            NSLog(@"%lu월의 마지막 날은 %lu일입니다.", month, evenMonth);
            break;
        case 3:
            NSLog(@"%lu월의 마지막 날은 %lu일입니다.", month, oddMonth);
            break;
        case 4:
            NSLog(@"%lu월의 마지막 날은 %lu일입니다.", month, evenMonth);
            break;
        case 5:
            NSLog(@"%lu월의 마지막 날은 %lu일입니다.", month, oddMonth);
            break;
        case 6:
            NSLog(@"%lu월의 마지막 날은 %lu일입니다.", month, evenMonth);
            break;
        case 7:
            NSLog(@"%lu월의 마지막 날은 %lu일입니다.", month, oddMonth);
            break;
        case 8:
            NSLog(@"%lu월의 마지막 날은 %lu일입니다.", month, oddMonth);
            break;
        case 9:
            NSLog(@"%lu월의 마지막 날은 %lu일입니다.", month, oddMonth);
            break;
        case 10:
            NSLog(@"%lu월의 마지막 날은 %lu일입니다.", month, evenMonth);
            break;
        case 11:
            NSLog(@"%lu월의 마지막 날은 %lu일입니다.", month, oddMonth);
            break;
        case 12:
            NSLog(@"%lu월의 마지막 날은 %lu일입니다.", month, evenMonth);
            break;
            
        default:
            break;
    }return oddMonth||evenMonth;
```

### switch문 VS if문  
switch: 지정값으로 이동, 범위를 지정할 수 없음.    
if: 범위에 해당하는 값으로 이동  

