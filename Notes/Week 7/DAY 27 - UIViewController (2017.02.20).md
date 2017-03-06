# DAY 27 - UIViewController (2017.02.20)

## I. UIViewController
## II. Child UIViewController

View 에서는 행동처리하는 것을 자제하고 ViewController에서 처리한다.  
가능은 하지만 제제하라는 이유는 MVC 패턴에서는 이러한 사항이 권고하기 때문이다.  

View는 말 그대로 하나의 view일 뿐, 모든 행동은 ViewController가 관리한다.  
그러므로, 모든 책임은 ViewController에 있다.  

Container View Controller
Child View Controller 없이는 작동이 안 됨.

TableViewController를 사용하지 않은 점은 TableViewController의 경우는 전체 스크인이 TableView이다. 이러한 부분을 수정할 수 없다.  
계층 구조가 추가되고 메소드를 하나하나 설정을 해줘함에도 그냥 ViewController를 사용하는 이유는 커스텀이 가능하기 때문이다.  

닙파일?


## III. 화면전환
### 1. Present Modaly
밑에서 ViewController가 올라오는 방식  
뒤에 객체가 아직 남아있음.

Present / Dismiss  

Navigation Controller  
Push / Pop  

