# DAY 34 - Property List (2017.03.03)

## I. DATA 저장  

### 1. 데이터 저장 방법  

- 파일 저장하는 방법이 다양하다. 대표적으로 **Property List, SQLite, 아카이빙** 등이 있다.  
- iOS DataBase를 이용하는 CoreData의 경우는 CoreData가 SQLite를 감싸는 형식으로 되어 있다.  
- 또한 Network를 이용하여 Server DB에 저장하는 방법이 있다.  

### 2. Property List

#### 특징
- 심플한 "파일" 저장 방법 중 하나이다.  
- Key와 Value 구조로 데이터 저장  
- File 형태로 저장되다 보니 외부에서 access가 가능  

#### 파일 위치 
- 파일이 저장되는 곳은 Bundle & Documents 폴더에 저장된다.  
- Bundle은 프로젝트에 추가된 Resource들이 모인 곳이다. 

설정창에서 입력된 정보를 pLihst래 가져온게 많음.  


번들은 사용자가 writing 할 수가 없음. 가져다가 쓰는 용도로만 사용할 수 있다.  
읽고 쓰는 것이 가능한 것은 Document이다.  

Bundle은 프로젝트를 만드는 개발자가 만드는 파일들이 들어가고 Documents는 사용자가 사용하면서 개인화된 정보를 저장하고 불러오는 곳이다.  

