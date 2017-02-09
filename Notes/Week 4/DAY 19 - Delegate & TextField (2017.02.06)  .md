# DAY 19 - Delegate & TextField (2017.02.06)  

## I. Delegate  

### 1. Protocol  
= 복수의 컴퓨터 사이나 중앙 컴퓨터와 단말기 사이에서 데이터 통신을 원활하게 하기 위해 필요한 통신 규약, 신호 송신의 순서, 데이터의 표현법, 오류검출법 등을 정함.  

객체 지향 프로그래밍인 Objective C에서는 두 클래스 간의 약속이라고 생각하면 된다.  

**주의할 점!**  
- Protocol = Delegate라고 할 수는 없다.  
- Delegate 패턴 방식의 Protocol을 사용한다고 봐야 된다.  

### 2. Delegate 선언  
**CustomCLass.h 파일**  

```objc  
@protocol CustomClassDelegate;
@interface CustomClass : SuperObject

@property (nonatomic, weak) id <CustomClassDelegate> delegate;

@end


@protocol CustomClassDelegate <NSObject>

- (void)customClassMethod:(CustomClass *)

@end
```

**CustomClass.m**

```objc
@implementation CustomClass  

- (void)actionBtn:(UIButton *)sender
{
	[self.delegate customClassMethod:self]
}
```


## II. UITextField
= 사용자 텍스트 입력을 위한 UI Component  

@optional : 

UIResponder touch begin, add, 
first responder 
becomeFirstResponder
resignFirstResponder  