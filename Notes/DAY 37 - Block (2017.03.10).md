# DAY 37 - Block (2017.03.10)

## I. 목적과 특징  

- 블록은 오브젝티브 C 객체이다. 오브젝티브 C의 객체이지만 C문법으로 확장된 객체이다.  
- 이름이 없는 함수라고 일반적으로 칭한다.   
- ^을 literal 문법으로 섯 시작시 사용한다.


void name(NSInteger name, NSInteger name2)  

void (^simpleBlock)(void);

블록의 선언부는 블록의 이름을 그대로 쓴다.  블록은 객체이기 때문에 변수



```objc
[NSTimer timerWithTimeInterval:1 target:self selector:@selector(method:) userInfo:nil repeats:NO];

[NSTimer timerWithTimeInterval:1 repeats:NO block:^(NSTimer * _Nonnull timer)  {
}];
```

