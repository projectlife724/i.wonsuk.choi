# DAY 20 - UIScrollView (2017.02.07)

## I. UIScrollView

### 1. UIScrollView 주요 항목  
```objc
@property(nonatomic) CGPoint contentOffset;
//contentView에서 view의 위치  

@property(nonatomic)contentSize;
// 먼저 설정해줘야 된다.  

@property(nonatomic) BOOL bounces;
// 인스타그램 새로고침처럼 밑으로 내리면 다시 바운스백 되는 것을 뜻한다.

@property(nonatomic,getter=isPagingEnabled) BOOL pagingEnabled; 
// 페이지 형태로 설정하여 부드럽게 넘어가는 것의 설정 여부

@property(nonatomic,getter=isScrollEnabled) BOOL ScrollEnabled;
// 스크롤의 설정 여부  

@property(nonatomic) CGFloat minumZoomScale;
// default = 1.0 이고 2.0으로 설정하면 2배까지 확대할 수 있다는 뜻이다.  

@property(nonatomic) CGFloat maximunZoomScale;
// default = 1.0 이고 2.0으로 설정하면 2배까지 축소할 수 있다는 뜻이다. 


- (void)setContectOfSet:(CGPoint)contentOffset animated:(BOOL)animated;
// 좌표값을 새로 설정하는 메소드이다. 로그인 창에서 텍스트 필드를 누른 후 키보드가 올라올 때, 텍스트 필드도 같이 올라가는 듯한 효과를 낼 때 사용할 수 있다.   
- (void)setZoomScale:(CGFloat)scale animated:(BOOL)animated;
```

### 2. UIScrollViewDelegate 
```objc
@protocol UIScrollViewDelegate<NSObject>

@optional
-(void)scrollViewDidScroll:(UIScrollView *)scrollView;  
// 스크롤 뷰가 실행되고 난 직후에 실행 할 것들을 작성하는 메소드  

-(void)scrollViewDidZoom:(UIScrollView *)scrollView;
// 줌을 실행했을 때 불러지는 메소드 

-(void)scrollViewWillBeginDraggin:(UIScrollView *)scrollView;
// 빠른 속도가 아닌 천천히 스크롤을 움직이기 시작할 때 불러지는 메소드

-(void)scrollViewWillEndDragging:(UIScrollView *)scrollView withVelocity:(CGPoint)velocity targetContentOffset:(inout CGPoint *)targetContentOffSet;
// 천천히 스크롤을 움직이고 멈추었을 때 불러지는 메소드

-(void)scrollViewWillBeginDecelerating:(UIScrollView *)scrollView;
// 스크롤 감속이 시작되는 시점에서 불러지는 메소드

-(void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView;
// 스크이 멈출 때 불러지는 메소드

-(void)scrollViewDidEndScrollingAnimation:(UIScrollView *)scrollView;  
// 애니메이션을 포함한 스크롤이 실행되었을 때 불러지는 메소드. 애니메이션이 없으면 안 불려진다.  
```

### 3. UIScrollView 예제 로그인창 만들기
```objc
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSInteger offsetX = self.view.frame.size.width;
    NSInteger offsetY = self.view.frame.size.height;
    
    
    // 배경 그림
    UIImageView *backView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, offsetX, offsetY)];
    [backView setContentMode:UIViewContentModeScaleToFill];
    [backView setImage:[UIImage imageNamed:@"Background.jpg"]];
    [self.view addSubview:backView];
    
    self.scView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, offsetX, offsetY)];
    [self.view addSubview:self.scView];
    self.scView.delegate = self;
    [self.scView setContentSize:CGSizeMake(offsetX, offsetY * 1.3)];
    
    // 텍스트 필드와 레이블 올려질 바탕뷰
    UIView *baseView = [[UIView alloc] initWithFrame:CGRectMake(30, 150, 320, 150)];
    [self.scView addSubview:baseView];
    [baseView setBackgroundColor:[UIColor blackColor]];
    [baseView setAlpha:0.4];
    
    
    // 이름과 비밀번호 레이블
    UILabel *labelName = [[UILabel alloc] initWithFrame:CGRectMake(60, 30, 40, 30)];
    labelName.text = @"ID";
    labelName.textColor = [UIColor whiteColor];
    [baseView addSubview:labelName];
    
    UILabel *labelPw = [[UILabel alloc] initWithFrame:CGRectMake(60, 90, 40, 30)];
    labelPw.text = @"PW";
    labelPw.textColor = [UIColor whiteColor];
    [baseView addSubview:labelPw];
    
    
    // 이름과 비밀번호 텍스트필드
    self.type1 = [[UITextField alloc] initWithFrame:CGRectMake(120, 30, 120, 30)];
    [baseView addSubview:self.type1];
    self.type1.delegate = self;
    self.type1.borderStyle = UITextBorderStyleLine;
    self.type1.tag = 10;
    
    self.type2 = [[UITextField alloc] initWithFrame:CGRectMake(120, 90, 120, 30)];
    [baseView addSubview:self.type2];
    self.type2.delegate = self;
    self.type2.borderStyle = UITextBorderStyleLine;
    self.type2.tag = 20;

    
}
// 텍스트 필드를 눌렀을 때 키보드가 등장하면서 텍스트 필드가 올라가는듯한 효과를 주기 위한 메소드
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{

    [self.scView setContentOffset:CGPointMake(0, 50) animated:YES];
    
    return YES;
}

//텍스트 리턴값 눌렀을 때, 키보드 사라지고 다시 UI가 내려오는 메소드
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    if (textField.tag == 10) {
        [self.type1 resignFirstResponder];
        [self.type2 becomeFirstResponder];
        
    }
    else{
        [self.type2 resignFirstResponder];
        [self.scView setContentOffset:CGPointMake(0, 0) animated:YES];
    }
    
    return YES;
}

```
 

**cf. 더 알아보기 :** 아래에 사항들도 참고해서 알아볼 것

## III. UIPageControl
## IV. UISwitch
## V. UISegmentedControl
## VI. WebView
## VII. TableView


