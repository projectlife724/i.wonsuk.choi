# DAY 1 - Git (2017.01.09)

## I. Git

### 1. Git는 무엇인가?

Git는 변경사항을 저장하여 공동작업을 효율적으로 관리해주는 **버전 컨트롤 시스템(VCS)**이다.  

### 2. 버전 컨트롤 시스템 (VCS = Version Control System)

말 그대로 버전을 관리하는 시스템이다. 변경사항을 하나의 버전으로 저장함으로써 수정한 시점과 내용 등을 쉽게 파악할 수 있고 큰 오류가 있을 경우, 완전히 되돌아갈 수도 있다.  

### 3. Git 사용 이유와 목적
1. 실수를 했을 경우 이전 버전으로 되돌아갈 수 있다. 
2. 공동작업을 할 경우, 누가 어떤 수정을 했는지 쉽게 파악이 가능하다. 
3. 작업 백업  

## II. Git의 구조

![Git Structure](https://github.com/projectlife724/i.wonsuk.choi/blob/master/Notes/Images/DAY%201/Git%20Structure.png?raw=true)
  
  
### 1. 저장 프로세스
#### Working Repository   
현재 작업한 히스토리가 저장되어 있는 공간
####Staging Area  
Working Repository에서 추가되어 Local Repository로 저장되기 이전에 머무는 임시 공간  
바로 Local Repository로 저장하지 않는 이유는, 변경사항을 저장하기 이전에 다시 한 번 확인하기 위함이다.   
####Local Repository   
로컬 데이터베이스에 저장되어 있는 상태
####Remote Repository  
GitHub와 같은 서버 저장소를 일컬으며, 어디에서든 접근하고 불러울 수 있는 장점을 지녔다. 

### 2. 저장 명령  
#### add  
Working Repository에 있는 내용을 Staging Area에 저장하도록 하는 명령  
#### commit
Staging Area에서 다시 한 번 확인한 뒤, local repository에 저장하는 명령  
#### push  
local repository에 저장되어 있는 변경사항들을 GitHub와 같은 remote repository로 업로드 하는 명령  
#### fetch
Remote repository에 저장되어 있던 데이터를 local repository로 불러오는 명령  
#### pull
remote repository에 저장되어 있던 모든 데이터를 불러오는 명령  

## III. SourcTree 사용방법  
![SourceTreeScreen1](https://github.com/projectlife724/i.wonsuk.choi/blob/master/Notes/Images/DAY%201/SourceTree%201.png?raw=true)

1. Working Repository에 존재하는 변경사항 히스토리  
2. 파일을 클릭한 후, commit 버튼을 누르면 히스토리가 staging area로 보내진다.  
3. 변경사항을 구체적으로 표시하는 스크린  

![SourceTreeScreen2](https://github.com/projectlife724/i.wonsuk.choi/blob/master/Notes/Images/DAY%201/SourceTree%202.png?raw=true)

1. 변경사항을 구체적으로 표시하는 스크린
2. staging area에 존재하는 히스토리  
3. 히스토리 목록  

## IV. 기타  
### 주의 사항  
#### 1) 공동 작업을 할 경우, Gitignore를 설정해야 한다  
**Gitignore:** 불필요한 파일들의 변경사항을 저장하는 것에 예외를 두는 기능이다.  

각 프로그램 언어와 작업자에 따라 부산물이 생기기 마련인데, gitignore를 설정하지 않을 경우에는 이러한 부산물도 업로드되어 충돌을 일으킬 수 있다.  

#### 2) 같은 파일에서 같은 부분을 동시에 수정하면 에러가 뜬다  
이럴 때는 나중에 업로드 하려고 시도하는 사람에게 다른 사람이 같은 부분을 수정했다고 충돌 메시지가 표시된다.   
그러면 파일을 실행하여 충돌을 일으킨 부분을 재확인하고 업로드 해야 된다. 충돌한 부분은 프로그램이 치널하게 표시해주니 걱정하지 말자.  

#### 3) 이러한 충돌을 조금이라도 줄이기 위해서, 먼저 remote repository에 저장되어 있는 데이터를 pull 한 후 실행하는 습관을 기르자.  

#### 4) Git 파일 내에 또 다른 Git 파일이 존재할 경우에는 충돌이 일어날 수 있기 때문에, 최대한 피하는 것이 좋다.  

