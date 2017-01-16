#Day 2. Git Using Command (2017.01.10)

##1. How to use Git through Terminal
1. Basic Terminal Commnands  
	* pwd: current location  
	* cd: change directoroy  
	* cd ..: above directory  
	* ls: list of current location's directories 

2. Git Terminal Commands
	 
	* git --help: command list
	* git status: 현재 상태 표시  
	* git init: local respository 생성  
	* vi README.md: README.md 파일 생성

3. Repository 내의 파일 생성/수정  
	* shit + i: 수정 가능  
	* esc -> : + shift: 파일 내 명령어 창  
		- q: quit  
		- w: write (저장)  
		- wq: 저장 후 종료 (이전 화면으로 돌아감)  
		- q!: 강제 종료  

4. Stage Area & Commit   
	* add README.md: local repository에 README.md 추가  
	* git add README.md: staging area에 README.md 업로드  
	* git add .: staging area에 있는 모든 파일 업로드  
	* git commit: commit message 입력하라고 표시  

5. Push to Remote Repository
	* First one needs to create a remote respository at the wㅇㄴ					ebsite
	* git remote add origin https://github.com/projectlife724/second_git.git:
	* git push -u origin master

6. Pull
	* git clone https://github.com/projectlife724/second_git.git:  
	  특정 주소에서 repository를 다운로드 

##2. 컴퓨터 개론

왜 컴퓨터는 아직까지도 이진법을 쓰는가
왜 CPU는 메모리보다 빠른가
문자 체계와 번역기(?)

	



