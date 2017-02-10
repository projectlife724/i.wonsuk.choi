

# DAY 18 - UILabel, UIImageView, UIButton (2017.02.03)  


## I. UILabel
### 1. 정의
텍스트 정보를 표시하는 UI

### 2. 주요 항목
```obc
@property(nonatomic, copy) NSString *text;
@property(nonatomic, strong) UIFont *font;
@property(nonatomic, strong) UIColor *textColor;
@property(nonatomic) NSTextAlignment textAlignment;
@property(nonatomic) NSLineBreakMode lineBreakMode;
```

### 3. 예제
```objc
UILabel *text = [[UILabel alloc] initWithFrame:CGRectMake(self.view.bounds.origin.x + 80, self.view.bounds.origin.y + 10, self.view.frame.size.width -90, 40)];
[text setBackgroundColor:[UIColor clearColor]];
[baseView addSubview:text];
text.text = @"Dan Barber";
text.font = [UIFont systemFontOfSize:30];
    
UILabel *memo = [[UILabel alloc] initWithFrame:CGRectMake(self.view.bounds.origin.x + 80, self.view.bounds.origin.y + 60, self.view.frame.size.width - 90, 10)];
[memo setBackgroundColor:[UIColor clearColor]];
[baseView addSubview:memo];
memo.text = @"Chef of Modern French Cuisin";
memo.font = [UIFont systemFontOfSize:12];
memo.textColor = [UIColor colorWithRed:160/255.0 green:137/255.0 blue:137/255.0 alpha:1.0];
```

## II. UIImageView
### 1. 정의 
이미지 정보를 표시하는 UI

### 2. 주요항목
```objc
@property (nonatomic, strong) UIImage *image;
@property (nonatomic) UIViewContentMode contentMode;
```

### 3. 예제 
```objc
UIImageView *baseView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 15, self.view.frame.size.width, 80)];
[baseView setBackgroundColor:[UIColor clearColor]];
[self.view addSubview:baseView];
[baseView setAlpha:0.6];
[baseView setContentMode:UIViewContentModeScaleToFill];
baseView.image = [UIImage imageNamed:@"Cheftable4.jpg"];
```

### 4. setContentMode
!

## III. UIButton  

![UIClass Hierarchy](/Users/apple/Downloads/a0037268_4b6b91c3db151.jpg) 
  
> UIClass의 상속관계와 구조는 UI의 근본적인 이해를 하는데 도움을 많이 준다.  
> UIButton은 UIControl에 귀속되는 클래스이다.  
> UIControl은 사용자 인터렉션에 의한 응답(이벤트)에 대해 특별한 액션을 줄 수 있게 설정하는 클래스이다.  

### 1. UIControl

```objc
@property(nonatomic, getter=isEnabled) BOOL enabled;
// default is YES, if NO ignoes touch events and subclasses may draw differently  

@property(nonatomic,getter=isSelected) BOOL selected;
// default is NO may be used by some subclasses or by application
// 누르면 YES, YES 상태로 유지되다가 다시 누르면 NO가 된다.  

@property(nonatomic,getter=isHighlighted) BOOL highlighted;
// default is NO. This gets set/cleared automatically when touch enters/exists during tracking and cleared on up  
// 누르고 있을 때는 YES이고 손을 떼자마자 NO로 바뀐다.  


-(void)addTarget:(nullable id)target
		action:(SEL)action
		forControlEvents:(UIControlEvents)controlEvents;
// add target/action for particular event.  
// 특정 이벤트를 객체에게 실행시키는 메소드로 일반적으로 자기 자신에게 시키기 때문에 target = self일 때가 많다고 한다.  
```  

### 2. UIButton  

#### 버튼의 구조  
![버튼의 구조](https://docs-assets.developer.apple.com/published/77caf4ed6d/uibutton_callouts_2x_59b779c9-315a-416d-bf1c-f09ab4380899.png)


- Title, Image. backGroundImage로 구성되어 있다.  

#### UIButton 속성  
UIButton의 속성은 Type과 StateCongig로 크게 2 가지로 나눠진다.  

**1) Type: 버튼 기본 타입을 제공 (UIButtonType)**  

```objc
{
UIButtonTypeCustom    // no button type
UIButtonTypeSystem    // standard system button  
UIButtonTypeInfoLight  
UIButtonTypeContactAdd  
}
```

**2) StateConfig(UIControlState)**  
=> 버튼의 상태를 나타내기 위해 사용

```objc
{
UIControlStateNormal
UIControlStateHighlighted
UIControlStateSelected    // flag usable by app 
} 
```

#### UIButton 주요 사용 항목  

```objc
+ (instancetype)buttonWithType:(UIButtonType)buttonType;

@property(nonatomic) UIEdgeInsets contentEdgeInsets  
@property(nonatomic, readonly) UIButtonType buttonType;
@property(nonatomic, readonly, strong) UILabel *titleLabel
@property(nonatomic, readonly, stron) UIImageView *impageView

- (void)setTitle:(nullable NSString *)title
		forState:(UIControlState)state

- (void)setTitleColor:(nullable UIColor *)color
			 forState:(UIControlState)state
	
- (void)setImage:(nullable UIImage *)image
		forState:(UIControlState)state;

- (void)setBackgroundImage:(nullable UIImage *)image
				  forState:(UIControlState)state
```

	




	
	