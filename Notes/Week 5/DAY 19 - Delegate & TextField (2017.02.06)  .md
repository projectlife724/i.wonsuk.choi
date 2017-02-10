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

### 3. Delegate 구현
**UsingClass.h**

```objc
@interface UsingClass : SuperObject
<CustomClassDelegate>

@property (nonatomic, weak) CustomClass customView;

@end
```

**UsingClass.m**

```objc
@implementation CustomClass

-(void)actionBtn:(UIButton *)sender
{
	[self.delegate customClassMethod:self];
}
```

## II. UITextField
### 1. 정의
= 사용자 텍스트 입력을 위한 UI Component  

### 2. 주요 항목 
```objc
@property(nonatomic, copy) NSString *text;
@property(nonatomic, strong) UIFont *font;
@property(nonatomic, strong) UIColor *textColor;
@property(nonatomic) NSTextAlignment textAlignment;
@property(nonatomic) UITextBorderStyle borderStyle;
@property(nonatomic, copy) NSString *placeholder;
@property(nonatomic, strong) UIImage *background;
@property(nonatomic, weak) id<UITextFieldDelegate> delegate;
```

### 3. UITextFieldDelegate
```objc
@protocol UITextFieldDelegate <NSObject>

@optional    // 무조건 사용할 필요 없고 원하면 가져갈 수 있다는 뜻이다. 

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField;
// 텍스트필드 수정을 할 것인지 물어보는 메소드  

- (void)textFieldDidBeginEditing:(UITextField *)textField;
// 텍스트필드를 수정하려고 터치했을 때 불러오는 메소드


- (BOOL)textFieldShouldEndEditing:(UITextField *)textField;
// 텍스트필드 수정을 멈출지 물어보는 메소드

- (void)textFieldDidEndEditing:(UITextField *)textField;
// 텍스필드 수정이 끝났을 경우 불러오는 메소드


- (BOOL)textFieldShouldClear:(UITextField *)textField;
// 사용자가 텍스트 필드에 있는 X자 버튼을 눌렀을 때 불러지는 메소드

- (BOOL)textFieldShouldReturn:(UITextField *)textField;
// 사용자가 리턴 버튼을 눌렀을 때 불러지는 메소드
// 메소드 안에 resignFirstResponder를 넣어주면 return을 눌렀을 때 키보드를 다시 감추게 된다.  
```

**cf. UIResponder touch begin, add 등 찾아보기** 


 