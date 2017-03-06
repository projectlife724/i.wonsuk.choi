# DAY 29 - Singletone, NSUserDefault(2017.02.23)

## I. Singletone

### 1. Singletone
#### 1) 싱글톤이란?
- 어플리케이션 전 영역에 걸쳐 하나의 클래스의 단 하나의 인스턴스(객체)만을 생성하는 것

- 다른 말로 하자면, **모든 영역에서 접근 가능한 객체를 뜻한다.**  


## II. NSUserDefault

CoreData, Server, 파일(PList)

- 사용자의 정보를 저장하는 싱글톤 객체    
- 간단한 사용자 정보를 저장/불러오기가 가능하게 만든 객체이다.  
- 내부적으로 Plist 데이터에 저장되는 것은 보안이 강하지 않다.  



