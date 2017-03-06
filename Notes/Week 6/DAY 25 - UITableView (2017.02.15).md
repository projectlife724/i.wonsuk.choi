# DAY 25 - UITableView (2017.02.15)

## I. TableView Type

- plain

- grouped

## II. Plain Table Views

- 기본적인 TableView
- 여러 개의 section을 가질 수 있다.  
- 한 section에는 여러 개의 row를 포함할 수 있다.
- 각각의 section에는 header와 footer 영역이 지정되어 있다.  
- section을 빠르게 검색할 수 있는 네비게이터 바를 index list라고 부른다. 

**cf. index list**  
또 다른 view의 형태이며 index 값을 지정해줘야 된다.  


| Case | View Controller | View |
|:---:|:---:|:---:|
일반적인 경우 | View *v1 = [View alloc]<br>[v1 reSizing:(100, 100)]; | -(void)reSizing:newSize
Delegate | -(void)reSizing:newSize | 


why viewDidLoad:
프로토콜을 상속받는 아이는 무조건 만들어야 된다.  

### III. Delegate VS datasource
