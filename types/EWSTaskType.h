#import <Foundation/Foundation.h>




#import "EWSArrayOfStringsType.h"
#import "../handlers/EWSStringTypeHandler.h"
#import "EWSTaskRecurrenceType.h"
#import "EWSTaskDelegateStateType.h"
#import "../handlers/EWSDoubleTypeHandler.h"
#import "../handlers/EWSDateTimeTypeHandler.h"
#import "../handlers/EWSBooleanTypeHandler.h"
#import "EWSTaskStatusType.h"
#import "../handlers/EWSIntegerTypeHandler.h"
#import "EWSItemType.h"



/* TaskType */
@interface EWSTaskType : EWSItemType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) NSNumber*              actualWork            /* xs:int */;
@property (retain) NSString*              assignedTime          /* xs:dateTime */;
@property (retain) NSString*              billingInformation    /* xs:string */;
@property (retain) NSNumber*              changeCount           /* xs:int */;
@property (retain) NSArray<NSString*>*    companies             /* EWSArrayOfStringsType */;
@property (retain) NSString*              completeDate          /* xs:dateTime */;
@property (retain) NSArray<NSString*>*    contacts              /* EWSArrayOfStringsType */;
@property (retain) NSString*              delegationState       /* EWSTaskDelegateStateType */;
@property (retain) NSString*              delegator             /* xs:string */;
@property (retain) NSString*              dueDate               /* xs:dateTime */;
@property (retain) NSNumber*              isAssignmentEditable  /* xs:int */;
@property (retain) NSNumber*              isComplete            /* xs:boolean */;
@property (retain) NSNumber*              isRecurring           /* xs:boolean */;
@property (retain) NSNumber*              isTeamTask            /* xs:boolean */;
@property (retain) NSString*              mileage               /* xs:string */;
@property (retain) NSString*              owner                 /* xs:string */;
@property (retain) NSNumber*              percentComplete       /* xs:double */;
@property (retain) EWSTaskRecurrenceType* recurrence;
@property (retain) NSString*              startDate             /* xs:dateTime */;
@property (retain) NSString*              status                /* EWSTaskStatusType */;
@property (retain) NSString*              statusDescription     /* xs:string */;
@property (retain) NSNumber*              totalWork             /* xs:int */;


@end

