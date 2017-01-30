	Person.h

	#import <Foundation/Foundation.h>
	
	@class "Bank.h"
	
	@interface Person.h NSObject
	
	
	@property NSString *name;
	@property NSUInteger asset;
	
	- (void) depositMoney:(Person *)person (Bank *)toBank (NSUInterger)money;
	- (void) viewStatus: (Person *)status;
	
	
	Person.m
	
	@implementation Person
	
	- (void) depositMoney:(Person *)person (Bank *)toBank (NSUInterger)money;  
		{
		NSLog(@"%@가 %@은행에 %lu를 입금하였습니다.", self.name, bank.name, money)
		}
		
	- (void) viewStatus: (Person *)person (Bank *)toBank (Person *) currentBalance
		{
		NSLog(@"%@가 %@은행에서 자신의 계좌를 조회해 본 결과, 총 자산은 %lu원 입니다.", self.name, bank.name, self.asset)
		}
	

	Bank.h
	#import <Foundation/Foundation.h>
	
	@class "Person.h"
	
	@interface Bank.h NSObject 
	
	@property NSString *name;
	@property NSString *location;
	
	- (void) changeLocation:(Bank *)location;
	- (void) transfer:(Bank *)mtransfer;

	
	Bank.m
	
	@implementation Bank
	
	- (void) changeLocation:(Bank *)bank; currentLocation:(Bank *)location (NSString)newlocation;
		{
		currentLocation = self.location;
		newLocation = @"남부순환로 294길 33번지";
		NSLog(@"%@은행이 %@에서 %@로 주소를 변경하였습니다.", self.name, self.location, newLocation)
		}

	- (void) transfer:(Person *)fromTransfer (NSString)toTransfer (NSUInterger)money
	{
		NSLog(@"%@가 %@에게 %lu를 이체하였습니다.", person.name, person.name, money)
	}


	Man.h
	#import <Foundation/Foundation.h>
	#import "Person.h"
	
	@interface Man
	
	
	Man.m
	
	@implementation Man

	Woman.h
	#import <Foundation/Foundation.h>
	#import Man.h
	@interface Woman
	
	
	Woman.m
	
	@implementation Woman