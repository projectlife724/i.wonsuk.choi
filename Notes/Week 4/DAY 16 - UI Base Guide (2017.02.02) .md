# DAY 16 - USER INTERFACE (2017.02.02)

## I. iOS 구조 

![Structure](/Users/apple/Downloads/core_objects_2x.png)

> **MVC (= Model View Controller)**
> 
> **UI Application:** App Delegate한테 App의 상태를 알려줌.  
> 예) 백그라운드로 이동했다, 사용되고 있다 등등
> 
> **Application Delegate:**  
> 	1) UIWindow에 명령  
> 	2) View Controller 관리 및 명령  


![After Launch](/Users/apple/Downloads/app_launch_fg_2x.png)

>**Steps after Launch**  
> Launch는 자동으로 실행된다.  
> 개발자는 didFinishLaunchingWithOptions부터 관여하게 된다.  
> **중요! main() 파일이 didFinishLaunchWithOptions보다 먼저 실행된다!**

![Screen Structure](https://developer.apple.com/library/content/featuredarticles/ViewControllerPGforiPhoneOS/Art/VCPG-root-view-controller_2-1_2x.png)


## II. UI Base Guide  

### 1. 해상도 (Resolution)

![Resolution](/Users/apple/Downloads/I9EXp.png)

#### Pixel
이미지의 점 하나라고 생각해도 된다.  
실제 이미지 사이즈  

#### Point
화면에 표시되는 점 하나를 의미한다.  
화면에 표시되는 이미지 사이즈  

#### 왜 두 가지 개념을 만들었을까?
Retina Display 때문이다.  
같은 크기의 사진을 작은 공간에 표시하기 때문에 새로운 단위를 만든 것이다.  
하나의 point는 4개의 pixel로 구성되어 있다 (2 * 2 pixel).  

### 2. 좌표계  

View 기준 좌측 상단이 (0, 0)이다. 

**중요: 좌표값의 상대성**

- 좌표값은 현재 view가 올려지는 상위 view를 기준으로 한다.  
- 예를 들어, 작은 view에 label들을 올리려면 전체 화면 기준이 아닌 view 기준으로 좌표값이 책정된다.    

**중요2: 좌표계는 여러 가지가 존재**   
CoreGraphics <- OpenGl로부터 만들어짐.
특히, 게임프레임워크는 이것을 많이 사용한다.  
**하지만 CoreGraphics의 좌표계는 일반적인 그래프와 같이 좌측 하단 (0, 0)이므로 이를 잘 인지하고 코딩을 해야 된다.**  

## III. View  

### 1. UI Class Hierarchy

![UI Class Hierarchy](/Users/apple/Downloads/a0037268_4b6b91c3db151.jpg)  

> UI Class Hierarchy를 정확하게 파악하고 있어야만 추후에 문제사항을 쉽게 해결할 수 있다.  
> 
> 상속 관계를 이해하고 있어야 이를 UI를 효율적으로 실행하고 오류를 방지할 수 있다. 
UIResponder - touch에 대한 기능을 수행  
UIView - 

rootView 기본적으로 화면사이즈만큼 생성된다.  

### 2. UIResponder
```objc
-(BOOL)becomeFirstResponder;
// 입력값을 받는 텍스트 필드를 지정할 때 사용한다.  

-(BOOL)resignFristResponder;
// 입력값을 받는 텍스트 필드를 지정해제할 때 사용한다.  


-(void)touchesBegan:(NSSet<UITouch *> *)touches
			withEvent:(nullable UIEven *)event
// 터치 받았을 때 불러지는 메소드

-(void)touchMoved:(NSSet<UITouch *> *)touches
			withEvent:(nullable UIEvent *)event;
// 터치를 움직였을 때 불러지는 메소드  

-(void)touchEnded:(NSSet<UITouch *> *)touches
			withEvent:(nullable UIEvent *)event;
// 터치를 떼었을 때 불러지는 메소드  

-(void)touchesCancelled:(nullable NSSet<UITouch *> *)touches
			withEvent:(nullable UIEvent *)event;
// 터치가 취소되었을 때 불러지는 메소드  
```

### 3. UIView Class 주요 항목
```objc
@property(nonatomic) CGRect frame;
@property(nonatomic) CGRect bounds;
@property(nonatomic) CGPoint center;
@property(nonatomic, copy) UIColor *backgroundColor
@property(nonatomic) CGFloat alpha;
@property(nonatomic, getter=isHidden) BOOL hidden;
@property(nonatomic) UIViewContentMode contentMode;
@property(nonatomic, strong) UIColor *tintColor;

-(void)removeFromSuperview;
-(void)addSubview:(UIView *)view;
```

### 4. UIView 예제
```objc
UIView *puzzleView = [[UIView alloc] initWithFrame:CGRectMake(15, 15, self.view.frame.size.width - 30, self.view.frame.size.height - 30)];
[puzzleView setBackgroundColor: [UIColor blueColor]];
[puzzleView setAlpha: 0.5];
[self.view addSubview:puzzleView]; 
```

## IV. UI 분석
### 'Day One' 이라는 일기 어플리케이션의 메인 화면을 분석

#### 계층 구조







