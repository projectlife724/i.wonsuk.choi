### DAY 17 - USER INTERFACE (2017.02.02)

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

cf. CoreGraphics <- OpenGl로부터 만들어짐.
특히, 게임프레임워크는 이것을 많이 사용한다.  
그러므로 

## III. View  

### 1. UI Class Hierarchy

![UI Class Hierarchy](/Users/apple/Downloads/a0037268_4b6b91c3db151.jpg)  

> UI Class Hierarchy를 정확하게 파악하고 있어야만 추후에 문제사항을 쉽게 해결할 수 있다.  
> 
> 상속 관계를 이해하고 있어야 이를 UI를 효율적으로 실행하고 오류를 방지할 수 있다. 
UIResponder - touch에 대한 기능을 수행  
UIView - 

rootView 기본적으로 화면사이즈만큼 생성된다.  


